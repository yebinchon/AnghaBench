; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_event_query_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_event_query_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_parent_ops = type { i32 }
%struct.wined3d_query = type { i32 }
%struct.wined3d_event_query = type { %struct.wined3d_query, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"device %p, type %#x, parent %p, parent_ops %p, query %p.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Event queries not supported.\0A\00", align 1
@event_query_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Created query %p.\0A\00", align 1
@WINED3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_device*, i32, i8*, %struct.wined3d_parent_ops*, %struct.wined3d_query**)* @wined3d_event_query_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_event_query_create(%struct.wined3d_device* %0, i32 %1, i8* %2, %struct.wined3d_parent_ops* %3, %struct.wined3d_query** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wined3d_parent_ops*, align 8
  %11 = alloca %struct.wined3d_query**, align 8
  %12 = alloca %struct.wined3d_gl_info*, align 8
  %13 = alloca %struct.wined3d_event_query*, align 8
  %14 = alloca i32, align 4
  store %struct.wined3d_device* %0, %struct.wined3d_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.wined3d_parent_ops* %3, %struct.wined3d_parent_ops** %10, align 8
  store %struct.wined3d_query** %4, %struct.wined3d_query*** %11, align 8
  %15 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %16 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.wined3d_gl_info* %18, %struct.wined3d_gl_info** %12, align 8
  %19 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.wined3d_parent_ops*, %struct.wined3d_parent_ops** %10, align 8
  %23 = load %struct.wined3d_query**, %struct.wined3d_query*** %11, align 8
  %24 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.wined3d_device* %19, i32 %20, i8* %21, %struct.wined3d_parent_ops* %22, %struct.wined3d_query** %23)
  %25 = call %struct.wined3d_event_query* @heap_alloc_zero(i32 12)
  store %struct.wined3d_event_query* %25, %struct.wined3d_event_query** %13, align 8
  %26 = icmp ne %struct.wined3d_event_query* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %28, i32* %6, align 4
  br label %57

29:                                               ; preds = %5
  %30 = load %struct.wined3d_event_query*, %struct.wined3d_event_query** %13, align 8
  %31 = getelementptr inbounds %struct.wined3d_event_query, %struct.wined3d_event_query* %30, i32 0, i32 2
  %32 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  %33 = call i32 @wined3d_fence_init(i32* %31, %struct.wined3d_gl_info* %32)
  store i32 %33, i32* %14, align 4
  %34 = call i64 @FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.wined3d_event_query*, %struct.wined3d_event_query** %13, align 8
  %39 = call i32 @heap_free(%struct.wined3d_event_query* %38)
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  br label %57

41:                                               ; preds = %29
  %42 = load %struct.wined3d_event_query*, %struct.wined3d_event_query** %13, align 8
  %43 = getelementptr inbounds %struct.wined3d_event_query, %struct.wined3d_event_query* %42, i32 0, i32 0
  %44 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.wined3d_event_query*, %struct.wined3d_event_query** %13, align 8
  %47 = getelementptr inbounds %struct.wined3d_event_query, %struct.wined3d_event_query* %46, i32 0, i32 1
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.wined3d_parent_ops*, %struct.wined3d_parent_ops** %10, align 8
  %50 = call i32 @wined3d_query_init(%struct.wined3d_query* %43, %struct.wined3d_device* %44, i32 %45, i32* %47, i32 4, i32* @event_query_ops, i8* %48, %struct.wined3d_parent_ops* %49)
  %51 = load %struct.wined3d_event_query*, %struct.wined3d_event_query** %13, align 8
  %52 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %struct.wined3d_event_query* %51)
  %53 = load %struct.wined3d_event_query*, %struct.wined3d_event_query** %13, align 8
  %54 = getelementptr inbounds %struct.wined3d_event_query, %struct.wined3d_event_query* %53, i32 0, i32 0
  %55 = load %struct.wined3d_query**, %struct.wined3d_query*** %11, align 8
  store %struct.wined3d_query* %54, %struct.wined3d_query** %55, align 8
  %56 = load i32, i32* @WINED3D_OK, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %41, %36, %27
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.wined3d_event_query* @heap_alloc_zero(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wined3d_fence_init(i32*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @heap_free(%struct.wined3d_event_query*) #1

declare dso_local i32 @wined3d_query_init(%struct.wined3d_query*, %struct.wined3d_device*, i32, i32*, i32, i32*, i8*, %struct.wined3d_parent_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
