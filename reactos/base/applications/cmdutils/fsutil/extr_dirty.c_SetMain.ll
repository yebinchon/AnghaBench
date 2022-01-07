; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_dirty.c_SetMain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_dirty.c_SetMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Usage: fsutil dirty set <volume>\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\09For example: fsutil dirty set c:\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FSCTL_MARK_VOLUME_DIRTY = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"The %s volume is now marked as dirty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @SetMain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetMain(i32 %0, i32** %1) #0 {
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
  %12 = call i32 @_T(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i32, i32, ...) @_ftprintf(i32 %11, i32 %12)
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @_T(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 (i32, i32, ...) @_ftprintf(i32 %14, i32 %15)
  store i32 1, i32* %3, align 4
  br label %48

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
  br label %48

28:                                               ; preds = %17
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* @FSCTL_MARK_VOLUME_DIRTY, align 4
  %31 = call i64 @DeviceIoControl(i64 %29, i32 %30, i32* null, i32 0, i32* null, i32 0, i32* %7, i32* null)
  %32 = load i64, i64* @FALSE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 @PrintErrorMessage(i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @CloseHandle(i64 %37)
  store i32 1, i32* %3, align 4
  br label %48

39:                                               ; preds = %28
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @CloseHandle(i64 %40)
  %42 = load i32, i32* @stdout, align 4
  %43 = call i32 @_T(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32**, i32*** %5, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 (i32, i32, ...) @_ftprintf(i32 %42, i32 %43, i32* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %39, %34, %27, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @_ftprintf(i32, i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @OpenVolume(i32*, i64, i64) #1

declare dso_local i64 @DeviceIoControl(i64, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @PrintErrorMessage(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
