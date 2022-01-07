; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_PTP_GetDevicePropValue.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_PTP_GetDevicePropValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8** }
%struct.TYPE_15__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i64*, i64, %struct.TYPE_15__*, i32)* @PTP_GetDevicePropValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PTP_GetDevicePropValue(%struct.TYPE_14__* %0, i64* %1, i64 %2, %struct.TYPE_15__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %11, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  store i8** %24, i8*** %12, align 8
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %139 [
    i32 134, label %26
    i32 128, label %37
    i32 137, label %48
    i32 131, label %59
    i32 136, label %70
    i32 130, label %81
    i32 135, label %92
    i32 129, label %103
    i32 132, label %114
    i32 138, label %118
    i32 133, label %122
  ]

26:                                               ; preds = %5
  %27 = load i8**, i8*** %12, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 8
  store i8* %31, i8** %33, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  br label %140

37:                                               ; preds = %5
  %38 = load i8**, i8*** %12, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  br label %140

48:                                               ; preds = %5
  %49 = load i8**, i8*** %12, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = call i8* @LE16(i8** %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 2
  store i64 %58, i64* %56, align 8
  br label %140

59:                                               ; preds = %5
  %60 = load i8**, i8*** %12, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = call i8* @LE16(i8** %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load i64*, i64** %7, align 8
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 2
  store i64 %69, i64* %67, align 8
  br label %140

70:                                               ; preds = %5
  %71 = load i8**, i8*** %12, align 8
  %72 = load i64*, i64** %7, align 8
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = call i8* @LE32(i8** %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load i64*, i64** %7, align 8
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 4
  store i64 %80, i64* %78, align 8
  br label %140

81:                                               ; preds = %5
  %82 = load i8**, i8*** %12, align 8
  %83 = load i64*, i64** %7, align 8
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = call i8* @LE32(i8** %85)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load i64*, i64** %7, align 8
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 4
  store i64 %91, i64* %89, align 8
  br label %140

92:                                               ; preds = %5
  %93 = load i8**, i8*** %12, align 8
  %94 = load i64*, i64** %7, align 8
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = call i8* @LE64(i8** %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load i64*, i64** %7, align 8
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, 8
  store i64 %102, i64* %100, align 8
  br label %140

103:                                              ; preds = %5
  %104 = load i8**, i8*** %12, align 8
  %105 = load i64*, i64** %7, align 8
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = call i8* @LE64(i8** %107)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load i64*, i64** %7, align 8
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 8
  store i64 %113, i64* %111, align 8
  br label %140

114:                                              ; preds = %5
  %115 = load i64*, i64** %7, align 8
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 16
  store i64 %117, i64* %115, align 8
  br label %140

118:                                              ; preds = %5
  %119 = load i64*, i64** %7, align 8
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, 16
  store i64 %121, i64* %119, align 8
  br label %140

122:                                              ; preds = %5
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i8**
  %127 = load i8**, i8*** %12, align 8
  %128 = load i64*, i64** %7, align 8
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = call i32 @PTP_GetString(i8** %126, i8** %130, i32* %13)
  %132 = load i32, i32* %13, align 4
  %133 = mul nsw i32 %132, 2
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = load i64*, i64** %7, align 8
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, %135
  store i64 %138, i64* %136, align 8
  br label %140

139:                                              ; preds = %5
  br label %140

140:                                              ; preds = %139, %122, %118, %114, %103, %92, %81, %70, %59, %48, %37, %26
  ret void
}

declare dso_local i8* @LE16(i8**) #1

declare dso_local i8* @LE32(i8**) #1

declare dso_local i8* @LE64(i8**) #1

declare dso_local i32 @PTP_GetString(i8**, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
