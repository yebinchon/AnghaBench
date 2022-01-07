; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_LoadMatrixf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_LoadMatrixf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float**, i64, i8*, i32, %struct.TYPE_10__, i8*, i32, i8*, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, float, float)* }
%struct.TYPE_9__ = type { i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glLoadMatrix\00", align 1
@GL_TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Bad matrix mode in gl_LoadMatrixf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_LoadMatrixf(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_11__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %15 = call i32 @gl_error(%struct.TYPE_11__* %13, i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %102

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 9
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %99 [
    i32 130, label %21
    i32 129, label %30
    i32 128, label %90
  ]

21:                                               ; preds = %16
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @MEMCPY(i32 %24, i32* %25, i32 64)
  %27 = load i8*, i8** @GL_TRUE, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  br label %102

30:                                               ; preds = %16
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @MEMCPY(i32 %33, i32* %34, i32 64)
  %36 = load i8*, i8** @GL_TRUE, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 10
  %41 = load i32, i32* %40, align 4
  %42 = sitofp i32 %41 to float
  store float %42, float* %7, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 14
  %45 = load i32, i32* %44, align 4
  %46 = sitofp i32 %45 to float
  store float %46, float* %8, align 4
  %47 = load float, float* %8, align 4
  %48 = load float, float* %7, align 4
  %49 = fsub float %48, 1.000000e+00
  %50 = fdiv float %47, %49
  store float %50, float* %5, align 4
  %51 = load float, float* %8, align 4
  %52 = load float, float* %7, align 4
  %53 = fadd float %52, 1.000000e+00
  %54 = fdiv float %51, %53
  store float %54, float* %6, align 4
  %55 = load float, float* %5, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load float**, float*** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds float*, float** %58, i64 %61
  %63 = load float*, float** %62, align 8
  %64 = getelementptr inbounds float, float* %63, i64 0
  store float %55, float* %64, align 4
  %65 = load float, float* %6, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load float**, float*** %67, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds float*, float** %68, i64 %71
  %73 = load float*, float** %72, align 8
  %74 = getelementptr inbounds float, float* %73, i64 1
  store float %65, float* %74, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_11__*, float, float)*, i32 (%struct.TYPE_11__*, float, float)** %77, align 8
  %79 = icmp ne i32 (%struct.TYPE_11__*, float, float)* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %30
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_11__*, float, float)*, i32 (%struct.TYPE_11__*, float, float)** %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = load float, float* %5, align 4
  %87 = load float, float* %6, align 4
  %88 = call i32 %84(%struct.TYPE_11__* %85, float %86, float %87)
  br label %89

89:                                               ; preds = %80, %30
  br label %102

90:                                               ; preds = %16
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @MEMCPY(i32 %93, i32* %94, i32 64)
  %96 = load i8*, i8** @GL_TRUE, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  br label %102

99:                                               ; preds = %16
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = call i32 @gl_problem(%struct.TYPE_11__* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %12, %99, %90, %89, %21
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_11__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @MEMCPY(i32, i32*, i32) #1

declare dso_local i32 @gl_problem(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
