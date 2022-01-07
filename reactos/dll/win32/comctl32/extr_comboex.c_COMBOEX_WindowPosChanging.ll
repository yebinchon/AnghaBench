; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_WindowPosChanging.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_WindowPosChanging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i64, i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"winpos=(%d,%d %dx%d) flags=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"EX window=(%s), client=(%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"CB window=(%s), EX setting=(0,0)-(%d,%d)\0A\00", align 1
@HWND_TOP = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_10__*)* @COMBOEX_WindowPosChanging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBOEX_WindowPosChanging(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @GetWindowRect(i32 %12, %struct.TYPE_11__* %5)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @GetClientRect(i32 %16, %struct.TYPE_11__* %6)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @GetWindowRect(i32 %20, %struct.TYPE_11__* %7)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %26, %28
  %30 = add nsw i64 %24, %29
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %32, %34
  %36 = sub nsw i64 %30, %35
  store i64 %36, i64* %8, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i32, i64, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %43, i64 %46, i64 %49, i32 %52)
  %54 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %5)
  %55 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %6)
  %56 = sext i32 %55 to i64
  %57 = call i32 (i8*, i32, i64, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54, i64 %56)
  %58 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %5)
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %61, %63
  %65 = call i32 (i8*, i32, i64, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %58, i64 %59, i64 %64)
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %2
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @HWND_TOP, align 4
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %75, %77
  %79 = load i32, i32* @SWP_NOACTIVATE, align 4
  %80 = call i32 @SetWindowPos(i32 %71, i32 %72, i32 0, i32 0, i64 %73, i64 %78, i32 %79)
  br label %81

81:                                               ; preds = %68, %2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @GetWindowRect(i32 %84, %struct.TYPE_11__* %7)
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %87, %89
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %92, %94
  %96 = add nsw i64 %90, %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %98, %100
  %102 = sub nsw i64 %96, %101
  store i64 %102, i64* %9, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %81
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = call i32 @COMBOEX_AdjustEditPos(%struct.TYPE_12__* %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @TRUE, align 4
  %117 = call i32 @InvalidateRect(i32 %115, i32 0, i32 %116)
  br label %118

118:                                              ; preds = %110, %81
  ret i32 0
}

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @TRACE(i8*, i32, i64, ...) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_11__*) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @COMBOEX_AdjustEditPos(%struct.TYPE_12__*) #1

declare dso_local i32 @InvalidateRect(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
