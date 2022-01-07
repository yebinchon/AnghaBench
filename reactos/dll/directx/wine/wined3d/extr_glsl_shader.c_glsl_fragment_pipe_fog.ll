; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_fragment_pipe_fog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_fragment_pipe_fog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.wined3d_state = type { i64* }

@WINED3D_RS_FOGSTART = common dso_local global i64 0, align 8
@WINED3D_RS_FOGEND = common dso_local global i64 0, align 8
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@WINED3D_RS_FOGENABLE = common dso_local global i64 0, align 8
@WINED3D_RS_FOGTABLEMODE = common dso_local global i64 0, align 8
@WINED3D_FOG_NONE = common dso_local global i64 0, align 8
@FOGSOURCE_VS = common dso_local global i32 0, align 4
@WINED3D_RS_FOGVERTEXMODE = common dso_local global i64 0, align 8
@FOGSOURCE_COORD = common dso_local global i32 0, align 4
@FOGSOURCE_FFP = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_PS_FOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i64)* @glsl_fragment_pipe_fog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glsl_fragment_pipe_fog(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %12 = call i64 @use_vs(%struct.wined3d_state* %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @WINED3D_RS_FOGSTART, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @WINED3D_RS_FOGEND, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %28 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %32 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @WINED3D_RS_FOGENABLE, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %3
  br label %95

39:                                               ; preds = %3
  %40 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %41 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @WINED3D_RS_FOGTABLEMODE, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WINED3D_FOG_NONE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %39
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @FOGSOURCE_VS, align 4
  store i32 %52, i32* %8, align 4
  br label %73

53:                                               ; preds = %48
  %54 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %55 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @WINED3D_RS_FOGVERTEXMODE, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WINED3D_FOG_NONE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %53
  %63 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %64 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62, %53
  %69 = load i32, i32* @FOGSOURCE_COORD, align 4
  store i32 %69, i32* %8, align 4
  br label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @FOGSOURCE_FFP, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %68
  br label %73

73:                                               ; preds = %72, %51
  br label %76

74:                                               ; preds = %39
  %75 = load i32, i32* @FOGSOURCE_FFP, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %79 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %89 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @WINED3D_SHADER_CONST_PS_FOG, align 4
  %91 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %92 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %38, %86, %82
  ret void
}

declare dso_local i64 @use_vs(%struct.wined3d_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
