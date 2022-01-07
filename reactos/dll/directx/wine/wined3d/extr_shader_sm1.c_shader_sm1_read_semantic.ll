; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_sm1_read_semantic.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_sm1_read_semantic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_semantic = type { i32, i32, i32, i32, i32 }

@WINED3D_SM1_DCL_USAGE_MASK = common dso_local global i32 0, align 4
@WINED3D_SM1_DCL_USAGE_SHIFT = common dso_local global i32 0, align 4
@WINED3D_SM1_DCL_USAGE_INDEX_MASK = common dso_local global i32 0, align 4
@WINED3D_SM1_DCL_USAGE_INDEX_SHIFT = common dso_local global i32 0, align 4
@WINED3D_SM1_RESOURCE_TYPE_MASK = common dso_local global i32 0, align 4
@WINED3D_SM1_RESOURCE_TYPE_SHIFT = common dso_local global i32 0, align 4
@resource_type_table = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unhandled resource type %#x.\0A\00", align 1
@WINED3D_SHADER_RESOURCE_NONE = common dso_local global i32 0, align 4
@WINED3D_DATA_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.wined3d_shader_semantic*)* @shader_sm1_read_semantic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_sm1_read_semantic(i32** %0, %struct.wined3d_shader_semantic* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.wined3d_shader_semantic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.wined3d_shader_semantic* %1, %struct.wined3d_shader_semantic** %4, align 8
  %8 = load i32**, i32*** %3, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %8, align 8
  %11 = load i32, i32* %9, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32**, i32*** %3, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %12, align 8
  %15 = load i32, i32* %13, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @WINED3D_SM1_DCL_USAGE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @WINED3D_SM1_DCL_USAGE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %4, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @WINED3D_SM1_DCL_USAGE_INDEX_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @WINED3D_SM1_DCL_USAGE_INDEX_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %4, align 8
  %29 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @WINED3D_SM1_RESOURCE_TYPE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @WINED3D_SM1_RESOURCE_TYPE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** @resource_type_table, align 8
  %37 = call i32 @ARRAY_SIZE(i32* %36)
  %38 = icmp uge i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @WINED3D_SHADER_RESOURCE_NONE, align 4
  %43 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %4, align 8
  %44 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  br label %53

45:                                               ; preds = %2
  %46 = load i32*, i32** @resource_type_table, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %4, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %39
  %54 = load i32, i32* @WINED3D_DATA_FLOAT, align 4
  %55 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %4, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %4, align 8
  %59 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %58, i32 0, i32 2
  %60 = call i32 @shader_parse_dst_param(i32 %57, i32* null, i32* %59)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @shader_parse_dst_param(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
