; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_msdos.c_mch_inchar.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_msdos.c_mch_inchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@mch_inchar.nextchar = internal global i32 0, align 4
@delayed_redraw = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@CLEAR = common dso_local global i32 0, align 4
@p_ut = common dso_local global i64 0, align 8
@FOREVER = common dso_local global i64 0, align 8
@cbrk_pressed = common dso_local global i8* null, align 8
@p_biosk = common dso_local global i64 0, align 8
@p_consk = common dso_local global i64 0, align 8
@bioskey_ready = common dso_local global i32 0, align 4
@bioskey_read = common dso_local global i32 0, align 4
@NUL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@beep_count = common dso_local global i64 0, align 8
@CONV_NONE = common dso_local global i64 0, align 8
@ESC = common dso_local global i64 0, align 8
@KE_CURSORHOLD = common dso_local global i64 0, align 8
@KS_EXTRA = common dso_local global i32 0, align 4
@K_SPECIAL = common dso_local global i32 0, align 4
@input_conv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@mouse_click = common dso_local global i32 0, align 4
@mouse_hidden = common dso_local global i8* null, align 8
@mouse_x = common dso_local global i8 0, align 1
@mouse_y = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_inchar(i32* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** @delayed_redraw, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i8*, i8** @FALSE, align 8
  store i8* %16, i8** @delayed_redraw, align 8
  %17 = load i32, i32* @CLEAR, align 4
  %18 = call i32 @update_screen(i32 %17)
  %19 = call i32 (...) @setcursor()
  %20 = call i32 (...) @out_flush()
  br label %21

21:                                               ; preds = %15, %4
  %22 = load i32, i32* @mch_inchar.nextchar, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @mch_inchar.nextchar, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* @mch_inchar.nextchar, align 4
  store i32 1, i32* %5, align 4
  br label %204

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @WaitForChar(i64 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %204

35:                                               ; preds = %30
  br label %43

36:                                               ; preds = %27
  %37 = load i64, i64* @p_ut, align 8
  %38 = call i64 @WaitForChar(i64 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (...) @before_blocking()
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i64, i64* @FOREVER, align 8
  %45 = call i64 @WaitForChar(i64 %44)
  %46 = load i8*, i8** @FALSE, align 8
  store i8* %46, i8** @cbrk_pressed, align 8
  %47 = load i64, i64* @p_biosk, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %129

49:                                               ; preds = %43
  %50 = load i64, i64* @p_consk, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %129, label %52

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %127, %52
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @bioskey_ready, align 4
  %58 = call i32 @bioskey(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ false, %56 ], [ %63, %60 ]
  br i1 %65, label %66, label %128

66:                                               ; preds = %64
  %67 = load i32, i32* @bioskey_read, align 4
  %68 = call i32 @bioskey(i32 %67)
  %69 = call i32 @translate_altkeys(i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 3, i32* %11, align 4
  br label %115

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 768
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @NUL, align 4
  store i32 %77, i32* %11, align 4
  br label %114

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, 255
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %101, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 128
  br i1 %84, label %101, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 20011
  br i1 %87, label %101, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %89, 18989
  br i1 %90, label %101, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 14122
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = and i32 %95, 255
  %97 = icmp eq i32 %96, 224
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 224
  br i1 %100, label %101, label %113

101:                                              ; preds = %98, %91, %88, %85, %82, %78
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %102, 128
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 3, i32* %11, align 4
  br label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = ashr i32 %106, 8
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %105, %104
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %6, align 8
  store i32 128, i32* %109, align 4
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %108, %98, %94
  br label %114

114:                                              ; preds = %113, %76
  br label %115

115:                                              ; preds = %114, %72
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i32, i32* %11, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %6, align 8
  store i32 %120, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %127

125:                                              ; preds = %115
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* @mch_inchar.nextchar, align 4
  br label %127

127:                                              ; preds = %125, %119
  br label %53

128:                                              ; preds = %64
  br label %202

129:                                              ; preds = %49, %43
  br label %130

130:                                              ; preds = %200, %129
  %131 = load i32, i32* %10, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %130
  %134 = load i64, i64* @p_consk, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = call i64 (...) @cons_kbhit()
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %142, label %146

139:                                              ; preds = %133
  %140 = call i64 (...) @kbhit()
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139, %136, %130
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %143, %144
  br label %146

146:                                              ; preds = %142, %139, %136
  %147 = phi i1 [ false, %139 ], [ false, %136 ], [ %145, %142 ]
  br i1 %147, label %148, label %201

148:                                              ; preds = %146
  %149 = load i64, i64* @p_consk, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = call i32 (...) @cons_getch()
  br label %155

153:                                              ; preds = %148
  %154 = call i32 (...) @getch()
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  store i32 %156, i32* %11, align 4
  switch i32 %156, label %187 [
    i32 0, label %157
    i32 128, label %180
    i32 3, label %185
  ]

157:                                              ; preds = %155
  %158 = load i64, i64* @p_consk, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = call i32 (...) @cons_getch()
  store i32 %161, i32* %11, align 4
  br label %164

162:                                              ; preds = %157
  %163 = call i32 (...) @getch()
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = load i32, i32* %11, align 4
  %166 = shl i32 %165, 8
  %167 = call i32 @translate_altkeys(i32 %166)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %11, align 4
  %170 = shl i32 %169, 8
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %164
  %173 = load i32*, i32** %6, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %6, align 8
  store i32 128, i32* %173, align 4
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %179

177:                                              ; preds = %164
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %11, align 4
  br label %179

179:                                              ; preds = %177, %172
  br label %188

180:                                              ; preds = %155
  %181 = load i32*, i32** %6, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %6, align 8
  store i32 128, i32* %181, align 4
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %188

185:                                              ; preds = %155
  %186 = load i8*, i8** @TRUE, align 8
  store i8* %186, i8** @cbrk_pressed, align 8
  br label %187

187:                                              ; preds = %155, %185
  br label %188

188:                                              ; preds = %187, %180, %179
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load i32, i32* %11, align 4
  %194 = load i32*, i32** %6, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %6, align 8
  store i32 %193, i32* %194, align 4
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %10, align 4
  br label %200

198:                                              ; preds = %188
  %199 = load i32, i32* %11, align 4
  store i32 %199, i32* @mch_inchar.nextchar, align 4
  br label %200

200:                                              ; preds = %198, %192
  br label %130

201:                                              ; preds = %146
  br label %202

202:                                              ; preds = %201, %128
  store i64 0, i64* @beep_count, align 8
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %202, %34, %24
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @update_screen(i32) #1

declare dso_local i32 @setcursor(...) #1

declare dso_local i32 @out_flush(...) #1

declare dso_local i64 @WaitForChar(i64) #1

declare dso_local i32 @before_blocking(...) #1

declare dso_local i32 @bioskey(i32) #1

declare dso_local i32 @translate_altkeys(i32) #1

declare dso_local i64 @cons_kbhit(...) #1

declare dso_local i64 @kbhit(...) #1

declare dso_local i32 @cons_getch(...) #1

declare dso_local i32 @getch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
