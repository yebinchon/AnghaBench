; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_win32.c_RestoreConsoleBuffer.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_win32.c_RestoreConsoleBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_14__, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@g_hConOut = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i64)* @RestoreConsoleBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @RestoreConsoleBuffer(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = icmp eq %struct.TYPE_12__* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10, %2
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %3, align 8
  br label %128

17:                                               ; preds = %10
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ClearConsoleBuffer(i32 %24)
  br label %26

26:                                               ; preds = %20, %17
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* @TRUE, align 8
  %31 = bitcast %struct.TYPE_14__* %29 to { i64, i64 }*
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @FitConsoleWindow(i64 %33, i64 %35, i64 %30)
  %37 = load i32, i32* @g_hConOut, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = bitcast %struct.TYPE_14__* %40 to { i64, i64 }*
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @SetConsoleScreenBufferSize(i32 %37, i64 %43, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %26
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %3, align 8
  br label %128

50:                                               ; preds = %26
  %51 = load i32, i32* @g_hConOut, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @SetConsoleTextAttribute(i32 %51, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = load i64, i64* @FALSE, align 8
  store i64 %59, i64* %3, align 8
  br label %128

60:                                               ; preds = %50
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* @TRUE, align 8
  store i64 %64, i64* %3, align 8
  br label %128

65:                                               ; preds = %60
  %66 = load i32, i32* @g_hConOut, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SetConsoleCursorPosition(i32 %66, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %65
  %74 = load i64, i64* @FALSE, align 8
  store i64 %74, i64* %3, align 8
  br label %128

75:                                               ; preds = %65
  %76 = load i32, i32* @g_hConOut, align 4
  %77 = load i64, i64* @TRUE, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = call i32 @SetConsoleWindowInfo(i32 %76, i64 %77, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %75
  %84 = load i64, i64* @FALSE, align 8
  store i64 %84, i64* %3, align 8
  br label %128

85:                                               ; preds = %75
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %126

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i64 %100, i64* %101, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %106, 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i64 %107, i64* %108, align 8
  %109 = load i32, i32* @g_hConOut, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = bitcast %struct.TYPE_13__* %6 to { i64, i64 }*
  %117 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %116, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @WriteConsoleOutput(i32 %109, i32* %112, i32 %115, i64 %118, i64 %120, %struct.TYPE_11__* %7)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %90
  %124 = load i64, i64* @FALSE, align 8
  store i64 %124, i64* %3, align 8
  br label %128

125:                                              ; preds = %90
  br label %126

126:                                              ; preds = %125, %85
  %127 = load i64, i64* @TRUE, align 8
  store i64 %127, i64* %3, align 8
  br label %128

128:                                              ; preds = %126, %123, %83, %73, %63, %58, %48, %15
  %129 = load i64, i64* %3, align 8
  ret i64 %129
}

declare dso_local i32 @ClearConsoleBuffer(i32) #1

declare dso_local i32 @FitConsoleWindow(i64, i64, i64) #1

declare dso_local i32 @SetConsoleScreenBufferSize(i32, i64, i64) #1

declare dso_local i32 @SetConsoleTextAttribute(i32, i32) #1

declare dso_local i32 @SetConsoleCursorPosition(i32, i32) #1

declare dso_local i32 @SetConsoleWindowInfo(i32, i64, i32*) #1

declare dso_local i32 @WriteConsoleOutput(i32, i32*, i32, i64, i64, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
