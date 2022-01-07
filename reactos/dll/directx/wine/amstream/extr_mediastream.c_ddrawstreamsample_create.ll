; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/amstream/extr_mediastream.c_ddrawstreamsample_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/amstream/extr_mediastream.c_ddrawstreamsample_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__, i32, i32*, i32* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@DirectDrawStreamSample_Vtbl = common dso_local global i32 0, align 4
@DDSD_CAPS = common dso_local global i32 0, align 4
@DDSD_HEIGHT = common dso_local global i32 0, align 4
@DDSD_WIDTH = common dso_local global i32 0, align 4
@DDSD_PIXELFORMAT = common dso_local global i32 0, align 4
@DDPF_RGB = common dso_local global i32 0, align 4
@DDSCAPS_SYSTEMMEMORY = common dso_local global i32 0, align 4
@DDSCAPS_OFFSCREENPLAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to create surface, 0x%08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_15__**)* @ddrawstreamsample_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddrawstreamsample_create(i32* %0, i32* %1, i32* %2, %struct.TYPE_15__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__**, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__** %3, %struct.TYPE_15__*** %9, align 8
  %15 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__** %15)
  %17 = call i32 (...) @GetProcessHeap()
  %18 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %19 = call %struct.TYPE_14__* @HeapAlloc(i32 %17, i32 %18, i32 40)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %10, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %23, i32* %5, align 4
  br label %145

24:                                               ; preds = %4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  store i32* @DirectDrawStreamSample_Vtbl, i32** %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 4
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @IMediaStream_AddRef(i32* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %24
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @IDirectDrawSurface_AddRef(i32* %43)
  br label %106

45:                                               ; preds = %24
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @IDirectDrawMediaStream_GetDirectDraw(i32* %46, i32** %13)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @FAILED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = call i32 @IDirectDrawStreamSample_Release(%struct.TYPE_15__* %53)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %145

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i32 80, i32* %57, align 8
  %58 = load i32, i32* @DDSD_CAPS, align 4
  %59 = load i32, i32* @DDSD_HEIGHT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @DDSD_WIDTH, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @DDSD_PIXELFORMAT, align 4
  %64 = or i32 %62, %63
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  store i32 100, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 3
  store i32 100, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 40, i32* %69, align 8
  %70 = load i32, i32* @DDPF_RGB, align 4
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  store i32 32, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  store i32 16711680, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  store i32 65280, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 7
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 4
  store i32 255, i32* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 5
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @DDSCAPS_SYSTEMMEMORY, align 4
  %84 = load i32, i32* @DDSCAPS_OFFSCREENPLAIN, align 4
  %85 = or i32 %83, %84
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 5
  store i32* null, i32** %88, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 3
  %92 = call i32 @IDirectDraw_CreateSurface(i32* %89, %struct.TYPE_16__* %12, i32** %91, i32* null)
  store i32 %92, i32* %11, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @IDirectDraw_Release(i32* %93)
  %95 = load i32, i32* %11, align 4
  %96 = call i64 @FAILED(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %56
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = call i32 @IDirectDrawStreamSample_Release(%struct.TYPE_15__* %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %5, align 4
  br label %145

105:                                              ; preds = %56
  br label %106

106:                                              ; preds = %105, %39
  %107 = load i32*, i32** %8, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  br label %140

114:                                              ; preds = %106
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %139

119:                                              ; preds = %114
  %120 = bitcast %struct.TYPE_16__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %120, i8 0, i64 80, i1 false)
  %121 = bitcast i8* %120 to %struct.TYPE_16__*
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  store i32 80, i32* %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @IDirectDrawSurface_GetSurfaceDesc(i32* %125, %struct.TYPE_16__* %14)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @S_OK, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %119
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @SetRect(i32* %132, i32 0, i32 0, i32 %134, i32 %136)
  br label %138

138:                                              ; preds = %130, %119
  br label %139

139:                                              ; preds = %138, %114
  br label %140

140:                                              ; preds = %139, %109
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  store %struct.TYPE_15__* %142, %struct.TYPE_15__** %143, align 8
  %144 = load i32, i32* @S_OK, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %140, %98, %51, %22
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_15__**) #1

declare dso_local %struct.TYPE_14__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IMediaStream_AddRef(i32*) #1

declare dso_local i32 @IDirectDrawSurface_AddRef(i32*) #1

declare dso_local i32 @IDirectDrawMediaStream_GetDirectDraw(i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirectDrawStreamSample_Release(%struct.TYPE_15__*) #1

declare dso_local i32 @IDirectDraw_CreateSurface(i32*, %struct.TYPE_16__*, i32**, i32*) #1

declare dso_local i32 @IDirectDraw_Release(i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @IDirectDrawSurface_GetSurfaceDesc(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @SetRect(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
