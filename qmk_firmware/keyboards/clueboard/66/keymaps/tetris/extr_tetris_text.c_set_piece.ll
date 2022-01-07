; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_set_piece.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_set_piece.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([7 x i8]*, i32, i32)* @set_piece to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_piece([7 x i8]* %0, i32 %1, i32 %2) #0 {
  %4 = alloca [7 x i8]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store [7 x i8]* %0, [7 x i8]** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load [7 x i8]*, [7 x i8]** %4, align 8
  %11 = bitcast [7 x i8]* %10 to i8**
  %12 = call i32 @clear_piece(i8** %11)
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %195 [
    i32 0, label %14
    i32 1, label %45
    i32 2, label %70
    i32 3, label %95
    i32 4, label %108
    i32 5, label %139
    i32 6, label %164
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = srem i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load [7 x i8]*, [7 x i8]** %4, align 8
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* %19, i64 3
  %21 = getelementptr inbounds [7 x i8], [7 x i8]* %20, i64 0, i64 1
  store i8 1, i8* %21, align 1
  %22 = load [7 x i8]*, [7 x i8]** %4, align 8
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* %22, i64 3
  %24 = getelementptr inbounds [7 x i8], [7 x i8]* %23, i64 0, i64 2
  store i8 1, i8* %24, align 1
  %25 = load [7 x i8]*, [7 x i8]** %4, align 8
  %26 = getelementptr inbounds [7 x i8], [7 x i8]* %25, i64 3
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %26, i64 0, i64 3
  store i8 1, i8* %27, align 1
  %28 = load [7 x i8]*, [7 x i8]** %4, align 8
  %29 = getelementptr inbounds [7 x i8], [7 x i8]* %28, i64 3
  %30 = getelementptr inbounds [7 x i8], [7 x i8]* %29, i64 0, i64 4
  store i8 1, i8* %30, align 1
  br label %44

31:                                               ; preds = %14
  %32 = load [7 x i8]*, [7 x i8]** %4, align 8
  %33 = getelementptr inbounds [7 x i8], [7 x i8]* %32, i64 1
  %34 = getelementptr inbounds [7 x i8], [7 x i8]* %33, i64 0, i64 3
  store i8 1, i8* %34, align 1
  %35 = load [7 x i8]*, [7 x i8]** %4, align 8
  %36 = getelementptr inbounds [7 x i8], [7 x i8]* %35, i64 2
  %37 = getelementptr inbounds [7 x i8], [7 x i8]* %36, i64 0, i64 3
  store i8 1, i8* %37, align 1
  %38 = load [7 x i8]*, [7 x i8]** %4, align 8
  %39 = getelementptr inbounds [7 x i8], [7 x i8]* %38, i64 3
  %40 = getelementptr inbounds [7 x i8], [7 x i8]* %39, i64 0, i64 3
  store i8 1, i8* %40, align 1
  %41 = load [7 x i8]*, [7 x i8]** %4, align 8
  %42 = getelementptr inbounds [7 x i8], [7 x i8]* %41, i64 4
  %43 = getelementptr inbounds [7 x i8], [7 x i8]* %42, i64 0, i64 3
  store i8 1, i8* %43, align 1
  br label %44

44:                                               ; preds = %31, %18
  br label %195

45:                                               ; preds = %3
  %46 = load [7 x i8]*, [7 x i8]** %4, align 8
  %47 = getelementptr inbounds [7 x i8], [7 x i8]* %46, i64 3
  %48 = getelementptr inbounds [7 x i8], [7 x i8]* %47, i64 0, i64 2
  store i8 1, i8* %48, align 1
  %49 = load [7 x i8]*, [7 x i8]** %4, align 8
  %50 = getelementptr inbounds [7 x i8], [7 x i8]* %49, i64 3
  %51 = getelementptr inbounds [7 x i8], [7 x i8]* %50, i64 0, i64 3
  store i8 1, i8* %51, align 1
  %52 = load [7 x i8]*, [7 x i8]** %4, align 8
  %53 = getelementptr inbounds [7 x i8], [7 x i8]* %52, i64 3
  %54 = getelementptr inbounds [7 x i8], [7 x i8]* %53, i64 0, i64 4
  store i8 1, i8* %54, align 1
  %55 = load [7 x i8]*, [7 x i8]** %4, align 8
  %56 = getelementptr inbounds [7 x i8], [7 x i8]* %55, i64 4
  %57 = getelementptr inbounds [7 x i8], [7 x i8]* %56, i64 0, i64 4
  store i8 1, i8* %57, align 1
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %66, %45
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load [7 x i8]*, [7 x i8]** %4, align 8
  %64 = bitcast [7 x i8]* %63 to i8**
  %65 = call i32 @rotate_piece(i8** %64)
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %58

69:                                               ; preds = %58
  br label %195

70:                                               ; preds = %3
  %71 = load [7 x i8]*, [7 x i8]** %4, align 8
  %72 = getelementptr inbounds [7 x i8], [7 x i8]* %71, i64 3
  %73 = getelementptr inbounds [7 x i8], [7 x i8]* %72, i64 0, i64 2
  store i8 1, i8* %73, align 1
  %74 = load [7 x i8]*, [7 x i8]** %4, align 8
  %75 = getelementptr inbounds [7 x i8], [7 x i8]* %74, i64 3
  %76 = getelementptr inbounds [7 x i8], [7 x i8]* %75, i64 0, i64 3
  store i8 1, i8* %76, align 1
  %77 = load [7 x i8]*, [7 x i8]** %4, align 8
  %78 = getelementptr inbounds [7 x i8], [7 x i8]* %77, i64 3
  %79 = getelementptr inbounds [7 x i8], [7 x i8]* %78, i64 0, i64 4
  store i8 1, i8* %79, align 1
  %80 = load [7 x i8]*, [7 x i8]** %4, align 8
  %81 = getelementptr inbounds [7 x i8], [7 x i8]* %80, i64 4
  %82 = getelementptr inbounds [7 x i8], [7 x i8]* %81, i64 0, i64 2
  store i8 1, i8* %82, align 1
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %91, %70
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load [7 x i8]*, [7 x i8]** %4, align 8
  %89 = bitcast [7 x i8]* %88 to i8**
  %90 = call i32 @rotate_piece(i8** %89)
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %83

94:                                               ; preds = %83
  br label %195

95:                                               ; preds = %3
  %96 = load [7 x i8]*, [7 x i8]** %4, align 8
  %97 = getelementptr inbounds [7 x i8], [7 x i8]* %96, i64 3
  %98 = getelementptr inbounds [7 x i8], [7 x i8]* %97, i64 0, i64 2
  store i8 1, i8* %98, align 1
  %99 = load [7 x i8]*, [7 x i8]** %4, align 8
  %100 = getelementptr inbounds [7 x i8], [7 x i8]* %99, i64 3
  %101 = getelementptr inbounds [7 x i8], [7 x i8]* %100, i64 0, i64 3
  store i8 1, i8* %101, align 1
  %102 = load [7 x i8]*, [7 x i8]** %4, align 8
  %103 = getelementptr inbounds [7 x i8], [7 x i8]* %102, i64 4
  %104 = getelementptr inbounds [7 x i8], [7 x i8]* %103, i64 0, i64 2
  store i8 1, i8* %104, align 1
  %105 = load [7 x i8]*, [7 x i8]** %4, align 8
  %106 = getelementptr inbounds [7 x i8], [7 x i8]* %105, i64 4
  %107 = getelementptr inbounds [7 x i8], [7 x i8]* %106, i64 0, i64 3
  store i8 1, i8* %107, align 1
  br label %195

108:                                              ; preds = %3
  %109 = load i32, i32* %6, align 4
  %110 = srem i32 %109, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = load [7 x i8]*, [7 x i8]** %4, align 8
  %114 = getelementptr inbounds [7 x i8], [7 x i8]* %113, i64 3
  %115 = getelementptr inbounds [7 x i8], [7 x i8]* %114, i64 0, i64 2
  store i8 1, i8* %115, align 1
  %116 = load [7 x i8]*, [7 x i8]** %4, align 8
  %117 = getelementptr inbounds [7 x i8], [7 x i8]* %116, i64 3
  %118 = getelementptr inbounds [7 x i8], [7 x i8]* %117, i64 0, i64 3
  store i8 1, i8* %118, align 1
  %119 = load [7 x i8]*, [7 x i8]** %4, align 8
  %120 = getelementptr inbounds [7 x i8], [7 x i8]* %119, i64 4
  %121 = getelementptr inbounds [7 x i8], [7 x i8]* %120, i64 0, i64 3
  store i8 1, i8* %121, align 1
  %122 = load [7 x i8]*, [7 x i8]** %4, align 8
  %123 = getelementptr inbounds [7 x i8], [7 x i8]* %122, i64 4
  %124 = getelementptr inbounds [7 x i8], [7 x i8]* %123, i64 0, i64 4
  store i8 1, i8* %124, align 1
  br label %138

125:                                              ; preds = %108
  %126 = load [7 x i8]*, [7 x i8]** %4, align 8
  %127 = getelementptr inbounds [7 x i8], [7 x i8]* %126, i64 2
  %128 = getelementptr inbounds [7 x i8], [7 x i8]* %127, i64 0, i64 3
  store i8 1, i8* %128, align 1
  %129 = load [7 x i8]*, [7 x i8]** %4, align 8
  %130 = getelementptr inbounds [7 x i8], [7 x i8]* %129, i64 3
  %131 = getelementptr inbounds [7 x i8], [7 x i8]* %130, i64 0, i64 2
  store i8 1, i8* %131, align 1
  %132 = load [7 x i8]*, [7 x i8]** %4, align 8
  %133 = getelementptr inbounds [7 x i8], [7 x i8]* %132, i64 3
  %134 = getelementptr inbounds [7 x i8], [7 x i8]* %133, i64 0, i64 3
  store i8 1, i8* %134, align 1
  %135 = load [7 x i8]*, [7 x i8]** %4, align 8
  %136 = getelementptr inbounds [7 x i8], [7 x i8]* %135, i64 4
  %137 = getelementptr inbounds [7 x i8], [7 x i8]* %136, i64 0, i64 2
  store i8 1, i8* %137, align 1
  br label %138

138:                                              ; preds = %125, %112
  br label %195

139:                                              ; preds = %3
  %140 = load [7 x i8]*, [7 x i8]** %4, align 8
  %141 = getelementptr inbounds [7 x i8], [7 x i8]* %140, i64 3
  %142 = getelementptr inbounds [7 x i8], [7 x i8]* %141, i64 0, i64 2
  store i8 1, i8* %142, align 1
  %143 = load [7 x i8]*, [7 x i8]** %4, align 8
  %144 = getelementptr inbounds [7 x i8], [7 x i8]* %143, i64 3
  %145 = getelementptr inbounds [7 x i8], [7 x i8]* %144, i64 0, i64 3
  store i8 1, i8* %145, align 1
  %146 = load [7 x i8]*, [7 x i8]** %4, align 8
  %147 = getelementptr inbounds [7 x i8], [7 x i8]* %146, i64 3
  %148 = getelementptr inbounds [7 x i8], [7 x i8]* %147, i64 0, i64 4
  store i8 1, i8* %148, align 1
  %149 = load [7 x i8]*, [7 x i8]** %4, align 8
  %150 = getelementptr inbounds [7 x i8], [7 x i8]* %149, i64 4
  %151 = getelementptr inbounds [7 x i8], [7 x i8]* %150, i64 0, i64 3
  store i8 1, i8* %151, align 1
  store i32 0, i32* %9, align 4
  br label %152

152:                                              ; preds = %160, %139
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load [7 x i8]*, [7 x i8]** %4, align 8
  %158 = bitcast [7 x i8]* %157 to i8**
  %159 = call i32 @rotate_piece(i8** %158)
  br label %160

160:                                              ; preds = %156
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %152

163:                                              ; preds = %152
  br label %195

164:                                              ; preds = %3
  %165 = load i32, i32* %6, align 4
  %166 = srem i32 %165, 2
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %164
  %169 = load [7 x i8]*, [7 x i8]** %4, align 8
  %170 = getelementptr inbounds [7 x i8], [7 x i8]* %169, i64 3
  %171 = getelementptr inbounds [7 x i8], [7 x i8]* %170, i64 0, i64 3
  store i8 1, i8* %171, align 1
  %172 = load [7 x i8]*, [7 x i8]** %4, align 8
  %173 = getelementptr inbounds [7 x i8], [7 x i8]* %172, i64 3
  %174 = getelementptr inbounds [7 x i8], [7 x i8]* %173, i64 0, i64 4
  store i8 1, i8* %174, align 1
  %175 = load [7 x i8]*, [7 x i8]** %4, align 8
  %176 = getelementptr inbounds [7 x i8], [7 x i8]* %175, i64 4
  %177 = getelementptr inbounds [7 x i8], [7 x i8]* %176, i64 0, i64 2
  store i8 1, i8* %177, align 1
  %178 = load [7 x i8]*, [7 x i8]** %4, align 8
  %179 = getelementptr inbounds [7 x i8], [7 x i8]* %178, i64 4
  %180 = getelementptr inbounds [7 x i8], [7 x i8]* %179, i64 0, i64 3
  store i8 1, i8* %180, align 1
  br label %194

181:                                              ; preds = %164
  %182 = load [7 x i8]*, [7 x i8]** %4, align 8
  %183 = getelementptr inbounds [7 x i8], [7 x i8]* %182, i64 2
  %184 = getelementptr inbounds [7 x i8], [7 x i8]* %183, i64 0, i64 3
  store i8 1, i8* %184, align 1
  %185 = load [7 x i8]*, [7 x i8]** %4, align 8
  %186 = getelementptr inbounds [7 x i8], [7 x i8]* %185, i64 3
  %187 = getelementptr inbounds [7 x i8], [7 x i8]* %186, i64 0, i64 3
  store i8 1, i8* %187, align 1
  %188 = load [7 x i8]*, [7 x i8]** %4, align 8
  %189 = getelementptr inbounds [7 x i8], [7 x i8]* %188, i64 3
  %190 = getelementptr inbounds [7 x i8], [7 x i8]* %189, i64 0, i64 4
  store i8 1, i8* %190, align 1
  %191 = load [7 x i8]*, [7 x i8]** %4, align 8
  %192 = getelementptr inbounds [7 x i8], [7 x i8]* %191, i64 4
  %193 = getelementptr inbounds [7 x i8], [7 x i8]* %192, i64 0, i64 4
  store i8 1, i8* %193, align 1
  br label %194

194:                                              ; preds = %181, %168
  br label %195

195:                                              ; preds = %3, %194, %163, %138, %95, %94, %69, %44
  ret void
}

declare dso_local i32 @clear_piece(i8**) #1

declare dso_local i32 @rotate_piece(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
