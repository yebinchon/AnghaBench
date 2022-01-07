; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbdev/core/src/extr_usbd_ctlreq.c_USBD_GetDescriptor.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbdev/core/src/extr_usbd_ctlreq.c_USBD_GetDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__*, i32, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64 (%struct.TYPE_19__*, i64*)*, i64 (%struct.TYPE_19__*, i64*)*, i64 (%struct.TYPE_19__*, i64*)*, i64 (%struct.TYPE_19__*, i64*)* }
%struct.TYPE_16__ = type { i32* (%struct.TYPE_19__*, i64*)*, i32* (%struct.TYPE_19__*, i32, i64*)* }
%struct.TYPE_18__ = type { i32, i64 }

@USBD_SPEED_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_18__*)* @USBD_GetDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @USBD_GetDescriptor(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = ashr i32 %9, 8
  switch i32 %10, label %107 [
    i32 131, label %11
    i32 132, label %19
    i32 128, label %48
    i32 130, label %67
    i32 129, label %86
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32* (%struct.TYPE_19__*, i64*)*, i32* (%struct.TYPE_19__*, i64*)** %15, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = call i32* %16(%struct.TYPE_19__* %17, i64* %5)
  store i32* %18, i32** %6, align 8
  br label %111

19:                                               ; preds = %2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @USBD_SPEED_HIGH, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 3
  %30 = load i64 (%struct.TYPE_19__*, i64*)*, i64 (%struct.TYPE_19__*, i64*)** %29, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %32 = call i64 %30(%struct.TYPE_19__* %31, i64* %5)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 132, i32* %35, align 4
  br label %47

36:                                               ; preds = %19
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = load i64 (%struct.TYPE_19__*, i64*)*, i64 (%struct.TYPE_19__*, i64*)** %40, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = call i64 %41(%struct.TYPE_19__* %42, i64* %5)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 132, i32* %46, align 4
  br label %47

47:                                               ; preds = %36, %25
  br label %111

48:                                               ; preds = %2
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i32* (%struct.TYPE_19__*, i32, i64*)*, i32* (%struct.TYPE_19__*, i32, i64*)** %52, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 255
  %59 = call i32* %53(%struct.TYPE_19__* %54, i32 %58, i64* %5)
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = call i32 @USBD_CtlError(%struct.TYPE_19__* %63, %struct.TYPE_18__* %64)
  br label %129

66:                                               ; preds = %48
  br label %111

67:                                               ; preds = %2
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @USBD_SPEED_HIGH, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i64 (%struct.TYPE_19__*, i64*)*, i64 (%struct.TYPE_19__*, i64*)** %77, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %80 = call i64 %78(%struct.TYPE_19__* %79, i64* %5)
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %6, align 8
  br label %111

82:                                               ; preds = %67
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %85 = call i32 @USBD_CtlError(%struct.TYPE_19__* %83, %struct.TYPE_18__* %84)
  br label %129

86:                                               ; preds = %2
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @USBD_SPEED_HIGH, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i64 (%struct.TYPE_19__*, i64*)*, i64 (%struct.TYPE_19__*, i64*)** %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = call i64 %97(%struct.TYPE_19__* %98, i64* %5)
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** %6, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 129, i32* %102, align 4
  br label %111

103:                                              ; preds = %86
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = call i32 @USBD_CtlError(%struct.TYPE_19__* %104, %struct.TYPE_18__* %105)
  br label %129

107:                                              ; preds = %2
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %110 = call i32 @USBD_CtlError(%struct.TYPE_19__* %108, %struct.TYPE_18__* %109)
  br label %129

111:                                              ; preds = %92, %73, %66, %47, %11
  %112 = load i64, i64* %5, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %111
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %114
  %120 = load i64, i64* %5, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @MIN(i64 %120, i64 %123)
  store i64 %124, i64* %5, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @USBD_CtlSendData(%struct.TYPE_19__* %125, i32* %126, i64 %127)
  br label %129

129:                                              ; preds = %62, %82, %103, %107, %119, %114, %111
  ret void
}

declare dso_local i32 @USBD_CtlError(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @USBD_CtlSendData(%struct.TYPE_19__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
