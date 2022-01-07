; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_analyze_modelview_matrix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_analyze_modelview_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i32, i32, i32 }

@MATRIX_IDENTITY = common dso_local global i32 0, align 4
@MATRIX_2D_NO_ROT = common dso_local global i32 0, align 4
@MATRIX_2D = common dso_local global i32 0, align 4
@MATRIX_3D = common dso_local global i32 0, align 4
@MATRIX_GENERAL = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_analyze_modelview_matrix(%struct.TYPE_3__* %0) #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  br label %163

14:                                               ; preds = %1
  %15 = load float*, float** %3, align 8
  %16 = getelementptr inbounds float, float* %15, i64 4
  %17 = load float, float* %16, align 4
  %18 = fcmp oeq float %17, 0.000000e+00
  br i1 %18, label %19, label %78

19:                                               ; preds = %14
  %20 = load float*, float** %3, align 8
  %21 = getelementptr inbounds float, float* %20, i64 8
  %22 = load float, float* %21, align 4
  %23 = fcmp oeq float %22, 0.000000e+00
  br i1 %23, label %24, label %78

24:                                               ; preds = %19
  %25 = load float*, float** %3, align 8
  %26 = getelementptr inbounds float, float* %25, i64 1
  %27 = load float, float* %26, align 4
  %28 = fcmp oeq float %27, 0.000000e+00
  br i1 %28, label %29, label %78

29:                                               ; preds = %24
  %30 = load float*, float** %3, align 8
  %31 = getelementptr inbounds float, float* %30, i64 9
  %32 = load float, float* %31, align 4
  %33 = fcmp oeq float %32, 0.000000e+00
  br i1 %33, label %34, label %78

34:                                               ; preds = %29
  %35 = load float*, float** %3, align 8
  %36 = getelementptr inbounds float, float* %35, i64 2
  %37 = load float, float* %36, align 4
  %38 = fcmp oeq float %37, 0.000000e+00
  br i1 %38, label %39, label %78

39:                                               ; preds = %34
  %40 = load float*, float** %3, align 8
  %41 = getelementptr inbounds float, float* %40, i64 6
  %42 = load float, float* %41, align 4
  %43 = fcmp oeq float %42, 0.000000e+00
  br i1 %43, label %44, label %78

44:                                               ; preds = %39
  %45 = load float*, float** %3, align 8
  %46 = getelementptr inbounds float, float* %45, i64 10
  %47 = load float, float* %46, align 4
  %48 = fcmp oeq float %47, 1.000000e+00
  br i1 %48, label %49, label %78

49:                                               ; preds = %44
  %50 = load float*, float** %3, align 8
  %51 = getelementptr inbounds float, float* %50, i64 14
  %52 = load float, float* %51, align 4
  %53 = fcmp oeq float %52, 0.000000e+00
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = load float*, float** %3, align 8
  %56 = getelementptr inbounds float, float* %55, i64 3
  %57 = load float, float* %56, align 4
  %58 = fcmp oeq float %57, 0.000000e+00
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load float*, float** %3, align 8
  %61 = getelementptr inbounds float, float* %60, i64 7
  %62 = load float, float* %61, align 4
  %63 = fcmp oeq float %62, 0.000000e+00
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load float*, float** %3, align 8
  %66 = getelementptr inbounds float, float* %65, i64 11
  %67 = load float, float* %66, align 4
  %68 = fcmp oeq float %67, 0.000000e+00
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load float*, float** %3, align 8
  %71 = getelementptr inbounds float, float* %70, i64 15
  %72 = load float, float* %71, align 4
  %73 = fcmp oeq float %72, 1.000000e+00
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @MATRIX_2D_NO_ROT, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  br label %162

78:                                               ; preds = %69, %64, %59, %54, %49, %44, %39, %34, %29, %24, %19, %14
  %79 = load float*, float** %3, align 8
  %80 = getelementptr inbounds float, float* %79, i64 8
  %81 = load float, float* %80, align 4
  %82 = fcmp oeq float %81, 0.000000e+00
  br i1 %82, label %83, label %132

