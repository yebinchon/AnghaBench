; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_wait_event.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_wait_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32, i32, i32* }

@TRUE = common dso_local global i32 0, align 4
@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i64 0, align 8
@WINED3D_CS_QUEUE_MAP = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*)* @wined3d_cs_wait_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_wait_event(%struct.wined3d_cs* %0) #0 {
  %2 = alloca %struct.wined3d_cs*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %2, align 8
  %3 = load %struct.wined3d_cs*, %struct.wined3d_cs** %2, align 8
  %4 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %3, i32 0, i32 1
  %5 = load i32, i32* @TRUE, align 4
  %6 = call i32 @InterlockedExchange(i32* %4, i32 %5)
  %7 = load %struct.wined3d_cs*, %struct.wined3d_cs** %2, align 8
  %8 = load %struct.wined3d_cs*, %struct.wined3d_cs** %2, align 8
  %9 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @WINED3D_CS_QUEUE_DEFAULT, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = call i64 @wined3d_cs_queue_is_empty(%struct.wined3d_cs* %7, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.wined3d_cs*, %struct.wined3d_cs** %2, align 8
  %17 = load %struct.wined3d_cs*, %struct.wined3d_cs** %2, align 8
  %18 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @WINED3D_CS_QUEUE_MAP, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i64 @wined3d_cs_queue_is_empty(%struct.wined3d_cs* %16, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.wined3d_cs*, %struct.wined3d_cs** %2, align 8
  %26 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %25, i32 0, i32 1
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i64 @InterlockedCompareExchange(i32* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %38

32:                                               ; preds = %24, %15
  %33 = load %struct.wined3d_cs*, %struct.wined3d_cs** %2, align 8
  %34 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @INFINITE, align 4
  %37 = call i32 @WaitForSingleObject(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @InterlockedExchange(i32*, i32) #1

declare dso_local i64 @wined3d_cs_queue_is_empty(%struct.wined3d_cs*, i32*) #1

declare dso_local i64 @InterlockedCompareExchange(i32*, i32, i32) #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
