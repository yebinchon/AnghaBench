; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_swapchain.c_swapchain_gdi_frontbuffer_updated.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_swapchain.c_swapchain_gdi_frontbuffer_updated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_swapchain = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__, i32, i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.wined3d_swapchain* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.wined3d_surface = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__, i32, i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_23__ = type { i64, i64, i32, i32 }
%struct.TYPE_22__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"swapchain %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Trying to blit a mapped surface.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Copying surface %p to screen.\0A\00", align 1
@DCX_CLIPSIBLINGS = common dso_local global i32 0, align 4
@DCX_CACHE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"offset %s.\0A\00", align 1
@SRCCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_swapchain*)* @swapchain_gdi_frontbuffer_updated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapchain_gdi_frontbuffer_updated(%struct.wined3d_swapchain* %0) #0 {
  %2 = alloca %struct.wined3d_swapchain*, align 8
  %3 = alloca %struct.wined3d_surface*, align 8
  %4 = alloca %struct.TYPE_23__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__, align 8
  %8 = alloca i32, align 4
  store %struct.wined3d_swapchain* %0, %struct.wined3d_swapchain** %2, align 8
  %9 = bitcast %struct.TYPE_23__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.wined3d_swapchain* %10)
  %12 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %13 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %12, i32 0, i32 1
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %19, align 8
  %21 = bitcast %struct.wined3d_swapchain* %20 to %struct.wined3d_surface*
  store %struct.wined3d_surface* %21, %struct.wined3d_surface** %3, align 8
  %22 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %23 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %28 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.wined3d_surface*, %struct.wined3d_surface** %3, align 8
  %31 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wined3d_palette_apply_to_dc(i64 %29, i32 %32)
  br label %34

34:                                               ; preds = %26, %1
  %35 = load %struct.wined3d_surface*, %struct.wined3d_surface** %3, align 8
  %36 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %35, i32 0, i32 5
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %34
  %45 = load %struct.wined3d_surface*, %struct.wined3d_surface** %3, align 8
  %46 = bitcast %struct.wined3d_surface* %45 to %struct.wined3d_swapchain*
  %47 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.wined3d_swapchain* %46)
  %48 = load %struct.wined3d_surface*, %struct.wined3d_surface** %3, align 8
  %49 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  %51 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %52 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @DCX_CLIPSIBLINGS, align 4
  %56 = load i32, i32* @DCX_CACHE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @GetDCEx(i32 %54, i32 0, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %60 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %44
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ClientToScreen(i32 %65, %struct.TYPE_23__* %4)
  br label %67

67:                                               ; preds = %64, %44
  %68 = call %struct.wined3d_swapchain* @wine_dbgstr_point(%struct.TYPE_23__* %4)
  %69 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.wined3d_swapchain* %68)
  %70 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %71 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %70, i32 0, i32 1
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %77 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %76, i32 0, i32 1
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @SetRect(%struct.TYPE_22__* %7, i32 0, i32 0, i32 %75, i32 %81)
  %83 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %84 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %83, i32 0, i32 0
  %85 = call i32 @IntersectRect(%struct.TYPE_22__* %7, %struct.TYPE_22__* %7, i32* %84)
  %86 = load i32, i32* %6, align 4
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %88, %90
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %93, %95
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %98, %100
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %103, %105
  %107 = load i32, i32* %5, align 4
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* @SRCCOPY, align 4
  %113 = call i32 @BitBlt(i32 %86, i64 %91, i64 %96, i64 %101, i64 %106, i32 %107, i64 %109, i64 %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @ReleaseDC(i32 %114, i32 %115)
  %117 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %118 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %117, i32 0, i32 0
  %119 = call i32 @SetRectEmpty(i32* %118)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_swapchain*) #2

declare dso_local i32 @wined3d_palette_apply_to_dc(i64, i32) #2

declare dso_local i32 @ERR(i8*) #2

declare dso_local i32 @GetDCEx(i32, i32, i32) #2

declare dso_local i32 @ClientToScreen(i32, %struct.TYPE_23__*) #2

declare dso_local %struct.wined3d_swapchain* @wine_dbgstr_point(%struct.TYPE_23__*) #2

declare dso_local i32 @SetRect(%struct.TYPE_22__*, i32, i32, i32, i32) #2

declare dso_local i32 @IntersectRect(%struct.TYPE_22__*, %struct.TYPE_22__*, i32*) #2

declare dso_local i32 @BitBlt(i32, i64, i64, i64, i64, i32, i64, i64, i32) #2

declare dso_local i32 @ReleaseDC(i32, i32) #2

declare dso_local i32 @SetRectEmpty(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
