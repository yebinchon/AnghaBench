; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_PTP_GetObjectInfo.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_PTP_GetObjectInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_15__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@PTP_oi_StorageID = common dso_local global i64 0, align 8
@PTP_oi_ObjectFormat = common dso_local global i64 0, align 8
@PTP_oi_ProtectionStatus = common dso_local global i64 0, align 8
@PTP_oi_ObjectCompressedSize = common dso_local global i64 0, align 8
@PTP_oi_filenamelen = common dso_local global i64 0, align 8
@PTP_oi_ThumbFormat = common dso_local global i64 0, align 8
@PTP_oi_ThumbCompressedSize = common dso_local global i64 0, align 8
@PTP_oi_ThumbPixWidth = common dso_local global i64 0, align 8
@PTP_oi_ThumbPixHeight = common dso_local global i64 0, align 8
@PTP_oi_ImagePixWidth = common dso_local global i64 0, align 8
@PTP_oi_ImagePixHeight = common dso_local global i64 0, align 8
@PTP_oi_ImageBitDepth = common dso_local global i64 0, align 8
@PTP_oi_ParentObject = common dso_local global i64 0, align 8
@PTP_oi_AssociationType = common dso_local global i64 0, align 8
@PTP_oi_AssociationDesc = common dso_local global i64 0, align 8
@PTP_oi_SequenceNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*)* @PTP_GetObjectInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PTP_GetObjectInfo(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %6, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* @PTP_oi_StorageID, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = call i8* @LE32(i64* %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 15
  store i8* %22, i8** %24, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* @PTP_oi_ObjectFormat, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = call i8* @LE16(i64* %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 14
  store i8* %28, i8** %30, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* @PTP_oi_ProtectionStatus, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = call i8* @LE16(i64* %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 13
  store i8* %34, i8** %36, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* @PTP_oi_ObjectCompressedSize, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = call i8* @LE32(i64* %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 12
  store i8* %40, i8** %42, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* @PTP_oi_filenamelen, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %2
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* @PTP_oi_filenamelen, align 8
  %51 = add i64 %50, 4
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i64*, i64** %6, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 4
  store i64* %57, i64** %6, align 8
  br label %58

58:                                               ; preds = %55, %48, %2
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* @PTP_oi_ThumbFormat, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = call i8* @LE16(i64* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 11
  store i8* %62, i8** %64, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = load i64, i64* @PTP_oi_ThumbCompressedSize, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = call i8* @LE32(i64* %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 10
  store i8* %68, i8** %70, align 8
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* @PTP_oi_ThumbPixWidth, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = call i8* @LE32(i64* %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 9
  store i8* %74, i8** %76, align 8
  %77 = load i64*, i64** %6, align 8
  %78 = load i64, i64* @PTP_oi_ThumbPixHeight, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = call i8* @LE32(i64* %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 8
  store i8* %80, i8** %82, align 8
  %83 = load i64*, i64** %6, align 8
  %84 = load i64, i64* @PTP_oi_ImagePixWidth, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = call i8* @LE32(i64* %85)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 7
  store i8* %86, i8** %88, align 8
  %89 = load i64*, i64** %6, align 8
  %90 = load i64, i64* @PTP_oi_ImagePixHeight, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = call i8* @LE32(i64* %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 6
  store i8* %92, i8** %94, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = load i64, i64* @PTP_oi_ImageBitDepth, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = call i8* @LE32(i64* %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 5
  store i8* %98, i8** %100, align 8
  %101 = load i64*, i64** %6, align 8
  %102 = load i64, i64* @PTP_oi_ParentObject, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = call i8* @LE32(i64* %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  %107 = load i64*, i64** %6, align 8
  %108 = load i64, i64* @PTP_oi_AssociationType, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = call i8* @LE16(i64* %109)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load i64*, i64** %6, align 8
  %114 = load i64, i64* @PTP_oi_AssociationDesc, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = call i8* @LE32(i64* %115)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load i64*, i64** %6, align 8
  %120 = load i64, i64* @PTP_oi_SequenceNumber, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = call i8* @LE32(i64* %121)
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i64*, i64** %6, align 8
  %129 = load i64, i64* @PTP_oi_filenamelen, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = call i32 @PTP_GetString(i32 %127, i64* %130, i32* %7)
  ret void
}

declare dso_local i8* @LE32(i64*) #1

declare dso_local i8* @LE16(i64*) #1

declare dso_local i32 @PTP_GetString(i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
