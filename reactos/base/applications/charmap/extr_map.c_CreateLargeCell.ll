; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/charmap/extr_map.c_CreateLargeCell.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/charmap/extr_map.c_CreateLargeCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }

@XLARGE = common dso_local global i64 0, align 8
@XCELLS = common dso_local global i64 0, align 8
@YLARGE = common dso_local global i64 0, align 8
@YCELLS = common dso_local global i64 0, align 8
@szLrgCellWndClass = common dso_local global i32 0, align 4
@WS_CHILDWINDOW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @CreateLargeCell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateLargeCell(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = call i32 @CopyRect(%struct.TYPE_9__* %4, i32* %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = bitcast %struct.TYPE_9__* %4 to i32*
  %17 = call i32 @MapWindowPoints(i32 %12, i32 %15, i32* %16, i32 2)
  %18 = load i64, i64* @XLARGE, align 8
  %19 = load i64, i64* @XCELLS, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load i64, i64* @YLARGE, align 8
  %22 = load i64, i64* @YCELLS, align 8
  %23 = sub nsw i64 %21, %22
  %24 = call i32 @InflateRect(%struct.TYPE_9__* %4, i64 %20, i64 %23)
  %25 = load i32, i32* @szLrgCellWndClass, align 4
  %26 = load i32, i32* @WS_CHILDWINDOW, align 4
  %27 = load i32, i32* @WS_VISIBLE, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %34, %36
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %39, %41
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @hInstance, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = call i32 @CreateWindowExW(i32 0, i32 %25, i32* null, i32 %28, i64 %30, i64 %32, i64 %37, i64 %42, i32 %45, i32* null, i32 %46, %struct.TYPE_10__* %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %1
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %2, align 4
  br label %59

57:                                               ; preds = %1
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @CopyRect(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @MapWindowPoints(i32, i32, i32*, i32) #1

declare dso_local i32 @InflateRect(%struct.TYPE_9__*, i64, i64) #1

declare dso_local i32 @CreateWindowExW(i32, i32, i32*, i32, i64, i64, i64, i64, i32, i32*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
