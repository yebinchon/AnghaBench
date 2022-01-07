; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_volume.c_DismountMain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_volume.c_DismountMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Usage: fsutil volume dismount <volume>\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\09For example: fsutil volume dismount d:\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FSCTL_DISMOUNT_VOLUME = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"The %s volume has been dismounted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @DismountMain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DismountMain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @_T(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i32, i32, ...) @_ftprintf(i32 %11, i32 %12)
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @_T(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 (i32, i32, ...) @_ftprintf(i32 %14, i32 %15)
  store i32 1, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load i32**, i32*** %5, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @FALSE, align 8
  %22 = load i64, i64* @FALSE, align 8
  %23 = call i64 @OpenVolume(i32* %20, i64 %21, i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %62

28:                                               ; preds = %17
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @TRUE, align 8
  %31 = call i64 @LockOrUnlockVolume(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @CloseHandle(i64 %34)
  store i32 1, i32* %3, align 4
  br label %62

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @FSCTL_DISMOUNT_VOLUME, align 4
  %39 = call i64 @DeviceIoControl(i64 %37, i32 %38, i32* null, i32 0, i32* null, i32 0, i32* %7, i32* null)
  %40 = load i64, i64* @FALSE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 @PrintErrorMessage(i32 %43)
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @FALSE, align 8
  %47 = call i64 @LockOrUnlockVolume(i64 %45, i64 %46)
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @CloseHandle(i64 %48)
  store i32 1, i32* %3, align 4
  br label %62

50:                                               ; preds = %36
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @FALSE, align 8
  %53 = call i64 @LockOrUnlockVolume(i64 %51, i64 %52)
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @CloseHandle(i64 %54)
  %56 = load i32, i32* @stdout, align 4
  %57 = call i32 @_T(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32**, i32*** %5, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 (i32, i32, ...) @_ftprintf(i32 %56, i32 %57, i32* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %50, %42, %33, %27, %10
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @_ftprintf(i32, i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @OpenVolume(i32*, i64, i64) #1

declare dso_local i64 @LockOrUnlockVolume(i64, i64) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @DeviceIoControl(i64, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @PrintErrorMessage(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
