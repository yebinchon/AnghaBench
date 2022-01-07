; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_present.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_present* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_present = type { i8*, i8*, i32, i32, %struct.wined3d_swapchain*, i32, i32 }
%struct.wined3d_swapchain = type { %struct.TYPE_7__**, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_present(%struct.wined3d_cs* %0, %struct.wined3d_swapchain* %1, i32* %2, i32* %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.wined3d_cs*, align 8
  %9 = alloca %struct.wined3d_swapchain*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.wined3d_cs_present*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %8, align 8
  store %struct.wined3d_swapchain* %1, %struct.wined3d_swapchain** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load %struct.wined3d_cs*, %struct.wined3d_cs** %8, align 8
  %19 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.wined3d_cs_present* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_present* (%struct.wined3d_cs*, i32, i32)** %21, align 8
  %23 = load %struct.wined3d_cs*, %struct.wined3d_cs** %8, align 8
  %24 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %25 = call %struct.wined3d_cs_present* %22(%struct.wined3d_cs* %23, i32 40, i32 %24)
  store %struct.wined3d_cs_present* %25, %struct.wined3d_cs_present** %15, align 8
  %26 = load i32, i32* @WINED3D_CS_OP_PRESENT, align 4
  %27 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %15, align 8
  %28 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %15, align 8
  %31 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %9, align 8
  %33 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %15, align 8
  %34 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %33, i32 0, i32 4
  store %struct.wined3d_swapchain* %32, %struct.wined3d_swapchain** %34, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %15, align 8
  %38 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %15, align 8
  %42 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %15, align 8
  %45 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load %struct.wined3d_cs_present*, %struct.wined3d_cs_present** %15, align 8
  %48 = getelementptr inbounds %struct.wined3d_cs_present, %struct.wined3d_cs_present* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.wined3d_cs*, %struct.wined3d_cs** %8, align 8
  %50 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %49, i32 0, i32 0
  %51 = call i32 @InterlockedIncrement(i32* %50)
  store i32 %51, i32* %17, align 4
  %52 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %9, align 8
  %53 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i32 @wined3d_resource_acquire(i32* %55)
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %74, %7
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %9, align 8
  %60 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %58, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %9, align 8
  %66 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %66, align 8
  %68 = load i32, i32* %16, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %67, i64 %69
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 @wined3d_resource_acquire(i32* %72)
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %16, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %16, align 4
  br label %57

77:                                               ; preds = %57
  %78 = load %struct.wined3d_cs*, %struct.wined3d_cs** %8, align 8
  %79 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %81, align 8
  %83 = load %struct.wined3d_cs*, %struct.wined3d_cs** %8, align 8
  %84 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %85 = call i32 %82(%struct.wined3d_cs* %83, i32 %84)
  br label %86

86:                                               ; preds = %89, %77
  %87 = load i32, i32* %17, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = call i32 (...) @wined3d_pause()
  %91 = load %struct.wined3d_cs*, %struct.wined3d_cs** %8, align 8
  %92 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %91, i32 0, i32 0
  %93 = call i32 @InterlockedCompareExchange(i32* %92, i32 0, i32 0)
  store i32 %93, i32* %17, align 4
  br label %86

94:                                               ; preds = %86
  ret void
}

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local i32 @wined3d_resource_acquire(i32*) #1

declare dso_local i32 @wined3d_pause(...) #1

declare dso_local i32 @InterlockedCompareExchange(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
