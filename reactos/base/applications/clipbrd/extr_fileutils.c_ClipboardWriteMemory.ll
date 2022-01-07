; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_fileutils.c_ClipboardWriteMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_fileutils.c_ClipboardWriteMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@FILE_BEGIN = common dso_local global i32 0, align 4
@INVALID_SET_FILE_POINTER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @ClipboardWriteMemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ClipboardWriteMemory(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @GetClipboardData(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %5, align 4
  br label %55

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @GlobalLock(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %5, align 4
  br label %55

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @GlobalSize(i32 %27)
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @FILE_BEGIN, align 4
  %33 = call i64 @SetFilePointer(i32 %30, i32 %31, i32* null, i32 %32)
  %34 = load i64, i64* @INVALID_SET_FILE_POINTER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @GlobalUnlock(i32 %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %5, align 4
  br label %55

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @WriteFile(i32 %41, i32 %42, i32 %44, i32* %12, i32* null)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @GlobalUnlock(i32 %48)
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %5, align 4
  br label %55

51:                                               ; preds = %40
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @GlobalUnlock(i32 %52)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %47, %36, %24, %17
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @GetClipboardData(i32) #1

declare dso_local i32 @GlobalLock(i32) #1

declare dso_local i32 @GlobalSize(i32) #1

declare dso_local i64 @SetFilePointer(i32, i32, i32*, i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @WriteFile(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
