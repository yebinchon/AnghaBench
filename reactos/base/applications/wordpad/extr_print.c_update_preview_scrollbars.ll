; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_update_preview_scrollbars.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_update_preview_scrollbars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64 }

@SIF_PAGE = common dso_local global i32 0, align 4
@SIF_RANGE = common dso_local global i32 0, align 4
@preview = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@SB_HORZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SB_VERT = common dso_local global i32 0, align 4
@min_spacing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_10__*)* @update_preview_scrollbars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_preview_scrollbars(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 24, i32* %6, align 8
  %7 = load i32, i32* @SIF_PAGE, align 4
  %8 = load i32, i32* @SIF_RANGE, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 0), align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SB_HORZ, align 4
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32 @SetScrollInfo(i32 %20, i32 %21, %struct.TYPE_9__* %5, i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SB_VERT, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @SetScrollInfo(i32 %28, i32 %29, %struct.TYPE_9__* %5, i32 %30)
  br label %66

32:                                               ; preds = %2
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 2, i32 0), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 1), align 8
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* @min_spacing, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 1), align 8
  %38 = add nsw i32 %37, 1
  %39 = mul nsw i32 %36, %38
  %40 = add nsw i32 %35, %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @SB_HORZ, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i32 @SetScrollInfo(i32 %46, i32 %47, %struct.TYPE_9__* %5, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = call i32 @GetClientRect(i32 %50, %struct.TYPE_10__* %51)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 2, i32 1), align 4
  %54 = load i32, i32* @min_spacing, align 4
  %55 = mul nsw i32 %54, 2
  %56 = add nsw i32 %53, %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @SB_VERT, align 4
  %64 = load i32, i32* @TRUE, align 4
  %65 = call i32 @SetScrollInfo(i32 %62, i32 %63, %struct.TYPE_9__* %5, i32 %64)
  br label %66

66:                                               ; preds = %32, %14
  ret void
}

declare dso_local i32 @SetScrollInfo(i32, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
