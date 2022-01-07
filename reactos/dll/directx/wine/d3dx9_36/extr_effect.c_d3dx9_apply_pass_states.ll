; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_apply_pass_states.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_apply_pass_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ID3DXEffectImpl = type { i32, i64, i32, i32*, i32 }
%struct.d3dx_pass = type { i32, i32, i32* }

@.str = private unnamed_addr constant [37 x i8] c"effect %p, pass %p, state_count %u.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error applying state, hr %#x.\0A\00", align 1
@SetLight = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Error setting light, hr %#x.\0A\00", align 1
@SetMaterial = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Error setting material, hr %#x.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ID3DXEffectImpl*, %struct.d3dx_pass*, i32)* @d3dx9_apply_pass_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_apply_pass_states(%struct.ID3DXEffectImpl* %0, %struct.d3dx_pass* %1, i32 %2) #0 {
  %4 = alloca %struct.ID3DXEffectImpl*, align 8
  %5 = alloca %struct.d3dx_pass*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ID3DXEffectImpl* %0, %struct.ID3DXEffectImpl** %4, align 8
  store %struct.d3dx_pass* %1, %struct.d3dx_pass** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %4, align 8
  %12 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %11, i32 0, i32 4
  %13 = call i32 @next_effect_update_version(i32* %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %4, align 8
  %15 = load %struct.d3dx_pass*, %struct.d3dx_pass** %5, align 8
  %16 = load %struct.d3dx_pass*, %struct.d3dx_pass** %5, align 8
  %17 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.ID3DXEffectImpl* %14, %struct.d3dx_pass* %15, i32 %18)
  %20 = load i32, i32* @D3D_OK, align 4
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %45, %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.d3dx_pass*, %struct.d3dx_pass** %5, align 8
  %24 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %4, align 8
  %29 = load %struct.d3dx_pass*, %struct.d3dx_pass** %5, align 8
  %30 = load %struct.d3dx_pass*, %struct.d3dx_pass** %5, align 8
  %31 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @d3dx9_apply_state(%struct.ID3DXEffectImpl* %28, %struct.d3dx_pass* %29, i32* %35, i32 -1, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %21

48:                                               ; preds = %21
  %49 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %4, align 8
  %50 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %87, %53
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %4, align 8
  %57 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @ARRAY_SIZE(i32* %58)
  %60 = icmp ult i32 %55, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %54
  %62 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %4, align 8
  %63 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %61
  %70 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %4, align 8
  %71 = load i32, i32* @SetLight, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %4, align 8
  %74 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 (%struct.ID3DXEffectImpl*, i32, i32, ...) @SET_D3D_STATE(%struct.ID3DXEffectImpl* %70, i32 %71, i32 %72, i32* %78)
  store i32 %79, i32* %9, align 4
  %80 = call i64 @FAILED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %82, %69, %61
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %54

90:                                               ; preds = %54
  %91 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %4, align 8
  %92 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %48
  %94 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %4, align 8
  %95 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %4, align 8
  %100 = load i32, i32* @SetMaterial, align 4
  %101 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %4, align 8
  %102 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %101, i32 0, i32 2
  %103 = ptrtoint i32* %102 to i32
  %104 = call i32 (%struct.ID3DXEffectImpl*, i32, i32, ...) @SET_D3D_STATE(%struct.ID3DXEffectImpl* %99, i32 %100, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = call i64 @FAILED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %98
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %107, %98, %93
  %112 = load i64, i64* @FALSE, align 8
  %113 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %4, align 8
  %114 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.d3dx_pass*, %struct.d3dx_pass** %5, align 8
  %117 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local i32 @next_effect_update_version(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.ID3DXEffectImpl*, %struct.d3dx_pass*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @d3dx9_apply_state(%struct.ID3DXEffectImpl*, %struct.d3dx_pass*, i32*, i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @SET_D3D_STATE(%struct.ID3DXEffectImpl*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
