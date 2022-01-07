; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_tetris_tick.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_tetris_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@game_over = common dso_local global i32 0, align 4
@time = common dso_local global i64 0, align 8
@first_run = common dso_local global i64 0, align 8
@next_down = common dso_local global i64 0, align 8
@board = common dso_local global i32 0, align 4
@piece = common dso_local global i32 0, align 4
@x = common dso_local global i32 0, align 4
@y = common dso_local global i32 0, align 4
@score = common dso_local global i32 0, align 4
@down_delay = common dso_local global i32 0, align 4
@rotation = common dso_local global i32 0, align 4
@r = common dso_local global i32 0, align 4
@shape = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c" game over\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" score \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@temp_piece = common dso_local global i32 0, align 4
@empty_piece = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tetris_tick(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @game_over, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %212

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @time, align 8
  %14 = add nsw i64 %13, %12
  store i64 %14, i64* @time, align 8
  %15 = load i64, i64* @first_run, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load i64, i64* @time, align 8
  %19 = load i64, i64* @next_down, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %101

21:                                               ; preds = %17, %10
  %22 = load i64, i64* @first_run, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @board, align 4
  %26 = load i32, i32* @piece, align 4
  %27 = load i32, i32* @x, align 4
  %28 = load i32, i32* @y, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i64 @is_piece_hitting(i32 %25, i32 %26, i32 %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %86

32:                                               ; preds = %24, %21
  store i64 0, i64* @first_run, align 8
  %33 = load i32, i32* @piece, align 4
  %34 = load i32, i32* @board, align 4
  %35 = load i32, i32* @x, align 4
  %36 = load i32, i32* @y, align 4
  %37 = call i32 @add_piece_to_board(i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @board, align 4
  %39 = call i64 @clear_lines(i32 %38)
  %40 = load i32, i32* @score, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* @score, align 4
  %44 = load i32, i32* @score, align 4
  %45 = mul nsw i32 %44, 10
  %46 = sub nsw i32 500, %45
  store i32 %46, i32* @down_delay, align 4
  %47 = load i32, i32* @down_delay, align 4
  %48 = icmp slt i32 %47, 100
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  store i32 100, i32* @down_delay, align 4
  br label %50

50:                                               ; preds = %49, %32
  store i32 0, i32* @rotation, align 4
  %51 = load i32, i32* @r, align 4
  %52 = srem i32 %51, 7
  store i32 %52, i32* @shape, align 4
  %53 = load i32, i32* @r, align 4
  %54 = call i32 @myrandom(i32 %53)
  store i32 %54, i32* @r, align 4
  %55 = load i32, i32* @piece, align 4
  %56 = load i32, i32* @shape, align 4
  %57 = load i32, i32* @rotation, align 4
  %58 = call i32 @set_piece(i32 %55, i32 %56, i32 %57)
  store i32 1, i32* @x, align 4
  %59 = load i32, i32* @piece, align 4
  %60 = call i32 @get_piece_min_y(i32 %59)
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* @y, align 4
  %62 = load i32, i32* @shape, align 4
  %63 = call i32 @get_shape_char(i32 %62)
  %64 = load i32, i32* @x, align 4
  %65 = add nsw i32 1, %64
  %66 = load i32, i32* @y, align 4
  %67 = load i32, i32* @piece, align 4
  %68 = call i32 @draw_piece_moved(i32 %63, i32 %65, i32 %66, i32 %67, i32 0, i32 0)
  %69 = load i32, i32* @board, align 4
  %70 = load i32, i32* @piece, align 4
  %71 = load i32, i32* @x, align 4
  %72 = load i32, i32* @y, align 4
  %73 = call i64 @is_piece_hitting(i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %50
  store i32 1, i32* @game_over, align 4
  %76 = call i32 @send_goto_xy(i32 12, i32 10)
  %77 = call i32 @tetris_send_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %78 = call i32 (...) @tetris_send_down()
  %79 = call i32 @tetris_send_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %80 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %81 = load i32, i32* @score, align 4
  %82 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %84 = call i32 @tetris_send_string(i8* %83)
  store i32 0, i32* %2, align 4
  br label %212

85:                                               ; preds = %50
  br label %96

86:                                               ; preds = %24
  %87 = load i32, i32* @y, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @y, align 4
  %89 = load i32, i32* @shape, align 4
  %90 = call i32 @get_shape_char(i32 %89)
  %91 = load i32, i32* @x, align 4
  %92 = add nsw i32 1, %91
  %93 = load i32, i32* @y, align 4
  %94 = load i32, i32* @piece, align 4
  %95 = call i32 @draw_piece_moved(i32 %90, i32 %92, i32 %93, i32 %94, i32 0, i32 1)
  br label %96

96:                                               ; preds = %86, %85
  %97 = load i64, i64* @time, align 8
  %98 = load i32, i32* @down_delay, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  store i64 %100, i64* @next_down, align 8
  br label %211

101:                                              ; preds = %17
  %102 = call i32 (...) @tetris_get_keypress()
  switch i32 %102, label %210 [
    i32 1, label %103
    i32 2, label %137
    i32 3, label %156
    i32 4, label %191
  ]

103:                                              ; preds = %101
  %104 = load i32, i32* @rotation, align 4
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @rotation, align 4
  %106 = add nsw i32 %105, 1
  %107 = srem i32 %106, 4
  store i32 %107, i32* @rotation, align 4
  %108 = load i32, i32* @piece, align 4
  %109 = load i32, i32* @temp_piece, align 4
  %110 = call i32 @copy_piece_from_to(i32 %108, i32 %109)
  %111 = load i32, i32* @piece, align 4
  %112 = load i32, i32* @shape, align 4
  %113 = load i32, i32* @rotation, align 4
  %114 = call i32 @set_piece(i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* @board, align 4
  %116 = load i32, i32* @piece, align 4
  %117 = load i32, i32* @x, align 4
  %118 = load i32, i32* @y, align 4
  %119 = call i64 @is_piece_hitting(i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %103
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* @rotation, align 4
  %123 = load i32, i32* @piece, align 4
  %124 = load i32, i32* @shape, align 4
  %125 = load i32, i32* @rotation, align 4
  %126 = call i32 @set_piece(i32 %123, i32 %124, i32 %125)
  br label %136

127:                                              ; preds = %103
  %128 = load i32, i32* @shape, align 4
  %129 = call i32 @get_shape_char(i32 %128)
  %130 = load i32, i32* @x, align 4
  %131 = add nsw i32 1, %130
  %132 = load i32, i32* @y, align 4
  %133 = load i32, i32* @temp_piece, align 4
  %134 = load i32, i32* @piece, align 4
  %135 = call i32 @draw_piece(i32 %129, i32 %131, i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %127, %121
  br label %210

137:                                              ; preds = %101
  %138 = load i32, i32* @board, align 4
  %139 = load i32, i32* @piece, align 4
  %140 = load i32, i32* @x, align 4
  %141 = sub nsw i32 %140, 1
  %142 = load i32, i32* @y, align 4
  %143 = call i64 @is_piece_hitting(i32 %138, i32 %139, i32 %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %137
  %146 = load i32, i32* @x, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* @x, align 4
  %148 = load i32, i32* @shape, align 4
  %149 = call i32 @get_shape_char(i32 %148)
  %150 = load i32, i32* @x, align 4
  %151 = add nsw i32 1, %150
  %152 = load i32, i32* @y, align 4
  %153 = load i32, i32* @piece, align 4
  %154 = call i32 @draw_piece_moved(i32 %149, i32 %151, i32 %152, i32 %153, i32 -1, i32 0)
  br label %155

155:                                              ; preds = %145, %137
  br label %210

156:                                              ; preds = %101
  %157 = load i32, i32* @y, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %167, %156
  %159 = load i32, i32* @board, align 4
  %160 = load i32, i32* @piece, align 4
  %161 = load i32, i32* @x, align 4
  %162 = load i32, i32* @y, align 4
  %163 = add nsw i32 %162, 1
  %164 = call i64 @is_piece_hitting(i32 %159, i32 %160, i32 %161, i32 %163)
  %165 = icmp ne i64 %164, 0
  %166 = xor i1 %165, true
  br i1 %166, label %167, label %170

167:                                              ; preds = %158
  %168 = load i32, i32* @y, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* @y, align 4
  br label %158

170:                                              ; preds = %158
  %171 = load i32, i32* @shape, align 4
  %172 = call i32 @get_shape_char(i32 %171)
  %173 = load i32, i32* @x, align 4
  %174 = add nsw i32 %173, 1
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @piece, align 4
  %177 = load i32, i32* @empty_piece, align 4
  %178 = call i32 @draw_piece(i32 %172, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* @shape, align 4
  %180 = call i32 @get_shape_char(i32 %179)
  %181 = load i32, i32* @x, align 4
  %182 = add nsw i32 %181, 1
  %183 = load i32, i32* @y, align 4
  %184 = load i32, i32* @empty_piece, align 4
  %185 = load i32, i32* @piece, align 4
  %186 = call i32 @draw_piece(i32 %180, i32 %182, i32 %183, i32 %184, i32 %185)
  %187 = load i64, i64* @time, align 8
  %188 = load i32, i32* @down_delay, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %187, %189
  store i64 %190, i64* @next_down, align 8
  br label %210

191:                                              ; preds = %101
  %192 = load i32, i32* @board, align 4
  %193 = load i32, i32* @piece, align 4
  %194 = load i32, i32* @x, align 4
  %195 = add nsw i32 %194, 1
  %196 = load i32, i32* @y, align 4
  %197 = call i64 @is_piece_hitting(i32 %192, i32 %193, i32 %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %209, label %199

199:                                              ; preds = %191
  %200 = load i32, i32* @x, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* @x, align 4
  %202 = load i32, i32* @shape, align 4
  %203 = call i32 @get_shape_char(i32 %202)
  %204 = load i32, i32* @x, align 4
  %205 = add nsw i32 1, %204
  %206 = load i32, i32* @y, align 4
  %207 = load i32, i32* @piece, align 4
  %208 = call i32 @draw_piece_moved(i32 %203, i32 %205, i32 %206, i32 %207, i32 1, i32 0)
  br label %209

209:                                              ; preds = %199, %191
  br label %210

210:                                              ; preds = %101, %209, %170, %155, %136
  br label %211

211:                                              ; preds = %210, %96
  store i32 1, i32* %2, align 4
  br label %212

212:                                              ; preds = %211, %75, %9
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i64 @is_piece_hitting(i32, i32, i32, i32) #1

declare dso_local i32 @add_piece_to_board(i32, i32, i32, i32) #1

declare dso_local i64 @clear_lines(i32) #1

declare dso_local i32 @myrandom(i32) #1

declare dso_local i32 @set_piece(i32, i32, i32) #1

declare dso_local i32 @get_piece_min_y(i32) #1

declare dso_local i32 @draw_piece_moved(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_shape_char(i32) #1

declare dso_local i32 @send_goto_xy(i32, i32) #1

declare dso_local i32 @tetris_send_string(i8*) #1

declare dso_local i32 @tetris_send_down(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @tetris_get_keypress(...) #1

declare dso_local i32 @copy_piece_from_to(i32, i32) #1

declare dso_local i32 @draw_piece(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
