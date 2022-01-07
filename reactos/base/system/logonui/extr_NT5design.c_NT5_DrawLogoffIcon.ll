; ModuleID = '/home/carl/AnghaBench/reactos/base/system/logonui/extr_NT5design.c_NT5_DrawLogoffIcon.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/logonui/extr_NT5design.c_NT5_DrawLogoffIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@g_pInfo = common dso_local global %struct.TYPE_5__* null, align 8
@IDB_MAIN_ROS_LOGO = common dso_local global i32 0, align 4
@IMAGE_BITMAP = common dso_local global i32 0, align 4
@LR_DEFAULTCOLOR = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @NT5_DrawLogoffIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NT5_DrawLogoffIcon(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_pInfo, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IDB_MAIN_ROS_LOGO, align 4
  %11 = call i32 @MAKEINTRESOURCEW(i32 %10)
  %12 = load i32, i32* @IMAGE_BITMAP, align 4
  %13 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %14 = call i64 @LoadImageW(i32 %9, i32 %11, i32 %12, i32 0, i32 0, i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @GetObjectW(i64 %18, i32 8, %struct.TYPE_4__* %5)
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @CreateCompatibleDC(i64 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @SelectObject(i64 %25, i64 %26)
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_pInfo, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 2
  %33 = add nsw i32 %32, 35
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_pInfo, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 2
  %38 = sub nsw i32 %37, 72
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @SRCCOPY, align 4
  %45 = call i32 @BitBlt(i64 %28, i32 %33, i32 %38, i32 %40, i32 %42, i64 %43, i32 0, i32 0, i32 %44)
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @DeleteDC(i64 %46)
  br label %48

48:                                               ; preds = %24, %17
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @DeleteObject(i64 %49)
  br label %51

51:                                               ; preds = %48, %1
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @LoadImageW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @GetObjectW(i64, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @CreateCompatibleDC(i64) #1

declare dso_local i32 @SelectObject(i64, i64) #1

declare dso_local i32 @BitBlt(i64, i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i64) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
