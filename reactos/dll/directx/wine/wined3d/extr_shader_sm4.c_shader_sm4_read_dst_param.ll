; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_dst_param.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_dst_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_sm4_data = type { i32 }
%struct.wined3d_shader_dst_param = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid ptr %p >= end %p.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to read parameter.\0A\00", align 1
@WINED3DSPSM_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Invalid source modifier %#x on destination register.\0A\00", align 1
@WINED3D_SM4_WRITEMASK_MASK = common dso_local global i32 0, align 4
@WINED3D_SM4_WRITEMASK_SHIFT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_sm4_data*, i32**, i32*, i32, %struct.wined3d_shader_dst_param*)* @shader_sm4_read_dst_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_sm4_read_dst_param(%struct.wined3d_sm4_data* %0, i32** %1, i32* %2, i32 %3, %struct.wined3d_shader_dst_param* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_sm4_data*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wined3d_shader_dst_param*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wined3d_sm4_data* %0, %struct.wined3d_sm4_data** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.wined3d_shader_dst_param* %4, %struct.wined3d_shader_dst_param** %11, align 8
  %14 = load i32**, i32*** %8, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp uge i32* %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i32**, i32*** %8, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %20, i32* %21)
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %6, align 4
  br label %60

24:                                               ; preds = %5
  %25 = load i32**, i32*** %8, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %7, align 8
  %29 = load i32**, i32*** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %11, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %32, i32 0, i32 3
  %34 = call i32 @shader_sm4_read_param(%struct.wined3d_sm4_data* %28, i32** %29, i32* %30, i32 %31, i32* %33, i32* %12)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %24
  %37 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %6, align 4
  br label %60

39:                                               ; preds = %24
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @WINED3DSPSM_NONE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %12, align 4
  %45 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %6, align 4
  br label %60

47:                                               ; preds = %39
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @WINED3D_SM4_WRITEMASK_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @WINED3D_SM4_WRITEMASK_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %11, align 8
  %54 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %11, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %11, align 8
  %58 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %47, %43, %36, %18
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @WARN(i8*, i32*, i32*) #1

declare dso_local i32 @shader_sm4_read_param(%struct.wined3d_sm4_data*, i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ERR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
