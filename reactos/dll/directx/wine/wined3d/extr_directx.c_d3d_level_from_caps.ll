; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_d3d_level_from_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_d3d_level_from_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_caps = type { i32 }
%struct.fragment_caps = type { i32, i32 }

@WINED3D_D3D_LEVEL_11 = common dso_local global i32 0, align 4
@WINED3D_D3D_LEVEL_10 = common dso_local global i32 0, align 4
@WINED3D_D3D_LEVEL_9_SM3 = common dso_local global i32 0, align 4
@WINED3D_D3D_LEVEL_9_SM2 = common dso_local global i32 0, align 4
@WINED3D_D3D_LEVEL_8 = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_DOTPRODUCT3 = common dso_local global i32 0, align 4
@WINED3D_D3D_LEVEL_7 = common dso_local global i32 0, align 4
@WINED3D_D3D_LEVEL_6 = common dso_local global i32 0, align 4
@WINED3D_D3D_LEVEL_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shader_caps*, %struct.fragment_caps*, i64)* @d3d_level_from_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d_level_from_caps(%struct.shader_caps* %0, %struct.fragment_caps* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shader_caps*, align 8
  %6 = alloca %struct.fragment_caps*, align 8
  %7 = alloca i64, align 8
  store %struct.shader_caps* %0, %struct.shader_caps** %5, align 8
  store %struct.fragment_caps* %1, %struct.fragment_caps** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.shader_caps*, %struct.shader_caps** %5, align 8
  %9 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 5
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @WINED3D_D3D_LEVEL_11, align 4
  store i32 %13, i32* %4, align 4
  br label %72

14:                                               ; preds = %3
  %15 = load %struct.shader_caps*, %struct.shader_caps** %5, align 8
  %16 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @WINED3D_D3D_LEVEL_10, align 4
  store i32 %20, i32* %4, align 4
  br label %72

21:                                               ; preds = %14
  %22 = load %struct.shader_caps*, %struct.shader_caps** %5, align 8
  %23 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @MAKEDWORD_VERSION(i32 4, i32 30)
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @WINED3D_D3D_LEVEL_11, align 4
  store i32 %31, i32* %4, align 4
  br label %72

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @MAKEDWORD_VERSION(i32 1, i32 30)
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @WINED3D_D3D_LEVEL_10, align 4
  store i32 %37, i32* %4, align 4
  br label %72

38:                                               ; preds = %32
  %39 = load i32, i32* @WINED3D_D3D_LEVEL_9_SM3, align 4
  store i32 %39, i32* %4, align 4
  br label %72

40:                                               ; preds = %21
  %41 = load %struct.shader_caps*, %struct.shader_caps** %5, align 8
  %42 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @WINED3D_D3D_LEVEL_9_SM2, align 4
  store i32 %46, i32* %4, align 4
  br label %72

47:                                               ; preds = %40
  %48 = load %struct.shader_caps*, %struct.shader_caps** %5, align 8
  %49 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @WINED3D_D3D_LEVEL_8, align 4
  store i32 %53, i32* %4, align 4
  br label %72

54:                                               ; preds = %47
  %55 = load %struct.fragment_caps*, %struct.fragment_caps** %6, align 8
  %56 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @WINED3DTEXOPCAPS_DOTPRODUCT3, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @WINED3D_D3D_LEVEL_7, align 4
  store i32 %62, i32* %4, align 4
  br label %72

63:                                               ; preds = %54
  %64 = load %struct.fragment_caps*, %struct.fragment_caps** %6, align 8
  %65 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @WINED3D_D3D_LEVEL_6, align 4
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @WINED3D_D3D_LEVEL_5, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %68, %61, %52, %45, %38, %36, %30, %19, %12
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @MAKEDWORD_VERSION(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