83:                                               ; preds = %78
  %84 = load float*, float** %3, align 8
  %85 = getelementptr inbounds float, float* %84, i64 9
  %86 = load float, float* %85, align 4
  %87 = fcmp oeq float %86, 0.000000e+00
  br i1 %87, label %88, label %132

88:                                               ; preds = %83
  %89 = load float*, float** %3, align 8
  %90 = getelementptr inbounds float, float* %89, i64 2
  %91 = load float, float* %90, align 4
  %92 = fcmp oeq float %91, 0.000000e+00
  br i1 %92, label %93, label %132

93:                                               ; preds = %88
  %94 = load float*, float** %3, align 8
  %95 = getelementptr inbounds float, float* %94, i64 6
  %96 = load float, float* %95, align 4
  %97 = fcmp oeq float %96, 0.000000e+00
  br i1 %97, label %98, label %132

98:                                               ; preds = %93
  %99 = load float*, float** %3, align 8
  %100 = getelementptr inbounds float, float* %99, i64 10
  %101 = load float, float* %100, align 4
  %102 = fcmp oeq float %101, 1.000000e+00
  br i1 %102, label %103, label %132

103:                                              ; preds = %98
  %104 = load float*, float** %3, align 8
  %105 = getelementptr inbounds float, float* %104, i64 14
  %106 = load float, float* %105, align 4
  %107 = fcmp oeq float %106, 0.000000e+00
  br i1 %107, label %108, label %132

108:                                              ; preds = %103
  %109 = load float*, float** %3, align 8
  %110 = getelementptr inbounds float, float* %109, i64 3
  %111 = load float, float* %110, align 4
  %112 = fcmp oeq float %111, 0.000000e+00
  br i1 %112, label %113, label %132

113:                                              ; preds = %108
  %114 = load float*, float** %3, align 8
  %115 = getelementptr inbounds float, float* %114, i64 7
  %116 = load float, float* %115, align 4
  %117 = fcmp oeq float %116, 0.000000e+00
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = load float*, float** %3, align 8
  %120 = getelementptr inbounds float, float* %119, i64 11
  %121 = load float, float* %120, align 4
  %122 = fcmp oeq float %121, 0.000000e+00
  br i1 %122, label %123, label %132

123:                                              ; preds = %118
  %124 = load float*, float** %3, align 8
  %125 = getelementptr inbounds float, float* %124, i64 15
  %126 = load float, float* %125, align 4
  %127 = fcmp oeq float %126, 1.000000e+00
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @MATRIX_2D, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  br label %161

132:                                              ; preds = %123, %118, %113, %108, %103, %98, %93, %88, %83, %78
  %133 = load float*, float** %3, align 8
  %134 = getelementptr inbounds float, float* %133, i64 3
  %135 = load float, float* %134, align 4
  %136 = fcmp oeq float %135, 0.000000e+00
  br i1 %136, label %137, label %156

137:                                              ; preds = %132
  %138 = load float*, float** %3, align 8
  %139 = getelementptr inbounds float, float* %138, i64 7
  %140 = load float, float* %139, align 4
  %141 = fcmp oeq float %140, 0.000000e+00
  br i1 %141, label %142, label %156

142:                                              ; preds = %137
  %143 = load float*, float** %3, align 8
  %144 = getelementptr inbounds float, float* %143, i64 11
  %145 = load float, float* %144, align 4
  %146 = fcmp oeq float %145, 0.000000e+00
  br i1 %146, label %147, label %156

147:                                              ; preds = %142
  %148 = load float*, float** %3, align 8
  %149 = getelementptr inbounds float, float* %148, i64 15
  %150 = load float, float* %149, align 4
  %151 = fcmp oeq float %150, 1.000000e+00
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32, i32* @MATRIX_3D, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 8
  br label %160

156:                                              ; preds = %147, %142, %137, %132
  %157 = load i32, i32* @MATRIX_GENERAL, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %152
  br label %161

161:                                              ; preds = %160, %128
  br label %162

162:                                              ; preds = %161, %74
  br label %163

163:                                              ; preds = %162, %10
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load float*, float** %165, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @invert_matrix(float* %166, i32 %169)
  %171 = load i32, i32* @GL_FALSE, align 4
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  ret void
}

declare dso_local i64 @is_identity(float*) #1

declare dso_local i32 @invert_matrix(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
