; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_device.c_InitD3D9BaseDevice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_device.c_InitD3D9BaseDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i64, i32, i64*, i32*, i32*, %struct.TYPE_10__*, i32*, i32, i32, %struct.TYPE_13__*, i32, i32*, i32*, i32, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Could not create resource manager\00", align 1
@DDERR_OUTOFMEMORY = common dso_local global i32 0, align 4
@Direct3DDevice9HAL_Vtbl = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to get device data for adapter: %d\00", align 1
@DDERR_GENERIC = common dso_local global i32 0, align 4
@RT_BUILTIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to init swap chain: %d\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitD3D9BaseDevice(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i32 %4, i64 %5, i32* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  %20 = bitcast i32** %18 to i32*
  %21 = call i32 @AlignedAlloc(i32* %20, i32 4)
  %22 = call i64 @FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %8
  %25 = load i32*, i32** %18, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %27 = call i32 @InitD3D9ResourceManager(i32* %25, %struct.TYPE_12__* %26)
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %8
  %31 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @DDERR_OUTOFMEMORY, align 4
  store i32 %32, i32* %9, align 4
  br label %197

33:                                               ; preds = %24
  %34 = load i32*, i32** %18, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 17
  store i32* %34, i32** %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 14
  store i32* @Direct3DDevice9HAL_Vtbl, i32** %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = call i32 (...) @GetCurrentThreadId()
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 16
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 14
  %46 = bitcast i32** %45 to i32*
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 15
  store i32* %46, i32** %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 13
  %51 = call i32 @InitializeCriticalSection(i32* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 12
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %54, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %17, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 4
  store i32 9, i32* %71, align 8
  store i64 0, i64* %19, align 8
  br label %72

72:                                               ; preds = %192, %33
  %73 = load i64, i64* %19, align 8
  %74 = load i64, i64* %17, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %195

76:                                               ; preds = %72
  %77 = load i64, i64* @FALSE, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = load i64, i64* %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i64 %81
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 9
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %19, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = call i64 @CreateD3D9DeviceData(%struct.TYPE_14__* %82, i32* %87)
  %89 = icmp eq i64 %77, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %76
  %91 = load i64, i64* %19, align 8
  %92 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @DDERR_GENERIC, align 4
  store i32 %93, i32* %9, align 4
  br label %197

94:                                               ; preds = %76
  %95 = load i64, i64* %19, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 5
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %19, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %95, i64* %100, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = load i64, i64* %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load i64, i64* %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  store i32 %108, i32* %114, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = load i64, i64* %19, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load i64, i64* %19, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  store i32 %122, i32* %128, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = load i64, i64* %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = load i64, i64* %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  store i32 %136, i32* %142, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = load i64, i64* %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = load i64, i64* %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  store i32 %150, i32* %156, align 4
  %157 = load i32, i32* @RT_BUILTIN, align 4
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %159 = load i64, i64* %19, align 8
  %160 = call i32 @CreateDirect3DSwapChain9(i32 %157, %struct.TYPE_12__* %158, i64 %159)
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 6
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* %19, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 %160, i32* %165, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 6
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* %19, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 7
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* %19, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32 %171, i32* %176, align 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* %19, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %16, align 8
  %184 = call i32 @Direct3DSwapChain9_Init(i32 %182, i32* %183)
  %185 = call i64 @FAILED(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %94
  %188 = load i64, i64* %19, align 8
  %189 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %188)
  %190 = load i32, i32* @DDERR_GENERIC, align 4
  store i32 %190, i32* %9, align 4
  br label %197

191:                                              ; preds = %94
  br label %192

192:                                              ; preds = %191
  %193 = load i64, i64* %19, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %19, align 8
  br label %72

195:                                              ; preds = %72
  %196 = load i32, i32* @D3D_OK, align 4
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %195, %187, %90, %30
  %198 = load i32, i32* %9, align 4
  ret i32 %198
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @AlignedAlloc(i32*, i32) #1

declare dso_local i32 @InitD3D9ResourceManager(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

declare dso_local i32 @InitializeCriticalSection(i32*) #1

declare dso_local i64 @CreateD3D9DeviceData(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @CreateDirect3DSwapChain9(i32, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @Direct3DSwapChain9_Init(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
