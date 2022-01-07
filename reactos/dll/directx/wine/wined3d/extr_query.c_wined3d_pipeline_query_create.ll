; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_pipeline_query_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_pipeline_query_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32* }
%struct.wined3d_parent_ops = type { i32 }
%struct.wined3d_query = type { i32 }
%struct.wined3d_pipeline_statistics_query = type { %struct.wined3d_query, i32 }

@.str = private unnamed_addr constant [58 x i8] c"device %p, type %#x, parent %p, parent_ops %p, query %p.\0A\00", align 1
@ARB_PIPELINE_STATISTICS_QUERY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"OpenGL implementation does not support pipeline statistics queries.\0A\00", align 1
@WINED3DERR_NOTAVAILABLE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@pipeline_query_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Created query %p.\0A\00", align 1
@WINED3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_device*, i32, i8*, %struct.wined3d_parent_ops*, %struct.wined3d_query**)* @wined3d_pipeline_query_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_pipeline_query_create(%struct.wined3d_device* %0, i32 %1, i8* %2, %struct.wined3d_parent_ops* %3, %struct.wined3d_query** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wined3d_parent_ops*, align 8
  %11 = alloca %struct.wined3d_query**, align 8
  %12 = alloca %struct.wined3d_gl_info*, align 8
  %13 = alloca %struct.wined3d_pipeline_statistics_query*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.wined3d_parent_ops* %3, %struct.wined3d_parent_ops** %10, align 8
  store %struct.wined3d_query** %4, %struct.wined3d_query*** %11, align 8
  %14 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %15 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.wined3d_gl_info* %17, %struct.wined3d_gl_info** %12, align 8
  %18 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.wined3d_parent_ops*, %struct.wined3d_parent_ops** %10, align 8
  %22 = load %struct.wined3d_query**, %struct.wined3d_query*** %11, align 8
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.wined3d_device* %18, i32 %19, i8* %20, %struct.wined3d_parent_ops* %21, %struct.wined3d_query** %22)
  %24 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  %25 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @ARB_PIPELINE_STATISTICS_QUERY, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %5
  %32 = call i32 @WARN(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @WINED3DERR_NOTAVAILABLE, align 4
  store i32 %33, i32* %6, align 4
  br label %55

34:                                               ; preds = %5
  %35 = call %struct.wined3d_pipeline_statistics_query* @heap_alloc_zero(i32 8)
  store %struct.wined3d_pipeline_statistics_query* %35, %struct.wined3d_pipeline_statistics_query** %13, align 8
  %36 = icmp ne %struct.wined3d_pipeline_statistics_query* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %38, i32* %6, align 4
  br label %55

39:                                               ; preds = %34
  %40 = load %struct.wined3d_pipeline_statistics_query*, %struct.wined3d_pipeline_statistics_query** %13, align 8
  %41 = getelementptr inbounds %struct.wined3d_pipeline_statistics_query, %struct.wined3d_pipeline_statistics_query* %40, i32 0, i32 0
  %42 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.wined3d_pipeline_statistics_query*, %struct.wined3d_pipeline_statistics_query** %13, align 8
  %45 = getelementptr inbounds %struct.wined3d_pipeline_statistics_query, %struct.wined3d_pipeline_statistics_query* %44, i32 0, i32 1
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.wined3d_parent_ops*, %struct.wined3d_parent_ops** %10, align 8
  %48 = call i32 @wined3d_query_init(%struct.wined3d_query* %41, %struct.wined3d_device* %42, i32 %43, i32* %45, i32 4, i32* @pipeline_query_ops, i8* %46, %struct.wined3d_parent_ops* %47)
  %49 = load %struct.wined3d_pipeline_statistics_query*, %struct.wined3d_pipeline_statistics_query** %13, align 8
  %50 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %struct.wined3d_pipeline_statistics_query* %49)
  %51 = load %struct.wined3d_pipeline_statistics_query*, %struct.wined3d_pipeline_statistics_query** %13, align 8
  %52 = getelementptr inbounds %struct.wined3d_pipeline_statistics_query, %struct.wined3d_pipeline_statistics_query* %51, i32 0, i32 0
  %53 = load %struct.wined3d_query**, %struct.wined3d_query*** %11, align 8
  store %struct.wined3d_query* %52, %struct.wined3d_query** %53, align 8
  %54 = load i32, i32* @WINED3D_OK, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %39, %37, %31
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local %struct.wined3d_pipeline_statistics_query* @heap_alloc_zero(i32) #1

declare dso_local i32 @wined3d_query_init(%struct.wined3d_query*, %struct.wined3d_device*, i32, i32*, i32, i32*, i8*, %struct.wined3d_parent_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
