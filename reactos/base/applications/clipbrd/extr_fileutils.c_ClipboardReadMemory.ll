; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_fileutils.c_ClipboardReadMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_fileutils.c_ClipboardReadMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@CLIP_FMT_31 = common dso_local global i64 0, align 8
@CLIP_FMT_NT = common dso_local global i64 0, align 8
@CLIP_FMT_BK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i64, i64)* @ClipboardReadMemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ClipboardReadMemory(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @ClipboardReadMemoryBlock(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %7, align 4
  br label %72

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 49152
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp sle i32 %28, 65535
  br i1 %29, label %30, label %59

30:                                               ; preds = %27
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @CLIP_FMT_31, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, i64* %13, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @RegisterClipboardFormatA(i32 %36)
  store i32 %37, i32* %15, align 4
  br label %51

38:                                               ; preds = %30
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @CLIP_FMT_NT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @CLIP_FMT_BK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %38
  %47 = load i64, i64* %13, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @RegisterClipboardFormatW(i32 %48)
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @GlobalFree(i32 %55)
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %7, align 4
  br label %72

58:                                               ; preds = %51
  br label %61

59:                                               ; preds = %27, %24
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @SetClipboardData(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @GlobalFree(i32 %67)
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %7, align 4
  br label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %66, %54, %22
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @ClipboardReadMemoryBlock(i32, i32, i32) #1

declare dso_local i32 @RegisterClipboardFormatA(i32) #1

declare dso_local i32 @RegisterClipboardFormatW(i32) #1

declare dso_local i32 @GlobalFree(i32) #1

declare dso_local i32 @SetClipboardData(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
