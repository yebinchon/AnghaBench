; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_DrawFlatHorizontalSeparator.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_DrawFlatHorizontalSeparator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"rect=(%s)\0A\00", align 1
@CLR_DEFAULT = common dso_local global i64 0, align 8
@comctl32_color = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@ETO_OPAQUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, %struct.TYPE_9__*)* @TOOLBAR_DrawFlatHorizontalSeparator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLBAR_DrawFlatHorizontalSeparator(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = sub nsw i32 %27, 2
  %29 = sdiv i32 %28, 2
  %30 = add nsw i32 %20, %29
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = call i32 @InflateRect(%struct.TYPE_10__* %7, i32 -2, i32 0)
  %37 = call i32 @wine_dbgstr_rect(%struct.TYPE_10__* %7)
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CLR_DEFAULT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @comctl32_color, i32 0, i32 0), align 8
  br label %50

46:                                               ; preds = %3
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i64 [ %45, %44 ], [ %49, %46 ]
  store i64 %51, i64* %9, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @SetBkColor(i32 %52, i64 %53)
  store i64 %54, i64* %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @ETO_OPAQUE, align 4
  %57 = call i32 @ExtTextOutW(i32 %55, i32 0, i32 0, i32 %56, %struct.TYPE_10__* %7, i32 0, i32 0, i32 0)
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CLR_DEFAULT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %50
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @comctl32_color, i32 0, i32 1), align 8
  br label %76

72:                                               ; preds = %50
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  br label %76

76:                                               ; preds = %72, %70
  %77 = phi i64 [ %71, %70 ], [ %75, %72 ]
  store i64 %77, i64* %9, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i64, i64* %9, align 8
  %80 = call i64 @SetBkColor(i32 %78, i64 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @ETO_OPAQUE, align 4
  %83 = call i32 @ExtTextOutW(i32 %81, i32 0, i32 0, i32 %82, %struct.TYPE_10__* %7, i32 0, i32 0, i32 0)
  %84 = load i32, i32* %5, align 4
  %85 = load i64, i64* %8, align 8
  %86 = call i64 @SetBkColor(i32 %84, i64 %85)
  ret void
}

declare dso_local i32 @InflateRect(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_10__*) #1

declare dso_local i64 @SetBkColor(i32, i64) #1

declare dso_local i32 @ExtTextOutW(i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
