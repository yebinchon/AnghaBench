; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_tray.c_OnTrayInitDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_tray.c_OnTrayInitDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@HWND_TOPMOST = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @OnTrayInitDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnTrayInitDialog(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = call i32 @GetCursorPos(%struct.TYPE_6__* %8)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @GetWindowRect(i32 %16, %struct.TYPE_5__* %9)
  %18 = call i32 (...) @GetDesktopWindow()
  %19 = call i32 @GetWindowRect(i32 %18, %struct.TYPE_5__* %10)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %21, %23
  store i64 %24, i64* %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %26, %28
  store i64 %29, i64* %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %14, align 8
  %33 = add nsw i64 %31, %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %14, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %12, align 8
  br label %45

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %13, align 8
  %49 = add nsw i64 %47, %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %13, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %11, align 8
  br label %61

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @HWND_TOPMOST, align 4
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i32, i32* @SWP_NOSIZE, align 4
  %67 = call i32 @SetWindowPos(i32 %62, i32 %63, i64 %64, i64 %65, i32 0, i32 0, i32 %66)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @GetCursorPos(%struct.TYPE_6__*) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @GetDesktopWindow(...) #1

declare dso_local i32 @SetWindowPos(i32, i32, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
