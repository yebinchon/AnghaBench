; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgArc.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgArc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@NVG_LINETO = common dso_local global i32 0, align 4
@NVG_MOVETO = common dso_local global i32 0, align 4
@NVG_CW = common dso_local global i32 0, align 4
@NVG_PI = common dso_local global i32 0, align 4
@NVG_CCW = common dso_local global i32 0, align 4
@NVG_BEZIERTO = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgArc(%struct.TYPE_4__* %0, float %1, float %2, float %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca [138 x float], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  store float 0.000000e+00, float* %15, align 4
  store float 0.000000e+00, float* %16, align 4
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %22, align 4
  store float 0.000000e+00, float* %23, align 4
  store float 0.000000e+00, float* %24, align 4
  store float 0.000000e+00, float* %25, align 4
  store float 0.000000e+00, float* %26, align 4
  store float 0.000000e+00, float* %27, align 4
  store float 0.000000e+00, float* %28, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %7
  %39 = load i32, i32* @NVG_LINETO, align 4
  br label %42

40:                                               ; preds = %7
  %41 = load i32, i32* @NVG_MOVETO, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %33, align 4
  %44 = load float, float* %13, align 4
  %45 = load float, float* %12, align 4
  %46 = fsub float %44, %45
  store float %46, float* %16, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @NVG_CW, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %42
  %51 = load float, float* %16, align 4
  %52 = call i32 @nvg__absf(float %51)
  %53 = load i32, i32* @NVG_PI, align 4
  %54 = mul nsw i32 %53, 2
  %55 = icmp sge i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @NVG_PI, align 4
  %58 = mul nsw i32 %57, 2
  %59 = sitofp i32 %58 to float
  store float %59, float* %16, align 4
  br label %71

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %64, %60
  %62 = load float, float* %16, align 4
  %63 = fcmp olt float %62, 0.000000e+00
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* @NVG_PI, align 4
  %66 = mul nsw i32 %65, 2
  %67 = sitofp i32 %66 to float
  %68 = load float, float* %16, align 4
  %69 = fadd float %68, %67
  store float %69, float* %16, align 4
  br label %61

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %56
  br label %95

72:                                               ; preds = %42
  %73 = load float, float* %16, align 4
  %74 = call i32 @nvg__absf(float %73)
  %75 = load i32, i32* @NVG_PI, align 4
  %76 = mul nsw i32 %75, 2
  %77 = icmp sge i32 %74, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32, i32* @NVG_PI, align 4
  %80 = sub nsw i32 0, %79
  %81 = mul nsw i32 %80, 2
  %82 = sitofp i32 %81 to float
  store float %82, float* %16, align 4
  br label %94

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %87, %83
  %85 = load float, float* %16, align 4
  %86 = fcmp ogt float %85, 0.000000e+00
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32, i32* @NVG_PI, align 4
  %89 = mul nsw i32 %88, 2
  %90 = sitofp i32 %89 to float
  %91 = load float, float* %16, align 4
  %92 = fsub float %91, %90
  store float %92, float* %16, align 4
  br label %84

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %78
  br label %95

95:                                               ; preds = %94, %71
  %96 = load float, float* %16, align 4
  %97 = call i32 @nvg__absf(float %96)
  %98 = sitofp i32 %97 to float
  %99 = load i32, i32* @NVG_PI, align 4
  %100 = sitofp i32 %99 to float
  %101 = fmul float %100, 5.000000e-01
  %102 = fdiv float %98, %101
  %103 = fadd float %102, 5.000000e-01
  %104 = fptosi float %103 to i32
  %105 = call i32 @nvg__mini(i32 %104, i32 5)
  %106 = call i32 @nvg__maxi(i32 1, i32 %105)
  store i32 %106, i32* %31, align 4
  %107 = load float, float* %16, align 4
  %108 = load i32, i32* %31, align 4
  %109 = sitofp i32 %108 to float
  %110 = fdiv float %107, %109
  %111 = fdiv float %110, 2.000000e+00
  store float %111, float* %17, align 4
  %112 = load float, float* %17, align 4
  %113 = call float @nvg__cosf(float %112)
  %114 = fsub float 1.000000e+00, %113
  %115 = fmul float 0x3FF5555560000000, %114
  %116 = load float, float* %17, align 4
  %117 = call float @nvg__sinf(float %116)
  %118 = fdiv float %115, %117
  %119 = call i32 @nvg__absf(float %118)
  %120 = sitofp i32 %119 to float
  store float %120, float* %18, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* @NVG_CCW, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %95
  %125 = load float, float* %18, align 4
  %126 = fneg float %125
  store float %126, float* %18, align 4
  br label %127

127:                                              ; preds = %124, %95
  store i32 0, i32* %32, align 4
  store i32 0, i32* %30, align 4
  br label %128

128:                                              ; preds = %235, %127
  %129 = load i32, i32* %30, align 4
  %130 = load i32, i32* %31, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %238

132:                                              ; preds = %128
  %133 = load float, float* %12, align 4
  %134 = load float, float* %16, align 4
  %135 = load i32, i32* %30, align 4
  %136 = sitofp i32 %135 to float
  %137 = load i32, i32* %31, align 4
  %138 = sitofp i32 %137 to float
  %139 = fdiv float %136, %138
  %140 = fmul float %134, %139
  %141 = fadd float %133, %140
  store float %141, float* %15, align 4
  %142 = load float, float* %15, align 4
  %143 = call float @nvg__cosf(float %142)
  store float %143, float* %19, align 4
  %144 = load float, float* %15, align 4
  %145 = call float @nvg__sinf(float %144)
  store float %145, float* %20, align 4
  %146 = load float, float* %9, align 4
  %147 = load float, float* %19, align 4
  %148 = load float, float* %11, align 4
  %149 = fmul float %147, %148
  %150 = fadd float %146, %149
  store float %150, float* %21, align 4
  %151 = load float, float* %10, align 4
  %152 = load float, float* %20, align 4
  %153 = load float, float* %11, align 4
  %154 = fmul float %152, %153
  %155 = fadd float %151, %154
  store float %155, float* %22, align 4
  %156 = load float, float* %20, align 4
  %157 = fneg float %156
  %158 = load float, float* %11, align 4
  %159 = fmul float %157, %158
  %160 = load float, float* %18, align 4
  %161 = fmul float %159, %160
  store float %161, float* %23, align 4
  %162 = load float, float* %19, align 4
  %163 = load float, float* %11, align 4
  %164 = fmul float %162, %163
  %165 = load float, float* %18, align 4
  %166 = fmul float %164, %165
  store float %166, float* %24, align 4
  %167 = load i32, i32* %30, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %132
  %170 = load i32, i32* %33, align 4
  %171 = sitofp i32 %170 to float
  %172 = load i32, i32* %32, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %32, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds [138 x float], [138 x float]* %29, i64 0, i64 %174
  store float %171, float* %175, align 4
  %176 = load float, float* %21, align 4
  %177 = load i32, i32* %32, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %32, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds [138 x float], [138 x float]* %29, i64 0, i64 %179
  store float %176, float* %180, align 4
  %181 = load float, float* %22, align 4
  %182 = load i32, i32* %32, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %32, align 4
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds [138 x float], [138 x float]* %29, i64 0, i64 %184
  store float %181, float* %185, align 4
  br label %230

186:                                              ; preds = %132
  %187 = load float, float* @NVG_BEZIERTO, align 4
  %188 = load i32, i32* %32, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %32, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds [138 x float], [138 x float]* %29, i64 0, i64 %190
  store float %187, float* %191, align 4
  %192 = load float, float* %25, align 4
  %193 = load float, float* %27, align 4
  %194 = fadd float %192, %193
  %195 = load i32, i32* %32, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %32, align 4
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds [138 x float], [138 x float]* %29, i64 0, i64 %197
  store float %194, float* %198, align 4
  %199 = load float, float* %26, align 4
  %200 = load float, float* %28, align 4
  %201 = fadd float %199, %200
  %202 = load i32, i32* %32, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %32, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds [138 x float], [138 x float]* %29, i64 0, i64 %204
  store float %201, float* %205, align 4
  %206 = load float, float* %21, align 4
  %207 = load float, float* %23, align 4
  %208 = fsub float %206, %207
  %209 = load i32, i32* %32, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %32, align 4
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds [138 x float], [138 x float]* %29, i64 0, i64 %211
  store float %208, float* %212, align 4
  %213 = load float, float* %22, align 4
  %214 = load float, float* %24, align 4
  %215 = fsub float %213, %214
  %216 = load i32, i32* %32, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %32, align 4
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds [138 x float], [138 x float]* %29, i64 0, i64 %218
  store float %215, float* %219, align 4
  %220 = load float, float* %21, align 4
  %221 = load i32, i32* %32, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %32, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds [138 x float], [138 x float]* %29, i64 0, i64 %223
  store float %220, float* %224, align 4
  %225 = load float, float* %22, align 4
  %226 = load i32, i32* %32, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %32, align 4
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds [138 x float], [138 x float]* %29, i64 0, i64 %228
  store float %225, float* %229, align 4
  br label %230

230:                                              ; preds = %186, %169
  %231 = load float, float* %21, align 4
  store float %231, float* %25, align 4
  %232 = load float, float* %22, align 4
  store float %232, float* %26, align 4
  %233 = load float, float* %23, align 4
  store float %233, float* %27, align 4
  %234 = load float, float* %24, align 4
  store float %234, float* %28, align 4
  br label %235

235:                                              ; preds = %230
  %236 = load i32, i32* %30, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %30, align 4
  br label %128

238:                                              ; preds = %128
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %240 = getelementptr inbounds [138 x float], [138 x float]* %29, i64 0, i64 0
  %241 = load i32, i32* %32, align 4
  %242 = call i32 @nvg__appendCommands(%struct.TYPE_4__* %239, float* %240, i32 %241)
  ret void
}

declare dso_local i32 @nvg__absf(float) #1

declare dso_local i32 @nvg__maxi(i32, i32) #1

declare dso_local i32 @nvg__mini(i32, i32) #1

declare dso_local float @nvg__cosf(float) #1

declare dso_local float @nvg__sinf(float) #1

declare dso_local i32 @nvg__appendCommands(%struct.TYPE_4__*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
