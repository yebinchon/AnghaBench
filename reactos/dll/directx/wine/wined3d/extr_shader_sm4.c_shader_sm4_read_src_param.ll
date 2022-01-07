; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_src_param.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_src_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_sm4_data = type { i32 }
%struct.wined3d_shader_src_param = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid ptr %p >= end %p.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to read parameter.\0A\00", align 1
@WINED3DSPR_IMMCONST = common dso_local global i64 0, align 8
@WINED3DSP_NOSWIZZLE = common dso_local global i8* null, align 8
@WINED3D_SM4_SWIZZLE_TYPE_MASK = common dso_local global i32 0, align 4
@WINED3D_SM4_SWIZZLE_TYPE_SHIFT = common dso_local global i32 0, align 4
@WINED3D_SM4_SWIZZLE_MASK = common dso_local global i32 0, align 4
@WINED3D_SM4_SWIZZLE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unhandled swizzle type %#x.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_sm4_data*, i32**, i32*, i32, %struct.wined3d_shader_src_param*)* @shader_sm4_read_src_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_sm4_read_src_param(%struct.wined3d_sm4_data* %0, i32** %1, i32* %2, i32 %3, %struct.wined3d_shader_src_param* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_sm4_data*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wined3d_shader_src_param*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wined3d_sm4_data* %0, %struct.wined3d_sm4_data** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.wined3d_shader_src_param* %4, %struct.wined3d_shader_src_param** %11, align 8
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
  br label %94

24:                                               ; preds = %5
  %25 = load i32**, i32*** %8, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %7, align 8
  %29 = load i32**, i32*** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %11, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %32, i32 0, i32 1
  %34 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %11, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %34, i32 0, i32 2
  %36 = call i32 @shader_sm4_read_param(%struct.wined3d_sm4_data* %28, i32** %29, i32* %30, i32 %31, %struct.TYPE_2__* %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = call i32 @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %6, align 4
  br label %94

41:                                               ; preds = %24
  %42 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %11, align 8
  %43 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WINED3DSPR_IMMCONST, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i8*, i8** @WINED3DSP_NOSWIZZLE, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %11, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %92

53:                                               ; preds = %41
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @WINED3D_SM4_SWIZZLE_TYPE_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @WINED3D_SM4_SWIZZLE_TYPE_SHIFT, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  switch i32 %59, label %88 [
    i32 130, label %60
    i32 129, label %65
    i32 128, label %80
  ]

60:                                               ; preds = %53
  %61 = load i8*, i8** @WINED3DSP_NOSWIZZLE, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %11, align 8
  %64 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %91

65:                                               ; preds = %53
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @WINED3D_SM4_SWIZZLE_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @WINED3D_SM4_SWIZZLE_SHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %11, align 8
  %72 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %11, align 8
  %74 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 3
  %77 = mul nsw i32 %76, 85
  %78 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %11, align 8
  %79 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %91

80:                                               ; preds = %53
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @WINED3D_SM4_SWIZZLE_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @WINED3D_SM4_SWIZZLE_SHIFT, align 4
  %85 = ashr i32 %83, %84
  %86 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %11, align 8
  %87 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %91

88:                                               ; preds = %53
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %80, %65, %60
  br label %92

92:                                               ; preds = %91, %48
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %38, %18
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @WARN(i8*, i32*, i32*) #1

declare dso_local i32 @shader_sm4_read_param(%struct.wined3d_sm4_data*, i32**, i32*, i32, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
