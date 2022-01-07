; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_buffer.c_IDirectSoundBufferImpl_Duplicate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_buffer.c_IDirectSoundBufferImpl_Duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_17__*, i32, %struct.TYPE_18__*, i32, i32, i32*, i32*, %struct.TYPE_19__*, i64, i32*, i32*, i64, i64, i32, i64 }
%struct.TYPE_17__ = type { i32, i32 }

@DS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"(%p,%p,%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@DSERR_OUTOFMEMORY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"duplicating hardware buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"IDsDriver_DuplicateSoundBuffer failed (%08x)\0A\00", align 1
@STATE_STOPPED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @IDirectSoundBufferImpl_Duplicate(%struct.TYPE_19__* %0, %struct.TYPE_18__** %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__**, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %10 = load i64, i64* @DS_OK, align 8
  store i64 %10, i64* %9, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %12 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %14 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %11, %struct.TYPE_18__** %12, %struct.TYPE_18__* %13)
  %15 = call i32 (...) @GetProcessHeap()
  %16 = call %struct.TYPE_18__* @HeapAlloc(i32 %15, i32 0, i32 128)
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %8, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %18 = icmp eq %struct.TYPE_18__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %21, align 8
  %22 = load i64, i64* @DSERR_OUTOFMEMORY, align 8
  store i64 %22, i64* %4, align 8
  br label %164

23:                                               ; preds = %3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %26 = call i32 @CopyMemory(%struct.TYPE_18__* %24, %struct.TYPE_18__* %25, i32 128)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %30 = call %struct.TYPE_18__* @DSOUND_CopyFormat(%struct.TYPE_18__* %29)
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %32, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = icmp eq %struct.TYPE_18__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %23
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %40 = call i32 @HeapFree(i32 %38, i32 0, %struct.TYPE_18__* %39)
  %41 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %41, align 8
  %42 = load i64, i64* @DSERR_OUTOFMEMORY, align 8
  store i64 %42, i64* %4, align 8
  br label %164

43:                                               ; preds = %23
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 17
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 17
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 17
  %58 = bitcast i64* %57 to i32*
  %59 = call i64 @IDsDriver_DuplicateSoundBuffer(i32 %52, i64 %55, i32* %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i64 @FAILED(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %48
  %64 = load i64, i64* %9, align 8
  %65 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  %66 = call i32 (...) @GetProcessHeap()
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = call i32 @HeapFree(i32 %66, i32 0, %struct.TYPE_18__* %69)
  %71 = call i32 (...) @GetProcessHeap()
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %73 = call i32 @HeapFree(i32 %71, i32 0, %struct.TYPE_18__* %72)
  %74 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %74, align 8
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %4, align 8
  br label %164

76:                                               ; preds = %48
  br label %77

77:                                               ; preds = %76, %43
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 4
  %90 = call i32 @list_add_head(i32* %87, i32* %89)
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load i32, i32* @STATE_STOPPED, align 4
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 16
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 14
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 15
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 13
  store i32* null, i32** %103, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 12
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 11
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 10
  store %struct.TYPE_19__* %108, %struct.TYPE_19__** %110, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 9
  store i32* null, i32** %112, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 8
  store i32* null, i32** %114, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 5
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %116, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %118 = call i32 @DSOUND_RecalcFormat(%struct.TYPE_18__* %117)
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @FALSE, align 4
  %124 = call i32 @DSOUND_MixToTemporary(%struct.TYPE_18__* %119, i32 0, i32 %122, i32 %123)
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 6
  %127 = call i32 @RtlInitializeResource(i32* %126)
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %130 = call i64 @DirectSoundDevice_AddBuffer(%struct.TYPE_19__* %128, %struct.TYPE_18__* %129)
  store i64 %130, i64* %9, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* @DS_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %160

134:                                              ; preds = %77
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 6
  %137 = call i32 @RtlDeleteResource(i32* %136)
  %138 = call i32 (...) @GetProcessHeap()
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = call i32 @HeapFree(i32 %138, i32 0, %struct.TYPE_18__* %141)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 4
  %145 = call i32 @list_remove(i32* %144)
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %149, align 4
  %152 = call i32 (...) @GetProcessHeap()
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = call i32 @HeapFree(i32 %152, i32 0, %struct.TYPE_18__* %155)
  %157 = call i32 (...) @GetProcessHeap()
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %159 = call i32 @HeapFree(i32 %157, i32 0, %struct.TYPE_18__* %158)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  br label %160

160:                                              ; preds = %134, %77
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %162 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* %161, %struct.TYPE_18__** %162, align 8
  %163 = load i64, i64* %9, align 8
  store i64 %163, i64* %4, align 8
  br label %164

164:                                              ; preds = %160, %63, %37, %19
  %165 = load i64, i64* %4, align 8
  ret i64 %165
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.TYPE_18__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @CopyMemory(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_18__* @DSOUND_CopyFormat(%struct.TYPE_18__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i64 @IDsDriver_DuplicateSoundBuffer(i32, i64, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i32 @DSOUND_RecalcFormat(%struct.TYPE_18__*) #1

declare dso_local i32 @DSOUND_MixToTemporary(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @RtlInitializeResource(i32*) #1

declare dso_local i64 @DirectSoundDevice_AddBuffer(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @RtlDeleteResource(i32*) #1

declare dso_local i32 @list_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
