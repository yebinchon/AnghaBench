; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_clock.c_DrawClock.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_clock.c_DrawClock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@OBJ_PEN = common dso_local global i32 0, align 4
@BLACK_PEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*)* @DrawClock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DrawClock(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x %struct.TYPE_5__], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = call i32* @SelectObject(i32 %10, i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @OBJ_PEN, align 4
  %17 = call i32* @GetCurrentObject(i32 %15, i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @min(i32 %20, i32 %23)
  %25 = mul nsw i32 %24, 2
  store i32 %25, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %109, %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 360
  br i1 %28, label %29, label %112

29:                                               ; preds = %26
  %30 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 16
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @RotatePoint(%struct.TYPE_5__* %35, i32 1, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = srem i32 %38, 5
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 7, i32* %43, align 4
  %44 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 7, i32* %45, align 16
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32* @SelectObject(i32 %46, i32* %49)
  br label %60

51:                                               ; preds = %29
  %52 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 16, i32* %53, align 4
  %54 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 16, i32* %55, align 16
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @BLACK_PEN, align 4
  %58 = call i32* @GetStockObject(i32 %57)
  %59 = call i32* @SelectObject(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %51, %41
  %61 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 16
  %64 = sdiv i32 %63, 2
  %65 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 16
  %68 = sub nsw i32 %67, %64
  store i32 %68, i32* %66, align 16
  %69 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 2
  %73 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 16
  %80 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 16
  %83 = add nsw i32 %79, %82
  %84 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  %93 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %3, align 4
  %96 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 16
  %99 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %7, i64 0, i64 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @Ellipse(i32 %95, i32 %98, i32 %101, i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %60
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 6
  store i32 %111, i32* %5, align 4
  br label %26

112:                                              ; preds = %26
  %113 = load i32, i32* %3, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = call i32* @SelectObject(i32 %113, i32* %114)
  %116 = load i32, i32* %3, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = call i32* @SelectObject(i32 %116, i32* %117)
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32* @SelectObject(i32, i32*) #1

declare dso_local i32* @GetCurrentObject(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @RotatePoint(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @Ellipse(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
