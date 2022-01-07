; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_statistics_query_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_statistics_query_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_query_data_so_statistics = type { i32, i32 }
%struct.wined3d_device = type { i32 }
%struct.wined3d_parent_ops = type { i32 }
%struct.wined3d_query = type { i32 }

@wined3d_statistics_query_create.statistics = internal constant %struct.wined3d_query_data_so_statistics { i32 1, i32 1 }, align 4
@.str = private unnamed_addr constant [43 x i8] c"device %p, type %#x, parent %p, query %p.\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@statistics_query_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Created query %p.\0A\00", align 1
@WINED3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_device*, i32, i8*, %struct.wined3d_parent_ops*, %struct.wined3d_query**)* @wined3d_statistics_query_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_statistics_query_create(%struct.wined3d_device* %0, i32 %1, i8* %2, %struct.wined3d_parent_ops* %3, %struct.wined3d_query** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wined3d_parent_ops*, align 8
  %11 = alloca %struct.wined3d_query**, align 8
  %12 = alloca %struct.wined3d_query*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.wined3d_parent_ops* %3, %struct.wined3d_parent_ops** %10, align 8
  store %struct.wined3d_query** %4, %struct.wined3d_query*** %11, align 8
  %13 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.wined3d_query**, %struct.wined3d_query*** %11, align 8
  %17 = call i32 @FIXME(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.wined3d_device* %13, i32 %14, i8* %15, %struct.wined3d_query** %16)
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %20 = call %struct.wined3d_query* @HeapAlloc(i32 %18, i32 %19, i32 4)
  store %struct.wined3d_query* %20, %struct.wined3d_query** %12, align 8
  %21 = icmp ne %struct.wined3d_query* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %23, i32* %6, align 4
  br label %36

24:                                               ; preds = %5
  %25 = load %struct.wined3d_query*, %struct.wined3d_query** %12, align 8
  %26 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.wined3d_parent_ops*, %struct.wined3d_parent_ops** %10, align 8
  %30 = call i32 @wined3d_query_init(%struct.wined3d_query* %25, %struct.wined3d_device* %26, i32 %27, %struct.wined3d_query_data_so_statistics* @wined3d_statistics_query_create.statistics, i32 8, i32* @statistics_query_ops, i8* %28, %struct.wined3d_parent_ops* %29)
  %31 = load %struct.wined3d_query*, %struct.wined3d_query** %12, align 8
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_query* %31)
  %33 = load %struct.wined3d_query*, %struct.wined3d_query** %12, align 8
  %34 = load %struct.wined3d_query**, %struct.wined3d_query*** %11, align 8
  store %struct.wined3d_query* %33, %struct.wined3d_query** %34, align 8
  %35 = load i32, i32* @WINED3D_OK, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %24, %22
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @FIXME(i8*, %struct.wined3d_device*, i32, i8*, %struct.wined3d_query**) #1

declare dso_local %struct.wined3d_query* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @wined3d_query_init(%struct.wined3d_query*, %struct.wined3d_device*, i32, %struct.wined3d_query_data_so_statistics*, i32, i32*, i8*, %struct.wined3d_parent_ops*) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
