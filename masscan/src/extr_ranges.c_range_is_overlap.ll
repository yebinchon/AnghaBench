; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_range_is_overlap.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_range_is_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @range_is_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @range_is_overlap(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Range, align 4
  %5 = alloca %struct.Range, align 4
  %6 = bitcast %struct.Range* %4 to i64*
  store i64 %0, i64* %6, align 4
  %7 = bitcast %struct.Range* %5 to i64*
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.Range, %struct.Range* %5, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.Range, %struct.Range* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %13
  store i32 1, i32* %3, align 4
  br label %74

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %2
  %27 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.Range, %struct.Range* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %28, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.Range, %struct.Range* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %74

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %26
  %41 = getelementptr inbounds %struct.Range, %struct.Range* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.Range, %struct.Range* %5, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Range, %struct.Range* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50, %46
  store i32 1, i32* %3, align 4
  br label %74

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %40
  %60 = getelementptr inbounds %struct.Range, %struct.Range* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.Range, %struct.Range* %5, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sle i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %74

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %59
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %71, %57, %38, %24
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
