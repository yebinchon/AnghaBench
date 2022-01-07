; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_query_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_query_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_query = type { i32, i32, i32, %struct.wined3d_query_ops*, i32, i8*, i32, %struct.wined3d_device*, %struct.wined3d_parent_ops*, i8* }
%struct.wined3d_device = type { i32 }
%struct.wined3d_query_ops = type { i32 }
%struct.wined3d_parent_ops = type { i32 }

@QUERY_CREATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_query*, %struct.wined3d_device*, i32, i8*, i32, %struct.wined3d_query_ops*, i8*, %struct.wined3d_parent_ops*)* @wined3d_query_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_query_init(%struct.wined3d_query* %0, %struct.wined3d_device* %1, i32 %2, i8* %3, i32 %4, %struct.wined3d_query_ops* %5, i8* %6, %struct.wined3d_parent_ops* %7) #0 {
  %9 = alloca %struct.wined3d_query*, align 8
  %10 = alloca %struct.wined3d_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wined3d_query_ops*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.wined3d_parent_ops*, align 8
  store %struct.wined3d_query* %0, %struct.wined3d_query** %9, align 8
  store %struct.wined3d_device* %1, %struct.wined3d_device** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.wined3d_query_ops* %5, %struct.wined3d_query_ops** %14, align 8
  store i8* %6, i8** %15, align 8
  store %struct.wined3d_parent_ops* %7, %struct.wined3d_parent_ops** %16, align 8
  %17 = load %struct.wined3d_query*, %struct.wined3d_query** %9, align 8
  %18 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i8*, i8** %15, align 8
  %20 = load %struct.wined3d_query*, %struct.wined3d_query** %9, align 8
  %21 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %20, i32 0, i32 9
  store i8* %19, i8** %21, align 8
  %22 = load %struct.wined3d_parent_ops*, %struct.wined3d_parent_ops** %16, align 8
  %23 = load %struct.wined3d_query*, %struct.wined3d_query** %9, align 8
  %24 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %23, i32 0, i32 8
  store %struct.wined3d_parent_ops* %22, %struct.wined3d_parent_ops** %24, align 8
  %25 = load %struct.wined3d_device*, %struct.wined3d_device** %10, align 8
  %26 = load %struct.wined3d_query*, %struct.wined3d_query** %9, align 8
  %27 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %26, i32 0, i32 7
  store %struct.wined3d_device* %25, %struct.wined3d_device** %27, align 8
  %28 = load i32, i32* @QUERY_CREATED, align 4
  %29 = load %struct.wined3d_query*, %struct.wined3d_query** %9, align 8
  %30 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.wined3d_query*, %struct.wined3d_query** %9, align 8
  %33 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.wined3d_query*, %struct.wined3d_query** %9, align 8
  %36 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.wined3d_query*, %struct.wined3d_query** %9, align 8
  %39 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.wined3d_query_ops*, %struct.wined3d_query_ops** %14, align 8
  %41 = load %struct.wined3d_query*, %struct.wined3d_query** %9, align 8
  %42 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %41, i32 0, i32 3
  store %struct.wined3d_query_ops* %40, %struct.wined3d_query_ops** %42, align 8
  %43 = load %struct.wined3d_query*, %struct.wined3d_query** %9, align 8
  %44 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %43, i32 0, i32 2
  %45 = call i32 @list_init(i32* %44)
  ret void
}

declare dso_local i32 @list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
