; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_fileutils.c_ClipboardReadPalette.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_fileutils.c_ClipboardReadPalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@CF_PALETTE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ClipboardReadPalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ClipboardReadPalette(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ClipboardReadMemoryBlock(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @GlobalLock(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @GlobalFree(i32 %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %4, align 4
  br label %56

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @CreatePalette(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @GlobalUnlock(i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @GlobalFree(i32 %36)
  %38 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %39 = call i32 @SetLastError(i32 %38)
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %28
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @GlobalUnlock(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @GlobalFree(i32 %44)
  %46 = load i32, i32* @CF_PALETTE, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @SetClipboardData(i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @DeleteObject(i32 %51)
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %50, %33, %24, %17
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ClipboardReadMemoryBlock(i32, i32, i32) #1

declare dso_local i32 @GlobalLock(i32) #1

declare dso_local i32 @GlobalFree(i32) #1

declare dso_local i32 @CreatePalette(i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @SetClipboardData(i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
