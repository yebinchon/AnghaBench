; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/charmap/extr_map.c_OnVScroll.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/charmap/extr_map.c_OnVScroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@YCELLS = common dso_local global i64 0, align 8
@SW_HIDE = common dso_local global i32 0, align 4
@SB_VERT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SW_INVALIDATE = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32)* @OnVScroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnVScroll(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %45 [
    i32 131, label %15
    i32 132, label %20
    i32 129, label %25
    i32 130, label %33
    i32 128, label %41
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  br label %46

25:                                               ; preds = %3
  %26 = load i64, i64* @YCELLS, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  br label %46

33:                                               ; preds = %3
  %34 = load i64, i64* @YCELLS, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  br label %46

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %46

45:                                               ; preds = %3
  br label %46

46:                                               ; preds = %45, %41, %33, %25, %20, %15
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @max(i32 0, i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @min(i32 %55, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %62, %65
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %134

69:                                               ; preds = %46
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @SW_HIDE, align 4
  %79 = call i32 @ShowWindow(i32* %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %69
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SB_VERT, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TRUE, align 4
  %89 = call i32 @SetScrollPos(i32 %83, i32 %84, i32 %87, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = call i64 @abs(i32 %90)
  %92 = load i64, i64* @YCELLS, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %80
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @GetClientRect(i32 %97, %struct.TYPE_9__* %10)
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %99, align 4
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 2
  store i32 %104, i32* %102, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %108, %112
  %114 = load i32, i32* @SW_INVALIDATE, align 4
  %115 = call i32 @ScrollWindowEx(i32 %107, i32 0, i32 %113, %struct.TYPE_9__* %10, %struct.TYPE_9__* %10, i32* null, i32* null, i32 %114)
  br label %122

116:                                              ; preds = %80
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @TRUE, align 4
  %121 = call i32 @InvalidateRect(i32 %119, i32* null, i32 %120)
  br label %122

122:                                              ; preds = %116, %94
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @SW_SHOW, align 4
  %132 = call i32 @ShowWindow(i32* %130, i32 %131)
  br label %133

133:                                              ; preds = %127, %122
  br label %134

134:                                              ; preds = %133, %46
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ShowWindow(i32*, i32) #1

declare dso_local i32 @SetScrollPos(i32, i32, i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ScrollWindowEx(i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*, i32*, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
