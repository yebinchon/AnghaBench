; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_draw_preview.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_draw_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@preview = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@WHITE_BRUSH = common dso_local global i32 0, align 4
@EM_FORMATRANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*, i32*, i32)* @draw_preview to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_preview(i32 %0, %struct.TYPE_8__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @preview, i32 0, i32 0), align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  store i32 32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @preview, i32 0, i32 1), align 8
  %14 = call i32 (...) @GetProcessHeap()
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @preview, i32 0, i32 1), align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32* @HeapAlloc(i32 %14, i32 0, i32 %18)
  store i32* %19, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @preview, i32 0, i32 0), align 8
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @preview, i32 0, i32 0), align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %100

23:                                               ; preds = %13
  br label %45

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @preview, i32 0, i32 1), align 8
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @preview, i32 0, i32 0), align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @preview, i32 0, i32 1), align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = mul i64 %33, 2
  %35 = trunc i64 %34 to i32
  %36 = call i32* @HeapReAlloc(i32 %29, i32 0, i32* %30, i32 %35)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %100

40:                                               ; preds = %28
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @preview, i32 0, i32 1), align 8
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @preview, i32 0, i32 1), align 8
  %43 = load i32*, i32** %10, align 8
  store i32* %43, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @preview, i32 0, i32 0), align 8
  br label %44

44:                                               ; preds = %40, %24
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @WHITE_BRUSH, align 4
  %51 = call i32 @GetStockObject(i32 %50)
  %52 = call i32 @FillRect(i32 %48, i32* %49, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, 1
  %58 = call i64 @is_last_preview_page(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %100

61:                                               ; preds = %55, %45
  %62 = load i32, i32* %8, align 4
  %63 = icmp sle i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %72

65:                                               ; preds = %61
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @preview, i32 0, i32 0), align 8
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  br label %72

72:                                               ; preds = %65, %64
  %73 = phi i32 [ 0, %64 ], [ %71, %65 ]
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @EM_FORMATRANGE, align 4
  %83 = load i32, i32* @TRUE, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = ptrtoint %struct.TYPE_8__* %84 to i32
  %86 = call i32 @SendMessageW(i32 %81, i32 %82, i32 %83, i32 %85)
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @preview, i32 0, i32 0), align 8
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @EM_FORMATRANGE, align 4
  %98 = load i32, i32* @FALSE, align 4
  %99 = call i32 @SendMessageW(i32 %96, i32 %97, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %72, %60, %39, %22
  ret void
}

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32* @HeapReAlloc(i32, i32, i32*, i32) #1

declare dso_local i32 @FillRect(i32, i32*, i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i64 @is_last_preview_page(i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
