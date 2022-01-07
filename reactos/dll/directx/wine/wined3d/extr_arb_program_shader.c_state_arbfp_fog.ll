; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_state_arbfp_fog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_state_arbfp_fog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i64 }
%struct.wined3d_state = type { i64* }

@WINED3D_RS_FOGSTART = common dso_local global i64 0, align 8
@WINED3D_RS_FOGEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"context %p, state %p, state_id %#x.\0A\00", align 1
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@WINED3D_RS_FOGENABLE = common dso_local global i64 0, align 8
@WINED3D_RS_FOGTABLEMODE = common dso_local global i64 0, align 8
@WINED3D_FOG_NONE = common dso_local global i64 0, align 8
@FOGSOURCE_VS = common dso_local global i32 0, align 4
@WINED3D_RS_FOGVERTEXMODE = common dso_local global i64 0, align 8
@FOGSOURCE_COORD = common dso_local global i32 0, align 4
@FOGSOURCE_FFP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i64)* @state_arbfp_fog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @state_arbfp_fog(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @WINED3D_RS_FOGSTART, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @WINED3D_RS_FOGEND, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %23 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.wined3d_context* %22, %struct.wined3d_state* %23, i64 %24)
  %26 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %27 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %28 = call i32 @STATE_SHADER(i32 %27)
  %29 = call i32 @isStateDirty(%struct.wined3d_context* %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %33 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @fragment_prog_arbfp(%struct.wined3d_context* %32, %struct.wined3d_state* %33, i64 %34)
  br label %36

36:                                               ; preds = %31, %3
  %37 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %38 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @WINED3D_RS_FOGENABLE, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %101

45:                                               ; preds = %36
  %46 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %47 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @WINED3D_RS_FOGTABLEMODE, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @WINED3D_FOG_NONE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %45
  %55 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %56 = call i64 @use_vs(%struct.wined3d_state* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @FOGSOURCE_VS, align 4
  store i32 %59, i32* %7, align 4
  br label %79

60:                                               ; preds = %54
  %61 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %62 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @WINED3D_RS_FOGVERTEXMODE, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @WINED3D_FOG_NONE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %60
  %70 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %71 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69, %60
  %75 = load i32, i32* @FOGSOURCE_COORD, align 4
  store i32 %75, i32* %7, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @FOGSOURCE_FFP, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %74
  br label %79

79:                                               ; preds = %78, %58
  br label %82

80:                                               ; preds = %45
  %81 = load i32, i32* @FOGSOURCE_FFP, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %80, %79
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %85 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88, %82
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %95 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %97 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %98 = load i64, i64* @WINED3D_RS_FOGSTART, align 8
  %99 = call i32 @STATE_RENDER(i64 %98)
  %100 = call i32 @state_fogstartend(%struct.wined3d_context* %96, %struct.wined3d_state* %97, i32 %99)
  br label %101

101:                                              ; preds = %44, %92, %88
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_context*, %struct.wined3d_state*, i64) #1

declare dso_local i32 @isStateDirty(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_SHADER(i32) #1

declare dso_local i32 @fragment_prog_arbfp(%struct.wined3d_context*, %struct.wined3d_state*, i64) #1

declare dso_local i64 @use_vs(%struct.wined3d_state*) #1

declare dso_local i32 @state_fogstartend(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i32 @STATE_RENDER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
