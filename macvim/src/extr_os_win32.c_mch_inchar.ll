; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_win32.c_mch_inchar.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_win32.c_mch_inchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@mch_inchar.typeahead = internal global [20 x i64] zeroinitializer, align 16
@mch_inchar.typeaheadlen = internal global i32 0, align 4
@p_ut = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@g_fCBrkPressed = common dso_local global i8* null, align 8
@NUL = common dso_local global i64 0, align 8
@Ctrl_C = common dso_local global i32 0, align 4
@ctrl_c_interrupts = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@got_int = common dso_local global i8* null, align 8
@K_NUL = common dso_local global i32 0, align 4
@MOD_MASK_ALT = common dso_local global i32 0, align 4
@K_SPECIAL = common dso_local global i64 0, align 8
@KS_MODIFIER = common dso_local global i64 0, align 8
@CONV_NONE = common dso_local global i64 0, align 8
@CSI = common dso_local global i64 0, align 8
@ESC = common dso_local global i64 0, align 8
@KE_CURSORHOLD = common dso_local global i64 0, align 8
@KE_SNIFF = common dso_local global i64 0, align 8
@KS_EXTRA = common dso_local global i64 0, align 8
@TYPEAHEADLEN = common dso_local global i32 0, align 4
@enc_dbcs = common dso_local global i32 0, align 4
@fdDump = common dso_local global i64 0, align 8
@g_nMouseClick = common dso_local global i32 0, align 4
@g_xMouse = common dso_local global i32 0, align 4
@g_yMouse = common dso_local global i32 0, align 4
@input_conv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@sniff_request_waiting = common dso_local global i64 0, align 8
@want_sniff_request = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_inchar(i64* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %200

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @WaitForChar(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %222

29:                                               ; preds = %24
  br label %38

30:                                               ; preds = %21
  %31 = call i32 (...) @mch_set_winsize_now()
  %32 = load i64, i64* @p_ut, align 8
  %33 = call i64 @WaitForChar(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 (...) @before_blocking()
  br label %37

37:                                               ; preds = %35, %30
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i8*, i8** @FALSE, align 8
  store i8* %39, i8** @g_fCBrkPressed, align 8
  br label %40

40:                                               ; preds = %195, %38
  %41 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call i64 @WaitForChar(i64 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %48 = add nsw i32 %47, 5
  %49 = icmp sle i32 %48, 20
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %52, label %199

52:                                               ; preds = %50
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @typebuf_changed(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* @mch_inchar.typeaheadlen, align 4
  br label %199

57:                                               ; preds = %52
  %58 = load i64, i64* @NUL, align 8
  store i64 %58, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %59 = call i32 @tgetch(i32* %13, i64* %12)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @typebuf_changed(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* @mch_inchar.typeaheadlen, align 4
  br label %199

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @Ctrl_C, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i64, i64* @ctrl_c_interrupts, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i8*, i8** @TRUE, align 8
  store i8* %72, i8** @got_int, align 8
  br label %73

73:                                               ; preds = %71, %68, %64
  store i32 1, i32* %14, align 4
  %74 = load i8*, i8** @FALSE, align 8
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %79
  store i64 %77, i64* %80, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @NUL, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %73
  %85 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %87
  store i64 3, i64* %88, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %92
  store i64 %89, i64* %93, align 8
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 2
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %84, %73
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %141

99:                                               ; preds = %96
  %100 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 0), i64 %101
  store i64* %102, i64** %16, align 8
  store i64* getelementptr inbounds (i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 0), i64 20), i64** %17, align 8
  br label %103

103:                                              ; preds = %137, %99
  %104 = load i64*, i64** %16, align 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i64*, i64** %16, align 8
  %109 = load i64*, i64** %17, align 8
  %110 = icmp ult i64* %108, %109
  br label %111

111:                                              ; preds = %107, %103
  %112 = phi i1 [ false, %103 ], [ %110, %107 ]
  br i1 %112, label %113, label %140

113:                                              ; preds = %111
  %114 = load i64*, i64** %16, align 8
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @K_NUL, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %113
  %120 = load i64*, i64** %16, align 8
  %121 = getelementptr inbounds i64, i64* %120, i32 1
  store i64* %121, i64** %16, align 8
  %122 = load i64*, i64** %16, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 1
  %124 = load i64*, i64** %16, align 8
  %125 = load i64*, i64** %17, align 8
  %126 = load i64*, i64** %16, align 8
  %127 = ptrtoint i64* %125 to i64
  %128 = ptrtoint i64* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 8
  %131 = sub i64 %130, 1
  %132 = trunc i64 %131 to i32
  %133 = call i32 @mch_memmove(i64* %123, i64* %124, i32 %132)
  %134 = load i64*, i64** %16, align 8
  store i64 3, i64* %134, align 8
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %119, %113
  %138 = load i64*, i64** %16, align 8
  %139 = getelementptr inbounds i64, i64* %138, i32 1
  store i64* %139, i64** %16, align 8
  br label %103

140:                                              ; preds = %111
  br label %141

141:                                              ; preds = %140, %96
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @MOD_MASK_ALT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %166

146:                                              ; preds = %141
  %147 = load i32, i32* %14, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %166

149:                                              ; preds = %146
  %150 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = and i64 %153, 128
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %149
  %157 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = or i64 %160, 128
  store i64 %161, i64* %159, align 8
  %162 = load i32, i32* @MOD_MASK_ALT, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %13, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %156, %149, %146, %141
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %195

169:                                              ; preds = %166
  %170 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 0), i64 %171
  %173 = getelementptr inbounds i64, i64* %172, i64 3
  %174 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 0), i64 %175
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @mch_memmove(i64* %173, i64* %176, i32 %177)
  %179 = load i64, i64* @K_SPECIAL, align 8
  %180 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* @mch_inchar.typeaheadlen, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %182
  store i64 %179, i64* %183, align 8
  %184 = load i64, i64* @KS_MODIFIER, align 8
  %185 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* @mch_inchar.typeaheadlen, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %187
  store i64 %184, i64* %188, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* @mch_inchar.typeaheadlen, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %193
  store i64 %190, i64* %194, align 8
  br label %195

195:                                              ; preds = %169, %166
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* @mch_inchar.typeaheadlen, align 4
  br label %40

199:                                              ; preds = %63, %56, %50
  br label %200

200:                                              ; preds = %199, %20
  store i32 0, i32* %10, align 4
  br label %201

201:                                              ; preds = %210, %200
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %207 = icmp sgt i32 %206, 0
  br label %208

208:                                              ; preds = %205, %201
  %209 = phi i1 [ false, %201 ], [ %207, %205 ]
  br i1 %209, label %210, label %220

210:                                              ; preds = %208
  %211 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 0), align 16
  %212 = load i64*, i64** %6, align 8
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i64, i64* %212, i64 %215
  store i64 %211, i64* %216, align 8
  %217 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* @mch_inchar.typeaheadlen, align 4
  %219 = call i32 @mch_memmove(i64* getelementptr inbounds ([20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 0), i64* getelementptr inbounds ([20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 1), i32 %218)
  br label %201

220:                                              ; preds = %208
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %5, align 4
  br label %222

222:                                              ; preds = %220, %28
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local i64 @WaitForChar(i64) #1

declare dso_local i32 @mch_set_winsize_now(...) #1

declare dso_local i32 @before_blocking(...) #1

declare dso_local i64 @typebuf_changed(i32) #1

declare dso_local i32 @tgetch(i32*, i64*) #1

declare dso_local i32 @mch_memmove(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
