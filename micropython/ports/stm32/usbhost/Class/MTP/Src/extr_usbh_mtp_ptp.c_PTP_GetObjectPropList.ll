; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_PTP_GetObjectPropList.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_PTP_GetObjectPropList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_16__ = type { i8*, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_16__*, i64)* @PTP_GetObjectPropList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PTP_GetObjectPropList(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %8, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %9, align 8
  store i64 0, i64* %11, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i8* @LE32(i32* %24)
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %97

30:                                               ; preds = %3
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  store i32* %32, i32** %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 %33, 8
  store i64 %34, i64* %7, align 8
  store i64 0, i64* %12, align 8
  br label %35

35:                                               ; preds = %92, %30
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %95

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i64 0, i64* %4, align 8
  br label %97

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = call i8* @LE32(i32* %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 3
  store i8* %45, i8** %49, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  store i32* %51, i32** %9, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %52, 8
  store i64 %53, i64* %7, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i8* @LE16(i32* %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  store i8* %55, i8** %59, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  store i32* %61, i32** %9, align 8
  %62 = load i64, i64* %7, align 8
  %63 = sub i64 %62, 4
  store i64 %63, i64* %7, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i8* @LE16(i32* %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  store i8* %65, i8** %69, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  store i32* %71, i32** %9, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %72, 4
  store i64 %73, i64* %7, align 8
  store i64 0, i64* %11, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @PTP_GetDevicePropValue(%struct.TYPE_15__* %74, i64* %11, i64 %75, i32* %79, i8* %84)
  %86 = load i64, i64* %11, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 %86
  store i32* %88, i32** %9, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %7, align 8
  %91 = sub nsw i64 %90, %89
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %43
  %93 = load i64, i64* %12, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %12, align 8
  br label %35

95:                                               ; preds = %35
  %96 = load i64, i64* %10, align 8
  store i64 %96, i64* %4, align 8
  br label %97

97:                                               ; preds = %95, %42, %29
  %98 = load i64, i64* %4, align 8
  ret i64 %98
}

declare dso_local i8* @LE32(i32*) #1

declare dso_local i8* @LE16(i32*) #1

declare dso_local i32 @PTP_GetDevicePropValue(%struct.TYPE_15__*, i64*, i64, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
