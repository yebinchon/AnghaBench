; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@OpenReadOnly = common dso_local global i64 0, align 8
@OpenDirectory = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@FatVolumes = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"FatOpen() FileName = %s\0A\00", align 1
@ESUCCESS = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@TAG_FAT_FILE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FatOpen(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @OpenReadOnly, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @OpenDirectory, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @EACCES, align 8
  store i64 %22, i64* %4, align 8
  br label %85

23:                                               ; preds = %17, %3
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @FsGetDeviceId(i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i32*, i32** @FatVolumes, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %31)
  %33 = call i32 @RtlZeroMemory(%struct.TYPE_10__* %9, i32 4)
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @FatLookupFile(i32 %34, i32* %35, %struct.TYPE_10__* %9)
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* @ESUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load i64, i64* @ENOENT, align 8
  store i64 %41, i64* %4, align 8
  br label %85

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ATTR_DIRECTORY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @OpenDirectory, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* @EISDIR, align 8
  store i64 %56, i64* %4, align 8
  br label %85

57:                                               ; preds = %51, %42
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @OpenReadOnly, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i64, i64* @ENOTDIR, align 8
  store i64 %65, i64* %4, align 8
  br label %85

66:                                               ; preds = %60, %57
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* @TAG_FAT_FILE, align 4
  %69 = call %struct.TYPE_9__* @FrLdrTempAlloc(i32 4, i32 %68)
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %10, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = icmp ne %struct.TYPE_9__* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* @ENOMEM, align 8
  store i64 %73, i64* %4, align 8
  br label %85

74:                                               ; preds = %67
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %76 = call i32 @RtlCopyMemory(%struct.TYPE_9__* %75, %struct.TYPE_10__* %9, i32 4)
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i64*, i64** %7, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %83 = call i32 @FsSetDeviceSpecific(i64 %81, %struct.TYPE_9__* %82)
  %84 = load i64, i64* @ESUCCESS, align 8
  store i64 %84, i64* %4, align 8
  br label %85

85:                                               ; preds = %74, %72, %64, %55, %40, %21
  %86 = load i64, i64* %4, align 8
  ret i64 %86
}

declare dso_local i64 @FsGetDeviceId(i64) #1

declare dso_local i32 @TRACE(i8*, i32*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @FatLookupFile(i32, i32*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @FrLdrTempAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @FsSetDeviceSpecific(i64, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
