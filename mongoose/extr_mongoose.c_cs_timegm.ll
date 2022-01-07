; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_cs_timegm.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_cs_timegm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i64, i32, i32, i32 }

@cs_timegm.month_day = internal constant [12 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cs_timegm(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tm* %0, %struct.tm** %2, align 8
  %7 = load %struct.tm*, %struct.tm** %2, align 8
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = srem i32 %9, 12
  store i32 %10, i32* %3, align 4
  %11 = load %struct.tm*, %struct.tm** %2, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tm*, %struct.tm** %2, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %16, 12
  %18 = add nsw i32 %13, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 12
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %1
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %31, %29 ], [ %33, %32 ]
  store i32 %35, i32* %5, align 4
  %36 = load %struct.tm*, %struct.tm** %2, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.tm*, %struct.tm** %2, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.tm*, %struct.tm** %2, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [12 x i32], [12 x i32]* @cs_timegm.month_day, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tm*, %struct.tm** %2, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %48, %51
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 70
  %56 = mul nsw i32 365, %55
  %57 = add nsw i32 %53, %56
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, 69
  %60 = sdiv i32 %59, 4
  %61 = add nsw i32 %57, %60
  %62 = load i32, i32* %5, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sdiv i32 %63, 100
  %65 = sub nsw i32 %61, %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 299
  %68 = sdiv i32 %67, 400
  %69 = add nsw i32 %65, %68
  %70 = mul nsw i32 24, %69
  %71 = add nsw i32 %44, %70
  %72 = mul nsw i32 60, %71
  %73 = add nsw i32 %41, %72
  %74 = mul nsw i32 60, %73
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %38, %75
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %34
  br label %83

80:                                               ; preds = %34
  %81 = load i64, i64* %6, align 8
  %82 = sitofp i64 %81 to double
  br label %83

83:                                               ; preds = %80, %79
  %84 = phi double [ -1.000000e+00, %79 ], [ %82, %80 ]
  ret double %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
