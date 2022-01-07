; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_ntfs.c_NtfsOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_ntfs.c_NtfsOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }

@OpenReadOnly = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@NtfsVolumes = common dso_local global %struct.TYPE_9__** null, align 8
@.str = private unnamed_addr constant [26 x i8] c"NtfsOpen() FileName = %s\0A\00", align 1
@TAG_NTFS_FILE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsOpen(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @OpenReadOnly, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EACCES, align 4
  store i32 %16, i32* %4, align 4
  br label %68

17:                                               ; preds = %3
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @FsGetDeviceId(i64 %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @NtfsVolumes, align 8
  %22 = load i64, i64* %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %21, i64 %22
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %8, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 4, %29
  %31 = load i32, i32* @TAG_NTFS_FILE, align 4
  %32 = call %struct.TYPE_10__* @FrLdrTempAlloc(i64 %30, i32 %31)
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %9, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %17
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %4, align 4
  br label %68

37:                                               ; preds = %17
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 4, %41
  %43 = call i32 @RtlZeroMemory(%struct.TYPE_10__* %38, i64 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %46, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 1
  %49 = ptrtoint %struct.TYPE_10__* %48 to i64
  store i64 %49, i64* %10, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = call i32 @NtfsLookupFile(%struct.TYPE_9__* %50, i32* %51, i64 %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %37
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = load i32, i32* @TAG_NTFS_FILE, align 4
  %60 = call i32 @FrLdrTempFree(%struct.TYPE_10__* %58, i32 %59)
  %61 = load i32, i32* @ENOENT, align 4
  store i32 %61, i32* %4, align 4
  br label %68

62:                                               ; preds = %37
  %63 = load i64*, i64** %7, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = call i32 @FsSetDeviceSpecific(i64 %64, %struct.TYPE_10__* %65)
  %67 = load i32, i32* @ESUCCESS, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %62, %57, %35, %15
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @FsGetDeviceId(i64) #1

declare dso_local i32 @TRACE(i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @FrLdrTempAlloc(i64, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @NtfsLookupFile(%struct.TYPE_9__*, i32*, i64, i32*) #1

declare dso_local i32 @FrLdrTempFree(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @FsSetDeviceSpecific(i64, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
