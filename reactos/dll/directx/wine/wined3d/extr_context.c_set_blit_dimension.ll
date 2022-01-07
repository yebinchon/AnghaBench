; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_set_blit_dimension.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_set_blit_dimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { %struct.TYPE_3__, i64* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32, double, double)*, i32 (double*)*, i32 (i32)* }

@WINED3D_GL_LEGACY_CONTEXT = common dso_local global i64 0, align 8
@GL_PROJECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"glMatrixMode(GL_PROJECTION)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"glLoadMatrixd\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"glViewport\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, double, double)* @set_blit_dimension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_blit_dimension(%struct.wined3d_gl_info* %0, double %1, double %2) #0 {
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [16 x double], align 16
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %8 = getelementptr inbounds [16 x double], [16 x double]* %7, i64 0, i64 0
  %9 = load double, double* %5, align 8
  %10 = fdiv double 2.000000e+00, %9
  store double %10, double* %8, align 8
  %11 = getelementptr inbounds double, double* %8, i64 1
  store double 0.000000e+00, double* %11, align 8
  %12 = getelementptr inbounds double, double* %11, i64 1
  store double 0.000000e+00, double* %12, align 8
  %13 = getelementptr inbounds double, double* %12, i64 1
  store double 0.000000e+00, double* %13, align 8
  %14 = getelementptr inbounds double, double* %13, i64 1
  store double 0.000000e+00, double* %14, align 8
  %15 = getelementptr inbounds double, double* %14, i64 1
  %16 = load double, double* %6, align 8
  %17 = fdiv double 2.000000e+00, %16
  store double %17, double* %15, align 8
  %18 = getelementptr inbounds double, double* %15, i64 1
  store double 0.000000e+00, double* %18, align 8
  %19 = getelementptr inbounds double, double* %18, i64 1
  store double 0.000000e+00, double* %19, align 8
  %20 = getelementptr inbounds double, double* %19, i64 1
  store double 0.000000e+00, double* %20, align 8
  %21 = getelementptr inbounds double, double* %20, i64 1
  store double 0.000000e+00, double* %21, align 8
  %22 = getelementptr inbounds double, double* %21, i64 1
  store double 2.000000e+00, double* %22, align 8
  %23 = getelementptr inbounds double, double* %22, i64 1
  store double 0.000000e+00, double* %23, align 8
  %24 = getelementptr inbounds double, double* %23, i64 1
  store double -1.000000e+00, double* %24, align 8
  %25 = getelementptr inbounds double, double* %24, i64 1
  store double -1.000000e+00, double* %25, align 8
  %26 = getelementptr inbounds double, double* %25, i64 1
  store double -1.000000e+00, double* %26, align 8
  %27 = getelementptr inbounds double, double* %26, i64 1
  store double 1.000000e+00, double* %27, align 8
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %29 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @WINED3D_GL_LEGACY_CONTEXT, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %3
  %36 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %37 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load i32, i32* @GL_PROJECTION, align 4
  %42 = call i32 %40(i32 %41)
  %43 = call i32 @checkGLcall(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %45 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32 (double*)*, i32 (double*)** %47, align 8
  %49 = getelementptr inbounds [16 x double], [16 x double]* %7, i64 0, i64 0
  %50 = call i32 %48(double* %49)
  %51 = call i32 @checkGLcall(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %35, %3
  %53 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %54 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (i32, i32, double, double)*, i32 (i32, i32, double, double)** %56, align 8
  %58 = load double, double* %5, align 8
  %59 = load double, double* %6, align 8
  %60 = call i32 %57(i32 0, i32 0, double %58, double %59)
  %61 = call i32 @checkGLcall(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
