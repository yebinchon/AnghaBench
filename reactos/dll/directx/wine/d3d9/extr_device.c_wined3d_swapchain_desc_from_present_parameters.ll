; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_device.c_wined3d_swapchain_desc_from_present_parameters.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_device.c_wined3d_swapchain_desc_from_present_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_swapchain_desc = type { i32, i64, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@D3DSWAPEFFECT_FLIPEX = common dso_local global i64 0, align 8
@D3DSWAPEFFECT_COPY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Invalid swap effect %u passed.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid backbuffer count %u.\0A\00", align 1
@WINED3DUSAGE_RENDERTARGET = common dso_local global i32 0, align 4
@D3DPRESENTFLAGS_MASK = common dso_local global i32 0, align 4
@WINED3D_SWAPCHAIN_ALLOW_MODE_SWITCH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Unhandled flags %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wined3d_swapchain_desc*, %struct.TYPE_3__*, i64)* @wined3d_swapchain_desc_from_present_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wined3d_swapchain_desc_from_present_parameters(%struct.wined3d_swapchain_desc* %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.wined3d_swapchain_desc*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.wined3d_swapchain_desc* %0, %struct.wined3d_swapchain_desc** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i64, i64* @D3DSWAPEFFECT_FLIPEX, align 8
  br label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @D3DSWAPEFFECT_COPY, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i64 [ %13, %12 ], [ %15, %14 ]
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 30, i32 3
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27, %16
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %4, align 8
  br label %167

40:                                               ; preds = %27
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @D3DSWAPEFFECT_COPY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 1
  br i1 %56, label %57, label %64

57:                                               ; preds = %52, %40
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* @FALSE, align 8
  store i64 %63, i64* %4, align 8
  br label %167

64:                                               ; preds = %52, %46
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 13
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %69 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %68, i32 0, i32 15
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %74 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %73, i32 0, i32 14
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @wined3dformat_from_d3dformat(i32 %77)
  %79 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %80 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %79, i32 0, i32 13
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @max(i32 1, i32 %84)
  %86 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %87 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %86, i32 0, i32 12
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @WINED3DUSAGE_RENDERTARGET, align 4
  %89 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %90 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %89, i32 0, i32 11
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %95 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %100 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %99, i32 0, i32 9
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @wined3dswapeffect_from_d3dswapeffect(i64 %103)
  %105 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %106 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %111 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %116 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %121 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @wined3dformat_from_d3dformat(i32 %124)
  %126 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %127 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @D3DPRESENTFLAGS_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @WINED3D_SWAPCHAIN_ALLOW_MODE_SWITCH, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %136 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %141 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %146 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load i64, i64* @TRUE, align 8
  %148 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %5, align 8
  %149 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @D3DPRESENTFLAGS_MASK, align 4
  %154 = xor i32 %153, -1
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %64
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @D3DPRESENTFLAGS_MASK, align 4
  %162 = xor i32 %161, -1
  %163 = and i32 %160, %162
  %164 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %157, %64
  %166 = load i64, i64* @TRUE, align 8
  store i64 %166, i64* %4, align 8
  br label %167

167:                                              ; preds = %165, %57, %33
  %168 = load i64, i64* %4, align 8
  ret i64 %168
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
