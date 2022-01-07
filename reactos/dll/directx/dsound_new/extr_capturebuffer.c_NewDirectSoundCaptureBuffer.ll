; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_capturebuffer.c_NewDirectSoundCaptureBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_capturebuffer.c_NewDirectSoundCaptureBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i64, i32, i32*, %struct.TYPE_15__*, i8*, i32, %struct.TYPE_14__*, i64, %struct.TYPE_15__*, i32, %struct.TYPE_15__*, %struct.TYPE_13__, i8* }
%struct.TYPE_13__ = type { i64, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@DSERR_OUTOFMEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"PinId %u DeviceId %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to compute a compatible format\0A\00", align 1
@DSERR_GENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"MixBufferSize %u BufferSize %u\0A\00", align 1
@vt_DirectSoundCaptureBuffer8 = common dso_local global i32 0, align 4
@KSSTATE_STOP = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NewDirectSoundCaptureBuffer(i64* %0, %struct.TYPE_14__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i64 0, i64* %10, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %15, i64* %12, align 8
  %16 = call i32 (...) @GetProcessHeap()
  %17 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %18 = call i8* @HeapAlloc(i32 %16, i32 %17, i64 4)
  %19 = bitcast i8* %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %14, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %21 = icmp ne %struct.TYPE_15__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @DSERR_OUTOFMEMORY, align 4
  store i32 %23, i32* %4, align 4
  br label %289

24:                                               ; preds = %3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 4, %29
  store i64 %30, i64* %8, align 8
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load i64, i64* %8, align 8
  %33 = call i8* @HeapAlloc(i32 %31, i32 0, i64 %32)
  %34 = bitcast i8* %33 to %struct.TYPE_15__*
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = icmp ne %struct.TYPE_15__* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %24
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %44 = call i32 @HeapFree(i32 %42, i32 0, %struct.TYPE_15__* %43)
  %45 = load i32, i32* @DSERR_OUTOFMEMORY, align 4
  store i32 %45, i32* %4, align 4
  br label %289

46:                                               ; preds = %24
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ASSERT(i32 %49)
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = call i8* @HeapAlloc(i32 %51, i32 0, i64 %55)
  %57 = bitcast i8* %56 to %struct.TYPE_15__*
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 8
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = icmp ne %struct.TYPE_15__* %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %46
  %65 = call i32 (...) @GetProcessHeap()
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = call i32 @HeapFree(i32 %65, i32 0, %struct.TYPE_15__* %68)
  %70 = call i32 (...) @GetProcessHeap()
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %72 = call i32 @HeapFree(i32 %70, i32 0, %struct.TYPE_15__* %71)
  %73 = load i32, i32* @DSERR_OUTOFMEMORY, align 4
  store i32 %73, i32* %4, align 4
  br label %289

74:                                               ; preds = %46
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  br label %89

89:                                               ; preds = %117, %74
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = load i8*, i8** @TRUE, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i64 @GetPinIdFromFilter(%struct.TYPE_14__* %90, i8* %91, i64 %92)
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @ULONG_MAX, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %120

98:                                               ; preds = %89
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 9
  %108 = load i8*, i8** @TRUE, align 8
  %109 = call i64 @OpenPin(i32 %101, i64 %102, %struct.TYPE_17__* %105, i32* %107, i8* %108)
  store i64 %109, i64* %12, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* @ERROR_SUCCESS, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %98
  br label %120

114:                                              ; preds = %98
  %115 = load i64, i64* %10, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %10, align 8
  br label %117

117:                                              ; preds = %114
  %118 = load i8*, i8** @TRUE, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %89, label %120

120:                                              ; preds = %117, %113, %97
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* @ERROR_SUCCESS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %262

124:                                              ; preds = %120
  store i64 0, i64* %10, align 8
  br label %125

125:                                              ; preds = %160, %124
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = load i8*, i8** @TRUE, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i64 @GetPinIdFromFilter(%struct.TYPE_14__* %126, i8* %127, i64 %128)
  store i64 %129, i64* %11, align 8
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* %10, align 8
  %132 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %130, i64 %131)
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* @ULONG_MAX, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %163

137:                                              ; preds = %125
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %11, align 8
  %142 = load i8*, i8** @TRUE, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 9
  %148 = call i64 @CreateCompatiblePin(i32 %140, i64 %141, i8* %142, %struct.TYPE_17__* %145, i32* %13, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %137
  %151 = load i8*, i8** @TRUE, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 12
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 11
  %156 = call i32 @CopyMemory(%struct.TYPE_13__* %155, i32* %13, i32 4)
  br label %163

157:                                              ; preds = %137
  %158 = load i64, i64* %10, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %10, align 8
  br label %160

160:                                              ; preds = %157
  %161 = load i8*, i8** @TRUE, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %125, label %163

163:                                              ; preds = %160, %150, %136
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 12
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %189, label %168

168:                                              ; preds = %163
  %169 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %170 = call i32 (...) @GetProcessHeap()
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 10
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %172, align 8
  %174 = call i32 @HeapFree(i32 %170, i32 0, %struct.TYPE_15__* %173)
  %175 = call i32 (...) @GetProcessHeap()
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %177, align 8
  %179 = call i32 @HeapFree(i32 %175, i32 0, %struct.TYPE_15__* %178)
  %180 = call i32 (...) @GetProcessHeap()
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %182, align 8
  %184 = call i32 @HeapFree(i32 %180, i32 0, %struct.TYPE_15__* %183)
  %185 = call i32 (...) @GetProcessHeap()
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %187 = call i32 @HeapFree(i32 %185, i32 0, %struct.TYPE_15__* %186)
  %188 = load i32, i32* @DSERR_GENERIC, align 4
  store i32 %188, i32* %4, align 4
  br label %289

189:                                              ; preds = %163
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  store i64 %193, i64* %9, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %9, align 8
  %200 = sdiv i64 %199, %198
  store i64 %200, i64* %9, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = sdiv i32 %205, 8
  %207 = sext i32 %206 to i64
  %208 = load i64, i64* %9, align 8
  %209 = sdiv i64 %208, %207
  store i64 %209, i64* %9, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 11
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %9, align 8
  %215 = mul nsw i64 %214, %213
  store i64 %215, i64* %9, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 11
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = sdiv i32 %219, 8
  %221 = sext i32 %220 to i64
  %222 = load i64, i64* %9, align 8
  %223 = mul nsw i64 %222, %221
  store i64 %223, i64* %9, align 8
  %224 = call i32 (...) @GetProcessHeap()
  %225 = load i64, i64* %9, align 8
  %226 = call i8* @HeapAlloc(i32 %224, i32 0, i64 %225)
  %227 = bitcast i8* %226 to %struct.TYPE_15__*
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 10
  store %struct.TYPE_15__* %227, %struct.TYPE_15__** %229, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 8
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %231, align 8
  %233 = icmp ne %struct.TYPE_15__* %232, null
  br i1 %233, label %253, label %234

234:                                              ; preds = %189
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 9
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @CloseHandle(i32 %237)
  %239 = call i32 (...) @GetProcessHeap()
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 8
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %241, align 8
  %243 = call i32 @HeapFree(i32 %239, i32 0, %struct.TYPE_15__* %242)
  %244 = call i32 (...) @GetProcessHeap()
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %246, align 8
  %248 = call i32 @HeapFree(i32 %244, i32 0, %struct.TYPE_15__* %247)
  %249 = call i32 (...) @GetProcessHeap()
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %251 = call i32 @HeapFree(i32 %249, i32 0, %struct.TYPE_15__* %250)
  %252 = load i32, i32* @DSERR_OUTOFMEMORY, align 4
  store i32 %252, i32* %4, align 4
  br label %289

253:                                              ; preds = %189
  %254 = load i64, i64* %9, align 8
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 7
  store i64 %254, i64* %256, align 8
  %257 = load i64, i64* %9, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %257, i64 %260)
  br label %262

262:                                              ; preds = %253, %120
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 1
  store i32 1, i32* %264, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 2
  store i32* @vt_DirectSoundCaptureBuffer8, i32** %266, align 8
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 6
  store %struct.TYPE_14__* %267, %struct.TYPE_14__** %269, align 8
  %270 = load i32, i32* @KSSTATE_STOP, align 4
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 5
  store i32 %270, i32* %272, align 8
  %273 = load i8*, i8** @TRUE, align 8
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 4
  store i8* %273, i8** %275, align 8
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 3
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %277, align 8
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %280, align 8
  %282 = load i64, i64* %8, align 8
  %283 = call i32 @RtlMoveMemory(%struct.TYPE_15__* %278, %struct.TYPE_17__* %281, i64 %282)
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 2
  %286 = ptrtoint i32** %285 to i64
  %287 = load i64*, i64** %5, align 8
  store i64 %286, i64* %287, align 8
  %288 = load i32, i32* @DS_OK, align 4
  store i32 %288, i32* %4, align 4
  br label %289

289:                                              ; preds = %262, %234, %168, %64, %41, %22
  %290 = load i32, i32* %4, align 4
  ret i32 %290
}

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @GetPinIdFromFilter(%struct.TYPE_14__*, i8*, i64) #1

declare dso_local i64 @OpenPin(i32, i64, %struct.TYPE_17__*, i32*, i8*) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @CreateCompatiblePin(i32, i64, i8*, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @CopyMemory(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @DPRINT1(i8*, i64, i64) #1

declare dso_local i32 @RtlMoveMemory(%struct.TYPE_15__*, %struct.TYPE_17__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
