; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_device.c_wined3d_swapchain_desc_from_present_parameters.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_device.c_wined3d_swapchain_desc_from_present_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_swapchain_desc = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@D3DSWAPEFFECT_COPY_VSYNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Invalid swap effect %u passed.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@D3DSWAPEFFECT_COPY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid backbuffer count %u.\0A\00", align 1
@WINED3DUSAGE_RENDERTARGET = common dso_local global i32 0, align 4
@D3DPRESENTFLAGS_MASK = common dso_local global i32 0, align 4
@WINED3D_SWAPCHAIN_ALLOW_MODE_SWITCH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Unhandled flags %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_swapchain_desc*, %struct.TYPE_3__*)* @wined3d_swapchain_desc_from_present_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_swapchain_desc_from_present_parameters(%struct.wined3d_swapchain_desc* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_swapchain_desc*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.wined3d_swapchain_desc* %0, %struct.wined3d_swapchain_desc** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @D3DSWAPEFFECT_COPY_VSYNC, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10, %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %150

23:                                               ; preds = %10
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 3
  br i1 %27, label %45, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @D3DSWAPEFFECT_COPY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @D3DSWAPEFFECT_COPY_VSYNC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34, %28
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %51

45:                                               ; preds = %40, %23
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  br label %150

51:                                               ; preds = %40, %34
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 12
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %56 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %55, i32 0, i32 15
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %61 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %60, i32 0, i32 14
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @wined3dformat_from_d3dformat(i32 %64)
  %66 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %67 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %66, i32 0, i32 13
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @max(i32 1, i32 %70)
  %72 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %73 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %72, i32 0, i32 12
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @WINED3DUSAGE_RENDERTARGET, align 4
  %75 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %76 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %75, i32 0, i32 11
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %81 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 8
  %82 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %83 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %82, i32 0, i32 9
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @wined3dswapeffect_from_d3dswapeffect(i64 %86)
  %88 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %89 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %94 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %99 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %104 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @wined3dformat_from_d3dformat(i32 %107)
  %109 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %110 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @D3DPRESENTFLAGS_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @WINED3D_SWAPCHAIN_ALLOW_MODE_SWITCH, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %119 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %124 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %129 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @TRUE, align 4
  %131 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %132 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @D3DPRESENTFLAGS_MASK, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %51
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @D3DPRESENTFLAGS_MASK, align 4
  %145 = xor i32 %144, -1
  %146 = and i32 %143, %145
  %147 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %140, %51
  %149 = load i32, i32* @TRUE, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %45, %16
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i8* @wined3dformat_from_d3dformat(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @wined3dswapeffect_from_d3dswapeffect(i64) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
