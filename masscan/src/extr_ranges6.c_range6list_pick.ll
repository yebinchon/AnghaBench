; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_pick.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_pick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range6List = type { i64, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @range6list_pick(%struct.Range6List* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Range6List*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.Range6List* %0, %struct.Range6List** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %12 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %15 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %18 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %10, align 8
  %20 = load i64*, i64** %10, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @range6list_pick_linearsearch(%struct.Range6List* %23, i64 %24)
  store i32 %25, i32* %3, align 4
  br label %85

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %69, %40, %26
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %29, %30
  %32 = udiv i64 %31, 2
  %33 = add i64 %28, %32
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i64, i64* %9, align 8
  store i64 %41, i64* %8, align 8
  br label %27

42:                                               ; preds = %27
  %43 = load i64, i64* %5, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %43, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  %52 = load i64, i64* %6, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %70

55:                                               ; preds = %49
  %56 = load i64, i64* %5, align 8
  %57 = load i64*, i64** %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %70

64:                                               ; preds = %55
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %42
  br label %27

70:                                               ; preds = %63, %54
  %71 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %72 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %5, align 8
  %79 = load i64*, i64** %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %78, %82
  %84 = call i32 @ADD1(i32 %77, i64 %83)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %70, %22
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @range6list_pick_linearsearch(%struct.Range6List*, i64) #1

declare dso_local i32 @ADD1(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
