; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgArcTo.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgArcTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, i64, i32 }

@NVG_CW = common dso_local global i32 0, align 4
@NVG_CCW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgArcTo(%struct.TYPE_5__* %0, float %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
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
  %25 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load float, float* %27, align 8
  store float %28, float* %13, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load float, float* %30, align 4
  store float %31, float* %14, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %6
  br label %194

37:                                               ; preds = %6
  %38 = load float, float* %13, align 4
  %39 = load float, float* %14, align 4
  %40 = load float, float* %8, align 4
  %41 = load float, float* %9, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @nvg__ptEquals(float %38, float %39, float %40, float %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %80, label %47

47:                                               ; preds = %37
  %48 = load float, float* %8, align 4
  %49 = load float, float* %9, align 4
  %50 = load float, float* %10, align 4
  %51 = load float, float* %11, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @nvg__ptEquals(float %48, float %49, float %50, float %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %47
  %58 = load float, float* %8, align 4
  %59 = load float, float* %9, align 4
  %60 = load float, float* %13, align 4
  %61 = load float, float* %14, align 4
  %62 = load float, float* %10, align 4
  %63 = load float, float* %11, align 4
  %64 = call i32 @nvg__distPtSeg(float %58, float %59, float %60, float %61, float %62, float %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %67, %70
  %72 = icmp slt i32 %64, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %57
  %74 = load float, float* %12, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = sitofp i32 %77 to float
  %79 = fcmp olt float %74, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73, %57, %47, %37
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %82 = load float, float* %8, align 4
  %83 = load float, float* %9, align 4
  %84 = call i32 @nvgLineTo(%struct.TYPE_5__* %81, float %82, float %83)
  br label %194

85:                                               ; preds = %73
  %86 = load float, float* %13, align 4
  %87 = load float, float* %8, align 4
  %88 = fsub float %86, %87
  store float %88, float* %15, align 4
  %89 = load float, float* %14, align 4
  %90 = load float, float* %9, align 4
  %91 = fsub float %89, %90
  store float %91, float* %16, align 4
  %92 = load float, float* %10, align 4
  %93 = load float, float* %8, align 4
  %94 = fsub float %92, %93
  store float %94, float* %17, align 4
  %95 = load float, float* %11, align 4
  %96 = load float, float* %9, align 4
  %97 = fsub float %95, %96
  store float %97, float* %18, align 4
  %98 = call i32 @nvg__normalize(float* %15, float* %16)
  %99 = call i32 @nvg__normalize(float* %17, float* %18)
  %100 = load float, float* %15, align 4
  %101 = load float, float* %17, align 4
  %102 = fmul float %100, %101
  %103 = load float, float* %16, align 4
  %104 = load float, float* %18, align 4
  %105 = fmul float %103, %104
  %106 = fadd float %102, %105
  %107 = call float @nvg__acosf(float %106)
  store float %107, float* %19, align 4
  %108 = load float, float* %12, align 4
  %109 = load float, float* %19, align 4
  %110 = fdiv float %109, 2.000000e+00
  %111 = call float @nvg__tanf(float %110)
  %112 = fdiv float %108, %111
  store float %112, float* %20, align 4
  %113 = load float, float* %20, align 4
  %114 = fcmp ogt float %113, 1.000000e+04
  br i1 %114, label %115, label %120

115:                                              ; preds = %85
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = load float, float* %8, align 4
  %118 = load float, float* %9, align 4
  %119 = call i32 @nvgLineTo(%struct.TYPE_5__* %116, float %117, float %118)
  br label %194

120:                                              ; preds = %85
  %121 = load float, float* %15, align 4
  %122 = load float, float* %16, align 4
  %123 = load float, float* %17, align 4
  %124 = load float, float* %18, align 4
  %125 = call float @nvg__cross(float %121, float %122, float %123, float %124)
  %126 = fcmp ogt float %125, 0.000000e+00
  br i1 %126, label %127, label %156

127:                                              ; preds = %120
  %128 = load float, float* %8, align 4
  %129 = load float, float* %15, align 4
  %130 = load float, float* %20, align 4
  %131 = fmul float %129, %130
  %132 = fadd float %128, %131
  %133 = load float, float* %16, align 4
  %134 = load float, float* %12, align 4
  %135 = fmul float %133, %134
  %136 = fadd float %132, %135
  store float %136, float* %21, align 4
  %137 = load float, float* %9, align 4
  %138 = load float, float* %16, align 4
  %139 = load float, float* %20, align 4
  %140 = fmul float %138, %139
  %141 = fadd float %137, %140
  %142 = load float, float* %15, align 4
  %143 = fneg float %142
  %144 = load float, float* %12, align 4
  %145 = fmul float %143, %144
  %146 = fadd float %141, %145
  store float %146, float* %22, align 4
  %147 = load float, float* %15, align 4
  %148 = load float, float* %16, align 4
  %149 = fneg float %148
  %150 = call float @nvg__atan2f(float %147, float %149)
  store float %150, float* %23, align 4
  %151 = load float, float* %17, align 4
  %152 = fneg float %151
  %153 = load float, float* %18, align 4
  %154 = call float @nvg__atan2f(float %152, float %153)
  store float %154, float* %24, align 4
  %155 = load i32, i32* @NVG_CW, align 4
  store i32 %155, i32* %25, align 4
  br label %185

156:                                              ; preds = %120
  %157 = load float, float* %8, align 4
  %158 = load float, float* %15, align 4
  %159 = load float, float* %20, align 4
  %160 = fmul float %158, %159
  %161 = fadd float %157, %160
  %162 = load float, float* %16, align 4
  %163 = fneg float %162
  %164 = load float, float* %12, align 4
  %165 = fmul float %163, %164
  %166 = fadd float %161, %165
  store float %166, float* %21, align 4
  %167 = load float, float* %9, align 4
  %168 = load float, float* %16, align 4
  %169 = load float, float* %20, align 4
  %170 = fmul float %168, %169
  %171 = fadd float %167, %170
  %172 = load float, float* %15, align 4
  %173 = load float, float* %12, align 4
  %174 = fmul float %172, %173
  %175 = fadd float %171, %174
  store float %175, float* %22, align 4
  %176 = load float, float* %15, align 4
  %177 = fneg float %176
  %178 = load float, float* %16, align 4
  %179 = call float @nvg__atan2f(float %177, float %178)
  store float %179, float* %23, align 4
  %180 = load float, float* %17, align 4
  %181 = load float, float* %18, align 4
  %182 = fneg float %181
  %183 = call float @nvg__atan2f(float %180, float %182)
  store float %183, float* %24, align 4
  %184 = load i32, i32* @NVG_CCW, align 4
  store i32 %184, i32* %25, align 4
  br label %185

185:                                              ; preds = %156, %127
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %187 = load float, float* %21, align 4
  %188 = load float, float* %22, align 4
  %189 = load float, float* %12, align 4
  %190 = load float, float* %23, align 4
  %191 = load float, float* %24, align 4
  %192 = load i32, i32* %25, align 4
  %193 = call i32 @nvgArc(%struct.TYPE_5__* %186, float %187, float %188, float %189, float %190, float %191, i32 %192)
  br label %194

194:                                              ; preds = %185, %115, %80, %36
  ret void
}

declare dso_local i64 @nvg__ptEquals(float, float, float, float, i32) #1

declare dso_local i32 @nvg__distPtSeg(float, float, float, float, float, float) #1

declare dso_local i32 @nvgLineTo(%struct.TYPE_5__*, float, float) #1

declare dso_local i32 @nvg__normalize(float*, float*) #1

declare dso_local float @nvg__acosf(float) #1

declare dso_local float @nvg__tanf(float) #1

declare dso_local float @nvg__cross(float, float, float, float) #1

declare dso_local float @nvg__atan2f(float, float) #1

declare dso_local i32 @nvgArc(%struct.TYPE_5__*, float, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
