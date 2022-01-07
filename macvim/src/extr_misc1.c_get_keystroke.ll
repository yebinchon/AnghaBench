; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_misc1.c_get_keystroke.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_misc1.c_get_keystroke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mapped_ctrl_c = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ESC = common dso_local global i32 0, align 4
@p_ttimeout = common dso_local global i32 0, align 4
@p_ttm = common dso_local global i32 0, align 4
@p_tm = common dso_local global i32 0, align 4
@KEYLEN_REMOVED = common dso_local global i32 0, align 4
@must_redraw = common dso_local global i64 0, align 8
@need_wait_return = common dso_local global i32 0, align 4
@State = common dso_local global i32 0, align 4
@CMDLINE = common dso_local global i32 0, align 4
@K_SPECIAL = common dso_local global i32 0, align 4
@KS_MODIFIER = common dso_local global i8* null, align 8
@K_IGNORE = common dso_local global i32 0, align 4
@mod_mask = common dso_local global i8* null, align 8
@K_HOR_SCROLLBAR = common dso_local global i32 0, align 4
@K_LEFTMOUSE = common dso_local global i32 0, align 4
@K_SWIPEDOWN = common dso_local global i32 0, align 4
@K_SWIPELEFT = common dso_local global i32 0, align 4
@K_SWIPERIGHT = common dso_local global i32 0, align 4
@K_SWIPEUP = common dso_local global i32 0, align 4
@K_VER_SCROLLBAR = common dso_local global i32 0, align 4
@NUL = common dso_local global i8* null, align 8
@has_mbyte = common dso_local global i64 0, align 8
@intr_char = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_keystroke() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** null, i8*** %2, align 8
  store i32 150, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @mapped_ctrl_c, align 4
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* @mapped_ctrl_c, align 4
  br label %11

11:                                               ; preds = %175, %127, %118, %99, %0
  %12 = call i32 (...) @cursor_on()
  %13 = call i32 (...) @out_flush()
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 6
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %15, %16
  %18 = sdiv i32 %17, 3
  store i32 %18, i32* %4, align 4
  %19 = load i8**, i8*** %2, align 8
  %20 = icmp eq i8** %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = call i8** @alloc(i32 %22)
  store i8** %23, i8*** %2, align 8
  br label %39

24:                                               ; preds = %11
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 100
  store i32 %29, i32* %3, align 4
  %30 = load i8**, i8*** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i8** @vim_realloc(i8** %30, i32 %31)
  store i8** %32, i8*** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %33, 6
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sdiv i32 %36, 3
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %27, %24
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i8**, i8*** %2, align 8
  %41 = icmp eq i8** %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @do_outofmem_msg(i32 %43)
  %45 = load i32, i32* @ESC, align 4
  store i32 %45, i32* %1, align 4
  br label %183

46:                                               ; preds = %39
  %47 = load i8**, i8*** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i64 -1, i64 100
  %56 = call i32 @ui_inchar(i8** %50, i32 %51, i64 %55, i32 0)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %46
  %60 = load i8**, i8*** %2, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @FALSE, align 4
  %66 = call i32 @fix_input_buffer(i8** %63, i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %77

70:                                               ; preds = %46
  %71 = load i32, i32* %5, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %59
  %78 = load i8**, i8*** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @check_termcode(i32 1, i8** %78, i32 %79, i32* %5)
  store i32 %80, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load i32, i32* @p_ttimeout, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = mul nsw i64 %87, 100
  %89 = load i32, i32* @p_ttm, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @p_tm, align 4
  br label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @p_ttm, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %88, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %82
  br label %11

100:                                              ; preds = %95, %77
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @KEYLEN_REMOVED, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %100
  %105 = load i64, i64* @must_redraw, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load i32, i32* @need_wait_return, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @State, align 4
  %112 = load i32, i32* @CMDLINE, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = call i32 @update_screen(i32 0)
  %117 = call i32 (...) @setcursor()
  br label %118

118:                                              ; preds = %115, %110, %107, %104
  br label %11

119:                                              ; preds = %100
  %120 = load i32, i32* %6, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i32, i32* %5, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %11

128:                                              ; preds = %124
  %129 = load i8**, i8*** %2, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 0
  %131 = load i8*, i8** %130, align 8
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @K_SPECIAL, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %177

136:                                              ; preds = %128
  %137 = load i8**, i8*** %2, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 1
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** %2, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 2
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @TO_SPECIAL(i8* %139, i8* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i8**, i8*** %2, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 1
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** @KS_MODIFIER, align 8
  %148 = icmp eq i8* %146, %147
  br i1 %148, label %153, label %149

149:                                              ; preds = %136
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @K_IGNORE, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %176

153:                                              ; preds = %149, %136
  %154 = load i8**, i8*** %2, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 1
  %156 = load i8*, i8** %155, align 8
  %157 = load i8*, i8** @KS_MODIFIER, align 8
  %158 = icmp eq i8* %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load i8**, i8*** %2, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 2
  %162 = load i8*, i8** %161, align 8
  store i8* %162, i8** @mod_mask, align 8
  br label %163

163:                                              ; preds = %159, %153
  %164 = load i32, i32* %5, align 4
  %165 = sub nsw i32 %164, 3
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i8**, i8*** %2, align 8
  %170 = load i8**, i8*** %2, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 3
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = call i32 @mch_memmove(i8** %169, i8** %171, i64 %173)
  br label %175

175:                                              ; preds = %168, %163
  br label %11

176:                                              ; preds = %149
  br label %178

177:                                              ; preds = %128
  br label %178

178:                                              ; preds = %177, %176
  %179 = load i8**, i8*** %2, align 8
  %180 = call i32 @vim_free(i8** %179)
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* @mapped_ctrl_c, align 4
  %182 = load i32, i32* %6, align 4
  store i32 %182, i32* %1, align 4
  br label %183

183:                                              ; preds = %178, %42
  %184 = load i32, i32* %1, align 4
  ret i32 %184
}

declare dso_local i32 @cursor_on(...) #1

declare dso_local i32 @out_flush(...) #1

declare dso_local i8** @alloc(i32) #1

declare dso_local i8** @vim_realloc(i8**, i32) #1

declare dso_local i32 @do_outofmem_msg(i32) #1

declare dso_local i32 @ui_inchar(i8**, i32, i64, i32) #1

declare dso_local i32 @fix_input_buffer(i8**, i32, i32) #1

declare dso_local i32 @check_termcode(i32, i8**, i32, i32*) #1

declare dso_local i32 @update_screen(i32) #1

declare dso_local i32 @setcursor(...) #1

declare dso_local i32 @TO_SPECIAL(i8*, i8*) #1

declare dso_local i32 @mch_memmove(i8**, i8**, i64) #1

declare dso_local i32 @vim_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
