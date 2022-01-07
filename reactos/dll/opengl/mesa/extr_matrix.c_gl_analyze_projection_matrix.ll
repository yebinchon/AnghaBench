; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_analyze_projection_matrix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_analyze_projection_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i32, i32 }

@MATRIX_IDENTITY = common dso_local global i32 0, align 4
@MATRIX_ORTHO = common dso_local global i32 0, align 4
@MATRIX_PERSPECTIVE = common dso_local global i32 0, align 4
@MATRIX_GENERAL = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_analyze_projection_matrix(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load float*, float** %5, align 8
  store float* %6, float** %3, align 8
  %7 = load float*, float** %3, align 8
  %8 = call i64 @is_identity(float* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @MATRIX_IDENTITY, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  br label %128

14:                                               ; preds = %1
  %15 = load float*, float** %3, align 8
  %16 = getelementptr inbounds float, float* %15, i64 4
  %17 = load float, float* %16, align 4
  %18 = fcmp oeq float %17, 0.000000e+00
  br i1 %18, label %19, label %68

19:                                               ; preds = %14
  %20 = load float*, float** %3, align 8
  %21 = getelementptr inbounds float, float* %20, i64 8
  %22 = load float, float* %21, align 4
  %23 = fcmp oeq float %22, 0.000000e+00
  br i1 %23, label %24, label %68

24:                                               ; preds = %19
  %25 = load float*, float** %3, align 8
  %26 = getelementptr inbounds float, float* %25, i64 1
  %27 = load float, float* %26, align 4
  %28 = fcmp oeq float %27, 0.000000e+00
  br i1 %28, label %29, label %68

29:                                               ; preds = %24
  %30 = load float*, float** %3, align 8
  %31 = getelementptr inbounds float, float* %30, i64 9
  %32 = load float, float* %31, align 4
  %33 = fcmp oeq float %32, 0.000000e+00
  br i1 %33, label %34, label %68

34:                                               ; preds = %29
  %35 = load float*, float** %3, align 8
  %36 = getelementptr inbounds float, float* %35, i64 2
  %37 = load float, float* %36, align 4
  %38 = fcmp oeq float %37, 0.000000e+00
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  %40 = load float*, float** %3, align 8
  %41 = getelementptr inbounds float, float* %40, i64 6
  %42 = load float, float* %41, align 4
  %43 = fcmp oeq float %42, 0.000000e+00
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load float*, float** %3, align 8
  %46 = getelementptr inbounds float, float* %45, i64 3
  %47 = load float, float* %46, align 4
  %48 = fcmp oeq float %47, 0.000000e+00
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load float*, float** %3, align 8
  %51 = getelementptr inbounds float, float* %50, i64 7
  %52 = load float, float* %51, align 4
  %53 = fcmp oeq float %52, 0.000000e+00
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load float*, float** %3, align 8
  %56 = getelementptr inbounds float, float* %55, i64 11
  %57 = load float, float* %56, align 4
  %58 = fcmp oeq float %57, 0.000000e+00
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load float*, float** %3, align 8
  %61 = getelementptr inbounds float, float* %60, i64 15
  %62 = load float, float* %61, align 4
  %63 = fcmp oeq float %62, 1.000000e+00
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @MATRIX_ORTHO, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %127

68:                                               ; preds = %59, %54, %49, %44, %39, %34, %29, %24, %19, %14
  %69 = load float*, float** %3, align 8
  %70 = getelementptr inbounds float, float* %69, i64 4
  %71 = load float, float* %70, align 4
  %72 = fcmp oeq float %71, 0.000000e+00
  br i1 %72, label %73, label %122

73:                                               ; preds = %68
  %74 = load float*, float** %3, align 8
  %75 = getelementptr inbounds float, float* %74, i64 12
  %76 = load float, float* %75, align 4
  %77 = fcmp oeq float %76, 0.000000e+00
  br i1 %77, label %78, label %122

78:                                               ; preds = %73
  %79 = load float*, float** %3, align 8
  %80 = getelementptr inbounds float, float* %79, i64 1
  %81 = load float, float* %80, align 4
  %82 = fcmp oeq float %81, 0.000000e+00
  br i1 %82, label %83, label %122

83:                                               ; preds = %78
  %84 = load float*, float** %3, align 8
  %85 = getelementptr inbounds float, float* %84, i64 13
  %86 = load float, float* %85, align 4
  %87 = fcmp oeq float %86, 0.000000e+00
  br i1 %87, label %88, label %122

88:                                               ; preds = %83
  %89 = load float*, float** %3, align 8
  %90 = getelementptr inbounds float, float* %89, i64 2
  %91 = load float, float* %90, align 4
  %92 = fcmp oeq float %91, 0.000000e+00
  br i1 %92, label %93, label %122

93:                                               ; preds = %88
  %94 = load float*, float** %3, align 8
  %95 = getelementptr inbounds float, float* %94, i64 6
  %96 = load float, float* %95, align 4
  %97 = fcmp oeq float %96, 0.000000e+00
  br i1 %97, label %98, label %122

98:                                               ; preds = %93
  %99 = load float*, float** %3, align 8
  %100 = getelementptr inbounds float, float* %99, i64 3
  %101 = load float, float* %100, align 4
  %102 = fcmp oeq float %101, 0.000000e+00
  br i1 %102, label %103, label %122

103:                                              ; preds = %98
  %104 = load float*, float** %3, align 8
  %105 = getelementptr inbounds float, float* %104, i64 7
  %106 = load float, float* %105, align 4
  %107 = fcmp oeq float %106, 0.000000e+00
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load float*, float** %3, align 8
  %110 = getelementptr inbounds float, float* %109, i64 11
  %111 = load float, float* %110, align 4
  %112 = fcmp oeq float %111, -1.000000e+00
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load float*, float** %3, align 8
  %115 = getelementptr inbounds float, float* %114, i64 15
  %116 = load float, float* %115, align 4
  %117 = fcmp oeq float %116, 0.000000e+00
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* @MATRIX_PERSPECTIVE, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  br label %126

122:                                              ; preds = %113, %108, %103, %98, %93, %88, %83, %78, %73, %68
  %123 = load i32, i32* @MATRIX_GENERAL, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %64
  br label %128

128:                                              ; preds = %127, %10
  %129 = load i32, i32* @GL_FALSE, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  ret void
}

declare dso_local i64 @is_identity(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
