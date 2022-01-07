; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/touchpad/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/touchpad/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIBRATE_LENGTH = common dso_local global i64 0, align 8
@vibrate = common dso_local global i64 0, align 8
@matrix = common dso_local global i32* null, align 8
@MATRIX_ROWS = common dso_local global i32 0, align 4
@D6 = common dso_local global i32 0, align 4
@B4 = common dso_local global i32 0, align 4
@B5 = common dso_local global i32 0, align 4
@B6 = common dso_local global i32 0, align 4
@C6 = common dso_local global i32 0, align 4
@C7 = common dso_local global i32 0, align 4
@F5 = common dso_local global i32 0, align 4
@F4 = common dso_local global i32 0, align 4
@F1 = common dso_local global i32 0, align 4
@F0 = common dso_local global i32 0, align 4
@F6 = common dso_local global i32 0, align 4
@F7 = common dso_local global i32 0, align 4
@E6 = common dso_local global i32 0, align 4
@D7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i64 (...) @isTouchChangeDetected()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %0
  %9 = call i32 (...) @touchDetectionRoutine()
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, 3857
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %8
  %14 = load i32, i32* %1, align 4
  %15 = and i32 %14, 238
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  store i32 10, i32* %2, align 4
  store i32 10, i32* %3, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @decodeArray(i32 %18, i32* %2, i32* %3)
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 10
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 10
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i64, i64* @VIBRATE_LENGTH, align 8
  store i64 %26, i64* @vibrate, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @_BV(i32 %27)
  %29 = load i32*, i32** @matrix, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  br label %40

33:                                               ; preds = %22, %17
  %34 = load i32*, i32** @matrix, align 8
  %35 = load i32, i32* @MATRIX_ROWS, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(i32* %34, i32 0, i32 %38)
  br label %40

40:                                               ; preds = %33, %25
  br label %48

41:                                               ; preds = %13, %8
  %42 = load i32*, i32** @matrix, align 8
  %43 = load i32, i32* @MATRIX_ROWS, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(i32* %42, i32 0, i32 %46)
  br label %48

48:                                               ; preds = %41, %40
  %49 = call i32 (...) @touchClearCurrentDetections()
  br label %50

50:                                               ; preds = %48, %0
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %157, %50
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 6
  br i1 %53, label %54, label %160

54:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %153, %54
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 6
  br i1 %57, label %58, label %156

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  switch i32 %59, label %96 [
    i32 0, label %60
    i32 1, label %66
    i32 2, label %72
    i32 3, label %78
    i32 4, label %84
    i32 5, label %90
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* @D6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @matrix_is_on(i32 %62, i32 %63)
  %65 = call i32 @writePin(i32 %61, i32 %64)
  br label %96

66:                                               ; preds = %58
  %67 = load i32, i32* @B4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @matrix_is_on(i32 %68, i32 %69)
  %71 = call i32 @writePin(i32 %67, i32 %70)
  br label %96

72:                                               ; preds = %58
  %73 = load i32, i32* @B5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @matrix_is_on(i32 %74, i32 %75)
  %77 = call i32 @writePin(i32 %73, i32 %76)
  br label %96

78:                                               ; preds = %58
  %79 = load i32, i32* @B6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @matrix_is_on(i32 %80, i32 %81)
  %83 = call i32 @writePin(i32 %79, i32 %82)
  br label %96

84:                                               ; preds = %58
  %85 = load i32, i32* @C6, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @matrix_is_on(i32 %86, i32 %87)
  %89 = call i32 @writePin(i32 %85, i32 %88)
  br label %96

90:                                               ; preds = %58
  %91 = load i32, i32* @C7, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @matrix_is_on(i32 %92, i32 %93)
  %95 = call i32 @writePin(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %58, %90, %84, %78, %72, %66, %60
  %97 = load i32, i32* %4, align 4
  switch i32 %97, label %152 [
    i32 0, label %98
    i32 1, label %107
    i32 2, label %116
    i32 3, label %125
    i32 4, label %134
    i32 5, label %143
  ]

98:                                               ; preds = %96
  %99 = load i32, i32* @F5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @matrix_is_on(i32 %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @writePin(i32 %99, i32 %105)
  br label %152

107:                                              ; preds = %96
  %108 = load i32, i32* @F4, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @matrix_is_on(i32 %109, i32 %110)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @writePin(i32 %108, i32 %114)
  br label %152

116:                                              ; preds = %96
  %117 = load i32, i32* @F1, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @matrix_is_on(i32 %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 @writePin(i32 %117, i32 %123)
  br label %152

125:                                              ; preds = %96
  %126 = load i32, i32* @F0, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @matrix_is_on(i32 %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @writePin(i32 %126, i32 %132)
  br label %152

134:                                              ; preds = %96
  %135 = load i32, i32* @F6, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @matrix_is_on(i32 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 @writePin(i32 %135, i32 %141)
  br label %152

143:                                              ; preds = %96
  %144 = load i32, i32* @F7, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @matrix_is_on(i32 %145, i32 %146)
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = call i32 @writePin(i32 %144, i32 %150)
  br label %152

152:                                              ; preds = %96, %143, %134, %125, %116, %107, %98
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %55

156:                                              ; preds = %55
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %51

160:                                              ; preds = %51
  %161 = load i64, i64* @vibrate, align 8
  %162 = load i64, i64* @VIBRATE_LENGTH, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %160
  %165 = load i32, i32* @E6, align 4
  %166 = call i32 @writePinHigh(i32 %165)
  %167 = load i32, i32* @D7, align 4
  %168 = call i32 @writePinHigh(i32 %167)
  %169 = load i64, i64* @vibrate, align 8
  %170 = add nsw i64 %169, -1
  store i64 %170, i64* @vibrate, align 8
  br label %187

171:                                              ; preds = %160
  %172 = load i64, i64* @vibrate, align 8
  %173 = icmp sgt i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i64, i64* @vibrate, align 8
  %176 = add nsw i64 %175, -1
  store i64 %176, i64* @vibrate, align 8
  br label %186

177:                                              ; preds = %171
  %178 = load i64, i64* @vibrate, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load i32, i32* @D7, align 4
  %182 = call i32 @writePinLow(i32 %181)
  %183 = load i32, i32* @E6, align 4
  %184 = call i32 @writePinLow(i32 %183)
  br label %185

185:                                              ; preds = %180, %177
  br label %186

186:                                              ; preds = %185, %174
  br label %187

187:                                              ; preds = %186, %164
  %188 = call i32 (...) @matrix_scan_quantum()
  ret i32 1
}

declare dso_local i64 @isTouchChangeDetected(...) #1

declare dso_local i32 @touchDetectionRoutine(...) #1

declare dso_local i32 @decodeArray(i32, i32*, i32*) #1

declare dso_local i32 @_BV(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @touchClearCurrentDetections(...) #1

declare dso_local i32 @writePin(i32, i32) #1

declare dso_local i32 @matrix_is_on(i32, i32) #1

declare dso_local i32 @writePinHigh(i32) #1

declare dso_local i32 @writePinLow(i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
