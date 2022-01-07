; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_BtrFsOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_BtrFsOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"BtrFsOpen %s\0A\00", align 1
@OpenReadOnly = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@BtrFsInfo = common dso_local global %struct.TYPE_9__* null, align 8
@INVALID_INODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot lookup file %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@BTRFS_FT_REG_FILE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Not a regular file: %s\0A\00", align 1
@EISDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"found inode inr=%llu size=%llu\0A\00", align 1
@TAG_BTRFS_FILE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ESUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BtrFsOpen(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @OpenReadOnly, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EACCES, align 4
  store i32 %19, i32* %4, align 4
  br label %70

20:                                               ; preds = %3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @BtrFsInfo, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @BtrFsInfo, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %29 = call i32 @btrfs_lookup_path(%struct.TYPE_7__* %22, i32 %26, i32* %27, i64* %9, %struct.TYPE_8__* %28, i32 40)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @INVALID_INODE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load i32*, i32** %5, align 8
  %35 = ptrtoint i32* %34 to i32
  %36 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENOENT, align 4
  store i32 %37, i32* %4, align 4
  br label %70

38:                                               ; preds = %20
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @BTRFS_FT_REG_FILE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = ptrtoint i32* %43 to i32
  %45 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EISDIR, align 4
  store i32 %46, i32* %4, align 4
  br label %70

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @TAG_BTRFS_FILE, align 4
  %57 = call i32 @FrLdrTempAlloc(i32 16, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %4, align 4
  br label %70

62:                                               ; preds = %47
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @memcpy(i32 %63, %struct.TYPE_6__* %10, i32 16)
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @FsSetDeviceSpecific(i32 %66, i32 %67)
  %69 = load i32, i32* @ESUCCESS, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %62, %60, %42, %33, %18
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @btrfs_lookup_path(%struct.TYPE_7__*, i32, i32*, i64*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @FrLdrTempAlloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @FsSetDeviceSpecific(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
