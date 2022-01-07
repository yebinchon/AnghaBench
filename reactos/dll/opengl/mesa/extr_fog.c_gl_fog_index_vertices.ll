; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_fog.c_gl_fog_index_vertices.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_fog.c_gl_fog_index_vertices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, float, float, float, float }

@.str = private unnamed_addr constant [38 x i8] c"Bad fog mode in gl_fog_index_vertices\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_fog_index_vertices(%struct.TYPE_6__* %0, i64 %1, [4 x float]* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x float]*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i64, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i64, align 8
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store [4 x float]* %2, [4 x float]** %7, align 8
  store i64* %3, i64** %8, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %178 [
    i32 128, label %27
    i32 130, label %81
    i32 129, label %125
  ]

27:                                               ; preds = %4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load float, float* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load float, float* %34, align 4
  %36 = fsub float %31, %35
  %37 = fdiv float 1.000000e+00, %36
  store float %37, float* %9, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load float, float* %40, align 4
  store float %41, float* %10, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load float, float* %44, align 4
  store float %45, float* %11, align 4
  store i64 0, i64* %12, align 8
  br label %46

46:                                               ; preds = %77, %27
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %46
  %51 = load float, float* %11, align 4
  %52 = load [4 x float]*, [4 x float]** %7, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds [4 x float], [4 x float]* %52, i64 %53
  %55 = getelementptr inbounds [4 x float], [4 x float]* %54, i64 0, i64 2
  %56 = load float, float* %55, align 4
  %57 = call float @ABSF(float %56)
  %58 = fsub float %51, %57
  %59 = load float, float* %9, align 4
  %60 = fmul float %58, %59
  store float %60, float* %13, align 4
  %61 = load float, float* %13, align 4
  %62 = call float @CLAMP(float %61, float 0.000000e+00, float 1.000000e+00)
  store float %62, float* %13, align 4
  %63 = load i64*, i64** %8, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = uitofp i64 %66 to float
  %68 = load float, float* %13, align 4
  %69 = fsub float 1.000000e+00, %68
  %70 = load float, float* %10, align 4
  %71 = fmul float %69, %70
  %72 = fadd float %67, %71
  %73 = fptoui float %72 to i64
  %74 = load i64*, i64** %8, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %73, i64* %76, align 8
  br label %77

77:                                               ; preds = %50
  %78 = load i64, i64* %12, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %12, align 8
  br label %46

80:                                               ; preds = %46
  br label %181

81:                                               ; preds = %4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = load float, float* %84, align 4
  %86 = fneg float %85
  store float %86, float* %14, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load float, float* %89, align 4
  store float %90, float* %15, align 4
  store i64 0, i64* %16, align 8
  br label %91

91:                                               ; preds = %121, %81
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %6, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %91
  %96 = load float, float* %14, align 4
  %97 = load [4 x float]*, [4 x float]** %7, align 8
  %98 = load i64, i64* %16, align 8
  %99 = getelementptr inbounds [4 x float], [4 x float]* %97, i64 %98
  %100 = getelementptr inbounds [4 x float], [4 x float]* %99, i64 0, i64 2
  %101 = load float, float* %100, align 4
  %102 = call float @ABSF(float %101)
  %103 = fmul float %96, %102
  %104 = call float @exp(float %103)
  store float %104, float* %17, align 4
  %105 = load float, float* %17, align 4
  %106 = call float @CLAMP(float %105, float 0.000000e+00, float 1.000000e+00)
  store float %106, float* %17, align 4
  %107 = load i64*, i64** %8, align 8
  %108 = load i64, i64* %16, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = uitofp i64 %110 to float
  %112 = load float, float* %17, align 4
  %113 = fsub float 1.000000e+00, %112
  %114 = load float, float* %15, align 4
  %115 = fmul float %113, %114
  %116 = fadd float %111, %115
  %117 = fptoui float %116 to i64
  %118 = load i64*, i64** %8, align 8
  %119 = load i64, i64* %16, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  store i64 %117, i64* %120, align 8
  br label %121

121:                                              ; preds = %95
  %122 = load i64, i64* %16, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %16, align 8
  br label %91

124:                                              ; preds = %91
  br label %181

125:                                              ; preds = %4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 4
  %129 = load float, float* %128, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 4
  %133 = load float, float* %132, align 4
  %134 = fmul float %129, %133
  %135 = fneg float %134
  store float %135, float* %18, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  %139 = load float, float* %138, align 4
  store float %139, float* %19, align 4
  store i64 0, i64* %20, align 8
  br label %140

140:                                              ; preds = %174, %125
  %141 = load i64, i64* %20, align 8
  %142 = load i64, i64* %6, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %177

144:                                              ; preds = %140
  %145 = load [4 x float]*, [4 x float]** %7, align 8
  %146 = load i64, i64* %20, align 8
  %147 = getelementptr inbounds [4 x float], [4 x float]* %145, i64 %146
  %148 = getelementptr inbounds [4 x float], [4 x float]* %147, i64 0, i64 2
  %149 = load float, float* %148, align 4
  %150 = call float @ABSF(float %149)
  store float %150, float* %21, align 4
  %151 = load float, float* %18, align 4
  %152 = fneg float %151
  %153 = load float, float* %21, align 4
  %154 = fmul float %152, %153
  %155 = load float, float* %21, align 4
  %156 = fmul float %154, %155
  %157 = call float @exp(float %156)
  store float %157, float* %22, align 4
  %158 = load float, float* %22, align 4
  %159 = call float @CLAMP(float %158, float 0.000000e+00, float 1.000000e+00)
  store float %159, float* %22, align 4
  %160 = load i64*, i64** %8, align 8
  %161 = load i64, i64* %20, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = uitofp i64 %163 to float
  %165 = load float, float* %22, align 4
  %166 = fsub float 1.000000e+00, %165
  %167 = load float, float* %19, align 4
  %168 = fmul float %166, %167
  %169 = fadd float %164, %168
  %170 = fptoui float %169 to i64
  %171 = load i64*, i64** %8, align 8
  %172 = load i64, i64* %20, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  store i64 %170, i64* %173, align 8
  br label %174

174:                                              ; preds = %144
  %175 = load i64, i64* %20, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %20, align 8
  br label %140

177:                                              ; preds = %140
  br label %181

178:                                              ; preds = %4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %180 = call i32 @gl_problem(%struct.TYPE_6__* %179, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %177, %124, %80
  ret void
}

declare dso_local float @ABSF(float) #1

declare dso_local float @CLAMP(float, float, float) #1

declare dso_local float @exp(float) #1

declare dso_local i32 @gl_problem(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
