; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_ParseCSDescriptors.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_ParseCSDescriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i32 }

@USB_LEN_CFG_DESC = common dso_local global i64 0, align 8
@USBH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @USBH_AUDIO_ParseCSDescriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_AUDIO_ParseCSDescriptors(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %8, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %3, align 8
  %19 = load i64, i64* @USB_LEN_CFG_DESC, align 8
  store i64 %19, i64* %4, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %85, %1
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %33, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %32
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = bitcast %struct.TYPE_18__* %41 to i8*
  %43 = call %struct.TYPE_18__* @USBH_GetNextDesc(i8* %42, i64* %4)
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %3, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %84 [
    i32 128, label %47
    i32 129, label %60
  ]

47:                                               ; preds = %40
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = bitcast %struct.TYPE_18__* %48 to i64*
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %6, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %53 = bitcast %struct.TYPE_18__* %52 to i64*
  %54 = getelementptr inbounds i64, i64* %53, i64 3
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %7, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @USBH_FindInterfaceIndex(%struct.TYPE_17__* %56, i64 %57, i64 %58)
  store i64 %59, i64* %5, align 8
  br label %85

60:                                               ; preds = %40
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ule i64 %61, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %60
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = load i64, i64* %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %81 = bitcast %struct.TYPE_18__* %80 to i64*
  %82 = call i32 @ParseCSDescriptors(%struct.TYPE_12__* %70, i32 %79, i64* %81)
  br label %83

83:                                               ; preds = %68, %60
  br label %85

84:                                               ; preds = %40
  br label %85

85:                                               ; preds = %84, %83, %47
  br label %32

86:                                               ; preds = %32
  %87 = load i32, i32* @USBH_OK, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_18__* @USBH_GetNextDesc(i8*, i64*) #1

declare dso_local i64 @USBH_FindInterfaceIndex(%struct.TYPE_17__*, i64, i64) #1

declare dso_local i32 @ParseCSDescriptors(%struct.TYPE_12__*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
