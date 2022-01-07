; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_misc.c_DoDataIntersection.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_misc.c_DoDataIntersection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i64, i64 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KSPROPERTY_TYPE_GET = common dso_local global i32 0, align 4
@KSPROPSETID_Pin = common dso_local global i32 0, align 4
@KSPROPERTY_PIN_DATAINTERSECTION = common dso_local global i32 0, align 4
@KSDATAFORMAT_TYPE_AUDIO = common dso_local global i32 0, align 4
@KSDATAFORMAT_SUBTYPE_PCM = common dso_local global i32 0, align 4
@KSDATAFORMAT_SPECIFIER_WAVEFORMATEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"CurrentFormat: InFormat nChannels %u wBitsPerSample %u nSamplesPerSec %u\0A\00", align 1
@IOCTL_KS_PROPERTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"dwResult %x\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [119 x i8] c"InFormat  nChannels %u wBitsPerSample %u nSamplesPerSec %u\0AOutFormat nChannels %u nBitsPerSample %u nSamplesPerSec %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DoDataIntersection(i32 %0, i32 %1, i32 %2, %struct.TYPE_18__* %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_18__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca %struct.TYPE_17__*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.TYPE_18__* %7, %struct.TYPE_18__** %17, align 8
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %27 = call %struct.TYPE_15__* @HeapAlloc(i32 %25, i32 %26, i32 12)
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %21, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %29 = icmp ne %struct.TYPE_15__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %8
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %9, align 4
  br label %210

32:                                               ; preds = %8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i64 1
  %35 = bitcast %struct.TYPE_15__* %34 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %22, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i64 1
  %38 = bitcast %struct.TYPE_16__* %37 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %23, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @KSPROPERTY_TYPE_GET, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @KSPROPSETID_Pin, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @KSPROPERTY_PIN_DATAINTERSECTION, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  store i32 4, i32* %57, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 6
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 5
  store i32 %70, i32* %73, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i32 8, i32* %79, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 6
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 5
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @KSDATAFORMAT_TYPE_AUDIO, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @KSDATAFORMAT_SUBTYPE_PCM, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 3
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @KSDATAFORMAT_SPECIFIER_WAVEFORMATEX, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  store i32 4, i32* %100, align 4
  store i32 1, i32* %18, align 4
  br label %101

101:                                              ; preds = %201, %32
  %102 = load i32, i32* %18, align 4
  %103 = icmp sle i32 %102, 2
  br i1 %103, label %104, label %204

104:                                              ; preds = %101
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %19, align 4
  br label %106

106:                                              ; preds = %197, %104
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %200

110:                                              ; preds = %106
  %111 = load i32, i32* %18, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %19, align 4
  %116 = sdiv i32 %115, 8
  %117 = load i32, i32* %18, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %12, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 8
  %124 = load i32, i32* %19, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 3
  store i32 %124, i32* %127, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 (i8*, i32, ...) @DPRINT(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @IOCTL_KS_PROPERTY, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %135 = ptrtoint %struct.TYPE_15__* %134 to i32
  %136 = ptrtoint i32* %20 to i32
  %137 = call i32 @SyncOverlappedDeviceIoControl(i32 %132, i32 %133, i32 %135, i32 12, i32 %136, i32 4, i32* null)
  store i32 %137, i32* %24, align 4
  %138 = load i32, i32* %24, align 4
  %139 = call i32 (i8*, i32, ...) @DPRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %24, align 4
  %141 = load i32, i32* @ERROR_SUCCESS, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %196

143:                                              ; preds = %110
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 6
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sdiv i32 %156, 8
  %158 = load i32, i32* %18, align 4
  %159 = mul nsw i32 %157, %158
  %160 = load i32, i32* %12, align 4
  %161 = mul nsw i32 %159, %160
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %19, align 4
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %18, align 4
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  %173 = call i32 (...) @GetProcessHeap()
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %175 = call i32 @HeapFree(i32 %173, i32 0, %struct.TYPE_15__* %174)
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i8*, i32, ...) @DPRINT(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.2, i64 0, i64 0), i32 %178, i32 %181, i32 %184, i32 %187, i32 %190, i32 %193)
  %195 = load i32, i32* @TRUE, align 4
  store i32 %195, i32* %9, align 4
  br label %210

196:                                              ; preds = %110
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %19, align 4
  %199 = add nsw i32 %198, 8
  store i32 %199, i32* %19, align 4
  br label %106

200:                                              ; preds = %106
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %18, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %18, align 4
  br label %101

204:                                              ; preds = %101
  %205 = call i32 (...) @GetProcessHeap()
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %207 = call i32 @HeapFree(i32 %205, i32 0, %struct.TYPE_15__* %206)
  %208 = call i32 @ASSERT(i32 0)
  %209 = load i32, i32* @FALSE, align 4
  store i32 %209, i32* %9, align 4
  br label %210

210:                                              ; preds = %204, %143, %30
  %211 = load i32, i32* %9, align 4
  ret i32 %211
}

declare dso_local %struct.TYPE_15__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @DPRINT(i8*, i32, ...) #1

declare dso_local i32 @SyncOverlappedDeviceIoControl(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
