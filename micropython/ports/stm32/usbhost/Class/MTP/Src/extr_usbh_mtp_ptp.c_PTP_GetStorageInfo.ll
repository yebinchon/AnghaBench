; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_PTP_GetStorageInfo.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_PTP_GetStorageInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@PTP_si_StorageType = common dso_local global i64 0, align 8
@PTP_si_FilesystemType = common dso_local global i64 0, align 8
@PTP_si_AccessCapability = common dso_local global i64 0, align 8
@PTP_si_MaxCapability = common dso_local global i64 0, align 8
@PTP_si_FreeSpaceInBytes = common dso_local global i64 0, align 8
@PTP_si_FreeSpaceInImages = common dso_local global i64 0, align 8
@PTP_si_StorageDescription = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, %struct.TYPE_15__*)* @PTP_GetStorageInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PTP_GetStorageInfo(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i64, i64* @PTP_si_StorageType, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i8* @LE16(i32* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 7
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* @PTP_si_FilesystemType, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = call i8* @LE16(i32* %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* @PTP_si_AccessCapability, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i8* @LE16(i32* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* @PTP_si_MaxCapability, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i8* @LE64(i32* %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* @PTP_si_FreeSpaceInBytes, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = call i8* @LE64(i32* %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* @PTP_si_FreeSpaceInImages, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = call i32 @LE32(i32* %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i64, i64* @PTP_si_StorageDescription, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = call i32 @PTP_GetString(i32 %59, i32* %62, i32* %9)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i64, i64* @PTP_si_StorageDescription, align 8
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = add i64 %68, %71
  %73 = add i64 %72, 1
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  %75 = call i32 @PTP_GetString(i32 %66, i32* %74, i32* %9)
  ret void
}

declare dso_local i8* @LE16(i32*) #1

declare dso_local i8* @LE64(i32*) #1

declare dso_local i32 @LE32(i32*) #1

declare dso_local i32 @PTP_GetString(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
