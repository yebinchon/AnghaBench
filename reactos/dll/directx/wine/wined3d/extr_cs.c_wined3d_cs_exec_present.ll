; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_present.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32 }
%struct.wined3d_cs_present = type { i64, i32, i32, i32, i32, %struct.wined3d_swapchain* }
%struct.wined3d_swapchain = type { %struct.TYPE_8__**, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.wined3d_swapchain*, i32*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_present(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_present*, align 8
  %6 = alloca %struct.wined3d_swapchain*, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wined3d_cs_present*
  store %struct.wined3d_cs_present* %9, %struct.wined3d_cs_present** %5, align 8
  %10 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %10, i32 0, i32 5
  %12 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %11, align 8
  store %struct.wined3d_swapchain* %12, %struct.wined3d_swapchain** %6, align 8
  %13 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %6, align 8
  %14 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %5, align 8
  %15 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wined3d_swapchain_set_window(%struct.wined3d_swapchain* %13, i32 %16)
  %18 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %2
  %23 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %6, align 8
  %24 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %5, align 8
  %28 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %5, align 8
  %33 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %6, align 8
  %36 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %6, align 8
  %39 = call i32 @swapchain_update_swap_interval(%struct.wined3d_swapchain* %38)
  br label %40

40:                                               ; preds = %31, %22, %2
  %41 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %6, align 8
  %42 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (%struct.wined3d_swapchain*, i32*, i32*, i32)*, i32 (%struct.wined3d_swapchain*, i32*, i32*, i32)** %44, align 8
  %46 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %6, align 8
  %47 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %5, align 8
  %48 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %47, i32 0, i32 3
  %49 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %5, align 8
  %50 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %49, i32 0, i32 2
  %51 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %5, align 8
  %52 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %45(%struct.wined3d_swapchain* %46, i32* %48, i32* %50, i32 %53)
  %55 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %6, align 8
  %56 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @wined3d_resource_release(i32* %58)
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %77, %40
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %6, align 8
  %63 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ult i32 %61, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %60
  %68 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %6, align 8
  %69 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %70, i64 %72
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @wined3d_resource_release(i32* %75)
  br label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %60

80:                                               ; preds = %60
  %81 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %82 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %81, i32 0, i32 0
  %83 = call i32 @InterlockedDecrement(i32* %82)
  ret void
}

declare dso_local i32 @wined3d_swapchain_set_window(%struct.wined3d_swapchain*, i32) #1

declare dso_local i32 @swapchain_update_swap_interval(%struct.wined3d_swapchain*) #1

declare dso_local i32 @wined3d_resource_release(i32*) #1

declare dso_local i32 @InterlockedDecrement(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
