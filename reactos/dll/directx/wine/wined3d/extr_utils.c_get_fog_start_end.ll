; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_fog_start_end.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_fog_start_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_state = type { i32* }
%union.anon = type { i32 }

@WINED3D_RS_FOGSTART = common dso_local global i64 0, align 8
@WINED3D_RS_FOGEND = common dso_local global i64 0, align 8
@WINED3D_RS_FOGTABLEMODE = common dso_local global i64 0, align 8
@WINED3D_FOG_NONE = common dso_local global i32 0, align 4
@INFINITY = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unexpected fog coordinate source.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_fog_start_end(%struct.wined3d_context* %0, %struct.wined3d_state* %1, float* %2, float* %3) #0 {
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %union.anon, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %10 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %60 [
    i32 128, label %13
    i32 130, label %16
    i32 129, label %19
  ]

13:                                               ; preds = %4
  %14 = load float*, float** %7, align 8
  store float 1.000000e+00, float* %14, align 4
  %15 = load float*, float** %8, align 8
  store float 0.000000e+00, float* %15, align 4
  br label %64

16:                                               ; preds = %4
  %17 = load float*, float** %7, align 8
  store float 2.550000e+02, float* %17, align 4
  %18 = load float*, float** %8, align 8
  store float 0.000000e+00, float* %18, align 4
  br label %64

19:                                               ; preds = %4
  %20 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %21 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @WINED3D_RS_FOGSTART, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %union.anon* %9 to i32*
  store i32 %25, i32* %26, align 4
  %27 = bitcast %union.anon* %9 to float*
  %28 = load float, float* %27, align 4
  %29 = load float*, float** %7, align 8
  store float %28, float* %29, align 4
  %30 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %31 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @WINED3D_RS_FOGEND, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = bitcast %union.anon* %9 to i32*
  store i32 %35, i32* %36, align 4
  %37 = bitcast %union.anon* %9 to float*
  %38 = load float, float* %37, align 4
  %39 = load float*, float** %8, align 8
  store float %38, float* %39, align 4
  %40 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %41 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @WINED3D_RS_FOGTABLEMODE, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @WINED3D_FOG_NONE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %19
  %49 = load float*, float** %7, align 8
  %50 = load float, float* %49, align 4
  %51 = load float*, float** %8, align 8
  %52 = load float, float* %51, align 4
  %53 = fcmp oeq float %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load float, float* @INFINITY, align 4
  %56 = fneg float %55
  %57 = load float*, float** %7, align 8
  store float %56, float* %57, align 4
  %58 = load float*, float** %8, align 8
  store float 0.000000e+00, float* %58, align 4
  br label %59

59:                                               ; preds = %54, %48, %19
  br label %64

60:                                               ; preds = %4
  %61 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %62 = load float*, float** %7, align 8
  store float 0.000000e+00, float* %62, align 4
  %63 = load float*, float** %8, align 8
  store float 0.000000e+00, float* %63, align 4
  br label %64

64:                                               ; preds = %60, %59, %16, %13
  ret void
}

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
