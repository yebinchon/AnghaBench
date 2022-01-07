; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_resource_wait_idle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_resource_wait_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_resource = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wined3d_cs* }
%struct.wined3d_cs = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_resource*)* @wined3d_resource_wait_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_resource_wait_idle(%struct.wined3d_resource* %0) #0 {
  %2 = alloca %struct.wined3d_resource*, align 8
  %3 = alloca %struct.wined3d_cs*, align 8
  store %struct.wined3d_resource* %0, %struct.wined3d_resource** %2, align 8
  %4 = load %struct.wined3d_resource*, %struct.wined3d_resource** %2, align 8
  %5 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  store %struct.wined3d_cs* %8, %struct.wined3d_cs** %3, align 8
  %9 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %15 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 (...) @GetCurrentThreadId()
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %1
  br label %28

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %26, %20
  %22 = load %struct.wined3d_resource*, %struct.wined3d_resource** %2, align 8
  %23 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %22, i32 0, i32 0
  %24 = call i64 @InterlockedCompareExchange(i32* %23, i32 0, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 (...) @wined3d_pause()
  br label %21

28:                                               ; preds = %19, %21
  ret void
}

declare dso_local i64 @GetCurrentThreadId(...) #1

declare dso_local i64 @InterlockedCompareExchange(i32*, i32, i32) #1

declare dso_local i32 @wined3d_pause(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
