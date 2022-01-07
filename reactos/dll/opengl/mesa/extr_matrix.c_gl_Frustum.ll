; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_Frustum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_Frustum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double**, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, double, double)* }

@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"glFrustum(near or far)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_Frustum(%struct.TYPE_8__* %0, double %1, double %2, double %3, double %4, double %5, double %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
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
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  %22 = load double, double* %13, align 8
  %23 = fcmp ole double %22, 0.000000e+00
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load double, double* %14, align 8
  %26 = fcmp ole double %25, 0.000000e+00
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %7
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = load i32, i32* @GL_INVALID_VALUE, align 4
  %30 = call i32 @gl_error(%struct.TYPE_8__* %28, i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %24
  %32 = load double, double* %13, align 8
  %33 = fmul double 2.000000e+00, %32
  %34 = load double, double* %10, align 8
  %35 = load double, double* %9, align 8
  %36 = fsub double %34, %35
  %37 = fdiv double %33, %36
  store double %37, double* %15, align 8
  %38 = load double, double* %13, align 8
  %39 = fmul double 2.000000e+00, %38
  %40 = load double, double* %12, align 8
  %41 = load double, double* %11, align 8
  %42 = fsub double %40, %41
  %43 = fdiv double %39, %42
  store double %43, double* %16, align 8
  %44 = load double, double* %10, align 8
  %45 = load double, double* %9, align 8
  %46 = fadd double %44, %45
  %47 = load double, double* %10, align 8
  %48 = load double, double* %9, align 8
  %49 = fsub double %47, %48
  %50 = fdiv double %46, %49
  store double %50, double* %17, align 8
  %51 = load double, double* %12, align 8
  %52 = load double, double* %11, align 8
  %53 = fadd double %51, %52
  %54 = load double, double* %12, align 8
  %55 = load double, double* %11, align 8
  %56 = fsub double %54, %55
  %57 = fdiv double %53, %56
  store double %57, double* %18, align 8
  %58 = load double, double* %14, align 8
  %59 = load double, double* %13, align 8
  %60 = fadd double %58, %59
  %61 = fneg double %60
  %62 = load double, double* %14, align 8
  %63 = load double, double* %13, align 8
  %64 = fsub double %62, %63
  %65 = fdiv double %61, %64
  store double %65, double* %19, align 8
  %66 = load double, double* %14, align 8
  %67 = fmul double 2.000000e+00, %66
  %68 = load double, double* %13, align 8
  %69 = fmul double %67, %68
  %70 = fneg double %69
  %71 = load double, double* %14, align 8
  %72 = load double, double* %13, align 8
  %73 = fsub double %71, %72
  %74 = fdiv double %70, %73
  store double %74, double* %20, align 8
  %75 = load double, double* %15, align 8
  %76 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 0
  store double %75, double* %76, align 16
  %77 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 4
  store double 0.000000e+00, double* %77, align 16
  %78 = load double, double* %17, align 8
  %79 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 8
  store double %78, double* %79, align 16
  %80 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 12
  store double 0.000000e+00, double* %80, align 16
  %81 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 1
  store double 0.000000e+00, double* %81, align 8
  %82 = load double, double* %16, align 8
  %83 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 5
  store double %82, double* %83, align 8
  %84 = load double, double* %18, align 8
  %85 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 9
  store double %84, double* %85, align 8
  %86 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 13
  store double 0.000000e+00, double* %86, align 8
  %87 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 2
  store double 0.000000e+00, double* %87, align 16
  %88 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 6
  store double 0.000000e+00, double* %88, align 16
  %89 = load double, double* %19, align 8
  %90 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 10
  store double %89, double* %90, align 16
  %91 = load double, double* %20, align 8
  %92 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 14
  store double %91, double* %92, align 16
  %93 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 3
  store double 0.000000e+00, double* %93, align 8
  %94 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 7
  store double 0.000000e+00, double* %94, align 8
  %95 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 11
  store double -1.000000e+00, double* %95, align 8
  %96 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 15
  store double 0.000000e+00, double* %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds [16 x double], [16 x double]* %21, i64 0, i64 0
  %99 = call i32 @gl_MultMatrixf(%struct.TYPE_8__* %97, double* %98)
  %100 = load double, double* %13, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load double**, double*** %102, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds double*, double** %103, i64 %106
  %108 = load double*, double** %107, align 8
  %109 = getelementptr inbounds double, double* %108, i64 0
  store double %100, double* %109, align 8
  %110 = load double, double* %14, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load double**, double*** %112, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds double*, double** %113, i64 %116
  %118 = load double*, double** %117, align 8
  %119 = getelementptr inbounds double, double* %118, i64 1
  store double %110, double* %119, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_8__*, double, double)*, i32 (%struct.TYPE_8__*, double, double)** %122, align 8
  %124 = icmp ne i32 (%struct.TYPE_8__*, double, double)* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %31
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32 (%struct.TYPE_8__*, double, double)*, i32 (%struct.TYPE_8__*, double, double)** %128, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = load double, double* %13, align 8
  %132 = load double, double* %14, align 8
  %133 = call i32 %129(%struct.TYPE_8__* %130, double %131, double %132)
  br label %134

134:                                              ; preds = %125, %31
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @gl_MultMatrixf(%struct.TYPE_8__*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
