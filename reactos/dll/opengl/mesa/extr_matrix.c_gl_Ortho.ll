; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_Ortho.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_Ortho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, double, double)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_Ortho(%struct.TYPE_7__* %0, double %1, double %2, double %3, double %4, double %5, double %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca [16 x double], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  %22 = load double, double* %10, align 8
  %23 = load double, double* %9, align 8
  %24 = fsub double %22, %23
  %25 = fdiv double 2.000000e+00, %24
  store double %25, double* %15, align 8
  %26 = load double, double* %12, align 8
  %27 = load double, double* %11, align 8
  %28 = fsub double %26, %27
  %29 = fdiv double 2.000000e+00, %28
  store double %29, double* %16, align 8
  %30 = load double, double* %14, align 8
  %31 = load double, double* %13, align 8
  %32 = fsub double %30, %31
  %33 = fdiv double -2.000000e+00, %32
  store double %33, double* %17, align 8
  %34 = load double, double* %10, align 8
  %35 = load double, double* %9, align 8
  %36 = fadd double %34, %35
  %37 = fneg double %36
  %38 = load double, double* %10, align 8
  %39 = load double, double* %9, align 8
  %40 = fsub double %38, %39
  %41 = fdiv double %37, %40
  store double %41, double* %18, align 8
  %42 = load double, double* %12, align 8
  %43 = load double, double* %11, align 8
  %44 = fadd double %42, %43
  %45 = fneg double %44
  %46 = load double, double* %12, align 8
  %47 = load double, double* %11, align 8
  %48 = fsub double %46, %47
  %49 = fdiv double %45, %48
  store double %49, double* %19, align 8
  %50 = load double, double* %14, align 8
  %51 = load double, double* %13, align 8
  %52 = fadd double %50, %51
  %53 = fneg double %52
  %54 = load double, double* %14, align 8
  %55 = load double, double* %13, align 8
  %56 = fsub double %54, %55
  %57 = fdiv double %53, %56
  store double %57, double* %20, align 8
  %58 = load double, double* %15, align 8
  %59 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 0
  store double %58, double* %59, align 16
  %60 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 4
  store double 0.000000e+00, double* %60, align 16
  %61 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 8
  store double 0.000000e+00, double* %61, align 16
  %62 = load double, double* %18, align 8
  %63 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 12
  store double %62, double* %63, align 16
  %64 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 1
  store double 0.000000e+00, double* %64, align 8
  %65 = load double, double* %16, align 8
  %66 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 5
  store double %65, double* %66, align 8
  %67 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 9
  store double 0.000000e+00, double* %67, align 8
  %68 = load double, double* %19, align 8
  %69 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 13
  store double %68, double* %69, align 8
  %70 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 2
  store double 0.000000e+00, double* %70, align 16
  %71 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 6
  store double 0.000000e+00, double* %71, align 16
  %72 = load double, double* %17, align 8
  %73 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 10
  store double %72, double* %73, align 16
  %74 = load double, double* %20, align 8
  %75 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 14
  store double %74, double* %75, align 16
  %76 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 3
  store double 0.000000e+00, double* %76, align 8
  %77 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 7
  store double 0.000000e+00, double* %77, align 8
  %78 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 11
  store double 0.000000e+00, double* %78, align 8
  %79 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 15
  store double 1.000000e+00, double* %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 0
  %82 = call i32 @gl_MultMatrixf(%struct.TYPE_7__* %80, double* %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_7__*, double, double)*, i32 (%struct.TYPE_7__*, double, double)** %85, align 8
  %87 = icmp ne i32 (%struct.TYPE_7__*, double, double)* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %7
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32 (%struct.TYPE_7__*, double, double)*, i32 (%struct.TYPE_7__*, double, double)** %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = load double, double* %13, align 8
  %95 = load double, double* %14, align 8
  %96 = call i32 %92(%struct.TYPE_7__* %93, double %94, double %95)
  br label %97

97:                                               ; preds = %88, %7
  ret void
}

declare dso_local i32 @gl_MultMatrixf(%struct.TYPE_7__*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
