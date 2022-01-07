; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_iso.c_IsoBufferDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_iso.c_IsoBufferDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [69 x i8] c"IsoBufferDirectory() DirectoryStartSector = %d DirectoryLength = %d\0A\00", align 1
@SECTORSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Trying to read (DirectoryCount) %d sectors.\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Trying to allocate (DirectoryLength) %d bytes.\0A\00", align 1
@TAG_ISO_BUFFER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@SeekAbsolute = common dso_local global i32 0, align 4
@ESUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i64*)* @IsoBufferDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IsoBufferDirectory(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SECTORSIZE, align 4
  %20 = call i32 @ROUND_UP(i32 %18, i32 %19)
  %21 = load i32, i32* @SECTORSIZE, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @TAG_ISO_BUFFER, align 4
  %29 = call i64 @FrLdrTempAlloc(i32 %27, i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %4
  %33 = load i64, i64* @ENOMEM, align 8
  store i64 %33, i64* %5, align 8
  br label %76

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SECTORSIZE, align 4
  %38 = mul nsw i32 %36, %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SeekAbsolute, align 4
  %42 = call i64 @ArcSeek(i32 %40, %struct.TYPE_3__* %12, i32 %41)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* @ESUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* @TAG_ISO_BUFFER, align 4
  %49 = call i32 @FrLdrTempFree(i64 %47, i32 %48)
  %50 = load i64, i64* %14, align 8
  store i64 %50, i64* %5, align 8
  br label %76

51:                                               ; preds = %34
  %52 = load i32, i32* %6, align 4
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @SECTORSIZE, align 4
  %56 = mul nsw i32 %54, %55
  %57 = call i64 @ArcRead(i32 %52, i64 %53, i32 %56, i32* %13)
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* @ESUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @SECTORSIZE, align 4
  %65 = mul nsw i32 %63, %64
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61, %51
  %68 = load i64, i64* %10, align 8
  %69 = load i32, i32* @TAG_ISO_BUFFER, align 4
  %70 = call i32 @FrLdrTempFree(i64 %68, i32 %69)
  %71 = load i64, i64* @EIO, align 8
  store i64 %71, i64* %5, align 8
  br label %76

72:                                               ; preds = %61
  %73 = load i64, i64* %10, align 8
  %74 = load i64*, i64** %9, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* @ESUCCESS, align 8
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %72, %67, %46, %32
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @ROUND_UP(i32, i32) #1

declare dso_local i64 @FrLdrTempAlloc(i32, i32) #1

declare dso_local i64 @ArcSeek(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @FrLdrTempFree(i64, i32) #1

declare dso_local i64 @ArcRead(i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
