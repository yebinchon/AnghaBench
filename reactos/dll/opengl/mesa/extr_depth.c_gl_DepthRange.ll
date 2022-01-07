; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_depth.c_gl_DepthRange.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_depth.c_gl_DepthRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { double, double, double, double }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glDepthRange\00", align 1
@DEPTH_SCALE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_DepthRange(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_7__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %15 = call i32 @gl_error(%struct.TYPE_7__* %13, i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %51

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @CLAMP(i32 %17, double 0.000000e+00, double 1.000000e+00)
  %19 = sitofp i64 %18 to double
  store double %19, double* %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @CLAMP(i32 %20, double 0.000000e+00, double 1.000000e+00)
  %22 = sitofp i64 %21 to double
  store double %22, double* %8, align 8
  %23 = load double, double* %7, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store double %23, double* %26, align 8
  %27 = load double, double* %8, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store double %27, double* %30, align 8
  %31 = load double, double* @DEPTH_SCALE, align 8
  %32 = load double, double* %8, align 8
  %33 = load double, double* %7, align 8
  %34 = fsub double %32, %33
  %35 = fdiv double %34, 2.000000e+00
  %36 = fmul double %31, %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store double %36, double* %39, align 8
  %40 = load double, double* @DEPTH_SCALE, align 8
  %41 = load double, double* %8, align 8
  %42 = load double, double* %7, align 8
  %43 = fsub double %41, %42
  %44 = fdiv double %43, 2.000000e+00
  %45 = load double, double* %7, align 8
  %46 = fadd double %44, %45
  %47 = fmul double %40, %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store double %47, double* %50, align 8
  br label %51

51:                                               ; preds = %16, %12
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_7__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i64 @CLAMP(i32, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
