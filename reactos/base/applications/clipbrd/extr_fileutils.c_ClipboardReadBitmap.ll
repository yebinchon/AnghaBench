; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_fileutils.c_ClipboardReadBitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_fileutils.c_ClipboardReadBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@FALSE = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@CF_BITMAP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ClipboardReadBitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ClipboardReadBitmap(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ClipboardReadMemoryBlock(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.TYPE_4__* @GlobalLock(i32 %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %10, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @GlobalFree(i32 %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %4, align 4
  br label %57

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = call i32 @CreateBitmapIndirect(%struct.TYPE_4__* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @GlobalUnlock(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @GlobalFree(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %28
  %43 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %44 = call i32 @SetLastError(i32 %43)
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %4, align 4
  br label %57

46:                                               ; preds = %28
  %47 = load i32, i32* @CF_BITMAP, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @SetClipboardData(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @DeleteObject(i32 %52)
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %51, %42, %24, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ClipboardReadMemoryBlock(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @GlobalLock(i32) #1

declare dso_local i32 @GlobalFree(i32) #1

declare dso_local i32 @CreateBitmapIndirect(%struct.TYPE_4__*) #1

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
