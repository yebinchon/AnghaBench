; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_fog.c_gl_Fogfv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_fog.c_gl_Fogfv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, double, double, double, double, double* }

@GL_LINEAR = common dso_local global i32 0, align 4
@GL_EXP = common dso_local global i32 0, align 4
@GL_EXP2 = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"glFog\00", align 1
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"glFog(GL_FOG_START)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"glFog(GL_FOG_END)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_Fogfv(%struct.TYPE_6__* %0, i32 %1, double* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store double* %2, double** %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %116 [
    i32 129, label %9
    i32 132, label %34
    i32 128, label %49
    i32 131, label %63
    i32 130, label %77
    i32 133, label %83
  ]

9:                                                ; preds = %3
  %10 = load double*, double** %6, align 8
  %11 = load double, double* %10, align 8
  %12 = fptosi double %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @GL_LINEAR, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @GL_EXP, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @GL_EXP2, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %16, %9
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = load i32, i32* @GL_INVALID_ENUM, align 4
  %32 = call i32 @gl_error(%struct.TYPE_6__* %30, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %24
  br label %120

34:                                               ; preds = %3
  %35 = load double*, double** %6, align 8
  %36 = load double, double* %35, align 8
  %37 = fcmp olt double %36, 0.000000e+00
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = load i32, i32* @GL_INVALID_VALUE, align 4
  %41 = call i32 @gl_error(%struct.TYPE_6__* %39, i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %48

42:                                               ; preds = %34
  %43 = load double*, double** %6, align 8
  %44 = load double, double* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store double %44, double* %47, align 8
  br label %48

48:                                               ; preds = %42, %38
  br label %120

49:                                               ; preds = %3
  %50 = load double*, double** %6, align 8
  %51 = load double, double* %50, align 8
  %52 = fcmp olt double %51, 0.000000e+00
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = load i32, i32* @GL_INVALID_VALUE, align 4
  %56 = call i32 @gl_error(%struct.TYPE_6__* %54, i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %120

57:                                               ; preds = %49
  %58 = load double*, double** %6, align 8
  %59 = load double, double* %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store double %59, double* %62, align 8
  br label %120

63:                                               ; preds = %3
  %64 = load double*, double** %6, align 8
  %65 = load double, double* %64, align 8
  %66 = fcmp olt double %65, 0.000000e+00
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = load i32, i32* @GL_INVALID_VALUE, align 4
  %70 = call i32 @gl_error(%struct.TYPE_6__* %68, i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %120

71:                                               ; preds = %63
  %72 = load double*, double** %6, align 8
  %73 = load double, double* %72, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store double %73, double* %76, align 8
  br label %120

77:                                               ; preds = %3
  %78 = load double*, double** %6, align 8
  %79 = load double, double* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  store double %79, double* %82, align 8
  br label %120

83:                                               ; preds = %3
  %84 = load double*, double** %6, align 8
  %85 = getelementptr inbounds double, double* %84, i64 0
  %86 = load double, double* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 5
  %90 = load double*, double** %89, align 8
  %91 = getelementptr inbounds double, double* %90, i64 0
  store double %86, double* %91, align 8
  %92 = load double*, double** %6, align 8
  %93 = getelementptr inbounds double, double* %92, i64 1
  %94 = load double, double* %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 5
  %98 = load double*, double** %97, align 8
  %99 = getelementptr inbounds double, double* %98, i64 1
  store double %94, double* %99, align 8
  %100 = load double*, double** %6, align 8
  %101 = getelementptr inbounds double, double* %100, i64 2
  %102 = load double, double* %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 5
  %106 = load double*, double** %105, align 8
  %107 = getelementptr inbounds double, double* %106, i64 2
  store double %102, double* %107, align 8
  %108 = load double*, double** %6, align 8
  %109 = getelementptr inbounds double, double* %108, i64 3
  %110 = load double, double* %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 5
  %114 = load double*, double** %113, align 8
  %115 = getelementptr inbounds double, double* %114, i64 3
  store double %110, double* %115, align 8
  br label %120

116:                                              ; preds = %3
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = load i32, i32* @GL_INVALID_ENUM, align 4
  %119 = call i32 @gl_error(%struct.TYPE_6__* %117, i32 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %53, %67, %116, %83, %77, %71, %57, %48, %33
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
