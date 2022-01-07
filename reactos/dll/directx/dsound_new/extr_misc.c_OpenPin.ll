; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_misc.c_OpenPin.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_misc.c_OpenPin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, i32, i32*, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, i32, i32 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@DSERR_OUTOFMEMORY = common dso_local global i32 0, align 4
@KSINTERFACESETID_Standard = common dso_local global i32 0, align 4
@KSINTERFACE_STANDARD_LOOPED_STREAMING = common dso_local global i32 0, align 4
@KSINTERFACE_STANDARD_STREAMING = common dso_local global i32 0, align 4
@KSMEDIUMSETID_Standard = common dso_local global i32 0, align 4
@KSMEDIUM_TYPE_ANYINSTANCE = common dso_local global i32 0, align 4
@KSPRIORITY_NORMAL = common dso_local global i32 0, align 4
@KSDATAFORMAT_TYPE_AUDIO = common dso_local global i32 0, align 4
@KSDATAFORMAT_SUBTYPE_PCM = common dso_local global i32 0, align 4
@KSDATAFORMAT_SPECIFIER_WAVEFORMATEX = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OpenPin(i32 %0, i32 %1, %struct.TYPE_20__* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 8, i32* %12, align 4
  %16 = call i32 (...) @GetProcessHeap()
  %17 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call %struct.TYPE_18__* @HeapAlloc(i32 %16, i32 %17, i32 %18)
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %14, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %21 = icmp ne %struct.TYPE_18__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @DSERR_OUTOFMEMORY, align 4
  store i32 %23, i32* %6, align 4
  br label %145

24:                                               ; preds = %5
  %25 = load i32, i32* @KSINTERFACESETID_Standard, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @KSINTERFACE_STANDARD_LOOPED_STREAMING, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  br label %41

36:                                               ; preds = %24
  %37 = load i32, i32* @KSINTERFACE_STANDARD_STREAMING, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @KSMEDIUMSETID_Standard, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @KSMEDIUM_TYPE_ANYINSTANCE, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @KSPRIORITY_NORMAL, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i64 1
  %70 = bitcast %struct.TYPE_18__* %69 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %70, %struct.TYPE_19__** %15, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 6
  store i32 %73, i32* %76, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 5
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 4
  store i32 %85, i32* %88, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 4
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  store i32 8, i32* %112, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 6
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 5
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* @KSDATAFORMAT_TYPE_AUDIO, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 4
  store i32 %119, i32* %122, align 8
  %123 = load i32, i32* @KSDATAFORMAT_SUBTYPE_PCM, align 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 3
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @KSDATAFORMAT_SPECIFIER_WAVEFORMATEX, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  store i32 4, i32* %133, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %136 = load i32, i32* @GENERIC_READ, align 4
  %137 = load i32, i32* @GENERIC_WRITE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @KsCreatePin(i32 %134, %struct.TYPE_18__* %135, i32 %138, i32 %139)
  store i32 %140, i32* %13, align 4
  %141 = call i32 (...) @GetProcessHeap()
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %143 = call i32 @HeapFree(i32 %141, i32 0, %struct.TYPE_18__* %142)
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %41, %22
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_18__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @KsCreatePin(i32, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
