; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_GetTicPos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_GetTicPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64)* @TRACKBAR_GetTicPos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TRACKBAR_GetTicPos(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %13, %2
  store i32 -1, i32* %3, align 4
  br label %75

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @TRACKBAR_GetTic(%struct.TYPE_8__* %26, i64 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %43, %47
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %10, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %53, %57
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sub nsw i32 %58, %60
  store i32 %61, i32* %7, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = sdiv i32 %70, %71
  %73 = add nsw i32 %67, %72
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %39, %24
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @TRACKBAR_GetTic(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
