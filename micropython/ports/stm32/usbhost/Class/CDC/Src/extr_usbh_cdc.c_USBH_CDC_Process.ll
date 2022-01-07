; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/CDC/Src/extr_usbh_cdc.c_USBH_CDC_Process.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/CDC/Src/extr_usbh_cdc.c_USBH_CDC_Process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@USBH_BUSY = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @USBH_CDC_Process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_CDC_Process(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %6 = load i32, i32* @USBH_BUSY, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @USBH_OK, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %5, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %129 [
    i32 130, label %16
    i32 129, label %18
    i32 131, label %39
    i32 128, label %114
    i32 132, label %119
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @USBH_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %130

18:                                               ; preds = %1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = call i32 @SetLineCoding(%struct.TYPE_20__* %19, %struct.TYPE_15__* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @USBH_OK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  store i32 131, i32* %29, align 8
  br label %38

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @USBH_BUSY, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  store i32 132, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %30
  br label %38

38:                                               ; preds = %37, %27
  br label %130

39:                                               ; preds = %1
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = call i32 @GetLineCoding(%struct.TYPE_20__* %40, %struct.TYPE_16__* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @USBH_OK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %105

47:                                               ; preds = %39
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  store i32 130, i32* %49, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %54, %60
  br i1 %61, label %62, label %104

62:                                               ; preds = %47
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %67, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %62
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %80, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %75
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %93, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %103 = call i32 @USBH_CDC_LineCodingChanged(%struct.TYPE_20__* %102)
  br label %104

104:                                              ; preds = %101, %88, %75, %62, %47
  br label %113

105:                                              ; preds = %39
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @USBH_BUSY, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  store i32 132, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %105
  br label %113

113:                                              ; preds = %112, %104
  br label %130

114:                                              ; preds = %1
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %116 = call i32 @CDC_ProcessTransmission(%struct.TYPE_20__* %115)
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %118 = call i32 @CDC_ProcessReception(%struct.TYPE_20__* %117)
  br label %130

119:                                              ; preds = %1
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %121 = call i32 @USBH_ClrFeature(%struct.TYPE_20__* %120, i32 0)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @USBH_OK, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  store i32 130, i32* %127, align 8
  br label %128

128:                                              ; preds = %125, %119
  br label %130

129:                                              ; preds = %1
  br label %130

130:                                              ; preds = %129, %128, %114, %113, %38, %16
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @SetLineCoding(%struct.TYPE_20__*, %struct.TYPE_15__*) #1

declare dso_local i32 @GetLineCoding(%struct.TYPE_20__*, %struct.TYPE_16__*) #1

declare dso_local i32 @USBH_CDC_LineCodingChanged(%struct.TYPE_20__*) #1

declare dso_local i32 @CDC_ProcessTransmission(%struct.TYPE_20__*) #1

declare dso_local i32 @CDC_ProcessReception(%struct.TYPE_20__*) #1

declare dso_local i32 @USBH_ClrFeature(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
