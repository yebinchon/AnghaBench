; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_resource_released.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_resource_released.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { i64, %struct.wined3d_context**, i32 }
%struct.wined3d_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.wined3d_texture* }
%struct.wined3d_texture = type { i32 }
%struct.wined3d_resource = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_resource_released(%struct.wined3d_device* %0, %struct.wined3d_resource* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_device*, align 8
  %5 = alloca %struct.wined3d_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_texture*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wined3d_context*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %4, align 8
  store %struct.wined3d_resource* %1, %struct.wined3d_resource** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %11 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %52

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %51 [
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %15, %15
  %18 = load %struct.wined3d_resource*, %struct.wined3d_resource** %5, align 8
  %19 = call %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource* %18)
  store %struct.wined3d_texture* %19, %struct.wined3d_texture** %7, align 8
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %47, %17
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %23 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %28 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %27, i32 0, i32 1
  %29 = load %struct.wined3d_context**, %struct.wined3d_context*** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.wined3d_context*, %struct.wined3d_context** %29, i64 %30
  %32 = load %struct.wined3d_context*, %struct.wined3d_context** %31, align 8
  store %struct.wined3d_context* %32, %struct.wined3d_context** %9, align 8
  %33 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %34 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.wined3d_texture*, %struct.wined3d_texture** %35, align 8
  %37 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %38 = icmp eq %struct.wined3d_texture* %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %41 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store %struct.wined3d_texture* null, %struct.wined3d_texture** %42, align 8
  %43 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %44 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %39, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %20

50:                                               ; preds = %20
  br label %52

51:                                               ; preds = %15
  br label %52

52:                                               ; preds = %14, %51, %50
  ret void
}

declare dso_local %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
