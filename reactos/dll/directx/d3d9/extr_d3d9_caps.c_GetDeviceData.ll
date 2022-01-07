; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_caps.c_GetDeviceData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_caps.c_GetDeviceData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32*, i64, i32*, i64, i32*, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Failed to create DirectDrawObject for Direct3D9\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to re-enable DirectDrawObject\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Could not query DirectDrawObject, aborting\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetDeviceData(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* null, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @CreateInternalDeviceData(i32 %24, i32 %27, i32** %29, i32 %32, i32* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* null, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = call i32 @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %2, align 8
  br label %291

43:                                               ; preds = %21
  br label %96

44:                                               ; preds = %1
  %45 = load i64, i64* @FALSE, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @CanReenableDirectDrawObject(i32* %48)
  %50 = icmp eq i64 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = call i32 @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i64, i64* @FALSE, align 8
  store i64 %53, i64* %2, align 8
  br label %291

54:                                               ; preds = %44
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @GetD3D9DriverInfo(i32* %57, %struct.TYPE_7__* %15, i32* %16, i32 %60, i32 %63, i32* %5, i32* %6, i32* null, i32* null, i32* null, i32* null, i64* %11, i64* %12, i64* %13, i64* %14)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* @TRUE, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %54
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 10
  store i32 %70, i32* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 9
  store i32 %75, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 8
  store i32 %80, i32* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 7
  store i32 %85, i32* %88, align 4
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 6
  store i32 %90, i32* %93, align 8
  br label %94

94:                                               ; preds = %68, %54
  %95 = load i64, i64* %4, align 8
  store i64 %95, i64* %2, align 8
  br label %291

96:                                               ; preds = %43
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = call i32 (...) @GetProcessHeap()
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @HeapFree(i32 %103, i32 0, i32* %107)
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %102, %96
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %128

118:                                              ; preds = %112
  %119 = call i32 (...) @GetProcessHeap()
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @HeapFree(i32 %119, i32 0, i32* %123)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  store i32* null, i32** %127, align 8
  br label %128

128:                                              ; preds = %118, %112
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = call i32 (...) @GetProcessHeap()
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @HeapFree(i32 %135, i32 0, i32* %139)
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i32* null, i32** %143, align 8
  br label %144

144:                                              ; preds = %134, %128
  %145 = load i64, i64* @FALSE, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = call i64 @CanReenableDirectDrawObject(i32* %148)
  %150 = icmp eq i64 %145, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = call i32 @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = call i32 @ReleaseInternalDeviceData(%struct.TYPE_6__* %153)
  %155 = load i64, i64* @FALSE, align 8
  store i64 %155, i64* %2, align 8
  br label %291

156:                                              ; preds = %144
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @GetD3D9DriverInfo(i32* %159, %struct.TYPE_7__* %161, i32* %163, i32 %166, i32 %169, i32* %5, i32* %6, i32* null, i32* null, i32* null, i32* null, i64* %11, i64* %12, i64* %13, i64* %14)
  store i64 %170, i64* %4, align 8
  %171 = load i64, i64* @FALSE, align 8
  %172 = load i64, i64* %4, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %156
  %175 = call i32 @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %177 = call i32 @ReleaseInternalDeviceData(%struct.TYPE_6__* %176)
  %178 = load i64, i64* @FALSE, align 8
  store i64 %178, i64* %2, align 8
  br label %291

179:                                              ; preds = %156
  %180 = call i32 (...) @GetProcessHeap()
  %181 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %182 = load i64, i64* %11, align 8
  %183 = call i32 @max(i64 %182, i32 1)
  %184 = sext i32 %183 to i64
  %185 = mul i64 %184, 4
  %186 = trunc i64 %185 to i32
  %187 = call i32* @HeapAlloc(i32 %180, i32 %181, i32 %186)
  store i32* %187, i32** %7, align 8
  %188 = call i32 (...) @GetProcessHeap()
  %189 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %190 = load i64, i64* %12, align 8
  %191 = call i32 @max(i64 %190, i32 1)
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 4
  %194 = trunc i64 %193 to i32
  %195 = call i32* @HeapAlloc(i32 %188, i32 %189, i32 %194)
  store i32* %195, i32** %8, align 8
  %196 = call i32 (...) @GetProcessHeap()
  %197 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %198 = load i64, i64* %13, align 8
  %199 = call i32 @max(i64 %198, i32 1)
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 4
  %202 = trunc i64 %201 to i32
  %203 = call i32* @HeapAlloc(i32 %196, i32 %197, i32 %202)
  store i32* %203, i32** %9, align 8
  %204 = call i32 (...) @GetProcessHeap()
  %205 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %206 = load i64, i64* %14, align 8
  %207 = call i32 @max(i64 %206, i32 1)
  %208 = sext i32 %207 to i64
  %209 = mul i64 %208, 4
  %210 = trunc i64 %209 to i32
  %211 = call i32* @HeapAlloc(i32 %204, i32 %205, i32 %210)
  store i32* %211, i32** %10, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 3
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load i32*, i32** %7, align 8
  %226 = load i32*, i32** %8, align 8
  %227 = load i32*, i32** %9, align 8
  %228 = load i32*, i32** %10, align 8
  %229 = call i64 @GetD3D9DriverInfo(i32* %214, %struct.TYPE_7__* %216, i32* %218, i32 %221, i32 %224, i32* %5, i32* %6, i32* %225, i32* %226, i32* %227, i32* %228, i64* %11, i64* %12, i64* %13, i64* %14)
  store i64 %229, i64* %4, align 8
  %230 = load i64, i64* @FALSE, align 8
  %231 = load i64, i64* %4, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %250

233:                                              ; preds = %179
  %234 = call i32 @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %235 = call i32 (...) @GetProcessHeap()
  %236 = load i32*, i32** %7, align 8
  %237 = call i32 @HeapFree(i32 %235, i32 0, i32* %236)
  %238 = call i32 (...) @GetProcessHeap()
  %239 = load i32*, i32** %8, align 8
  %240 = call i32 @HeapFree(i32 %238, i32 0, i32* %239)
  %241 = call i32 (...) @GetProcessHeap()
  %242 = load i32*, i32** %9, align 8
  %243 = call i32 @HeapFree(i32 %241, i32 0, i32* %242)
  %244 = call i32 (...) @GetProcessHeap()
  %245 = load i32*, i32** %10, align 8
  %246 = call i32 @HeapFree(i32 %244, i32 0, i32* %245)
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %248 = call i32 @ReleaseInternalDeviceData(%struct.TYPE_6__* %247)
  %249 = load i64, i64* @FALSE, align 8
  store i64 %249, i64* %2, align 8
  br label %291

250:                                              ; preds = %179
  %251 = load i64, i64* %11, align 8
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 5
  store i64 %251, i64* %254, align 8
  %255 = load i64, i64* %11, align 8
  %256 = icmp sgt i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %250
  %258 = load i32*, i32** %7, align 8
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 4
  store i32* %258, i32** %261, align 8
  br label %262

262:                                              ; preds = %257, %250
  %263 = load i64, i64* %13, align 8
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 3
  store i64 %263, i64* %266, align 8
  %267 = load i64, i64* %13, align 8
  %268 = icmp sgt i64 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %262
  %270 = load i32*, i32** %9, align 8
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 2
  store i32* %270, i32** %273, align 8
  br label %274

274:                                              ; preds = %269, %262
  %275 = load i64, i64* %14, align 8
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  store i64 %275, i64* %278, align 8
  %279 = load i64, i64* %14, align 8
  %280 = icmp sgt i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %274
  %282 = load i32*, i32** %10, align 8
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  store i32* %282, i32** %285, align 8
  br label %286

286:                                              ; preds = %281, %274
  %287 = call i32 (...) @GetProcessHeap()
  %288 = load i32*, i32** %8, align 8
  %289 = call i32 @HeapFree(i32 %287, i32 0, i32* %288)
  %290 = load i64, i64* @TRUE, align 8
  store i64 %290, i64* %2, align 8
  br label %291

291:                                              ; preds = %286, %233, %174, %151, %94, %51, %40
  %292 = load i64, i64* %2, align 8
  ret i64 %292
}

declare dso_local i32 @CreateInternalDeviceData(i32, i32, i32**, i32, i32*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i64 @CanReenableDirectDrawObject(i32*) #1

declare dso_local i64 @GetD3D9DriverInfo(i32*, %struct.TYPE_7__*, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ReleaseInternalDeviceData(%struct.TYPE_6__*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @max(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
