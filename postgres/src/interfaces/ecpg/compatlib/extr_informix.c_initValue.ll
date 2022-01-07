; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/compatlib/extr_informix.c_initValue.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/compatlib/extr_informix.c_initValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8, i32, i32, i32, i8* }

@value = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @initValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initValue(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  br label %15

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = mul nsw i64 %13, -1
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i64 [ %11, %10 ], [ %14, %12 ]
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 0), align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp sge i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 43, i32 45
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 1), align 8
  %22 = call i32 @log10(i32 2)
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 63
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 2), align 4
  store i32 0, i32* %4, align 4
  store i64 1, i64* %6, align 8
  br label %26

26:                                               ; preds = %42, %15
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load i64, i64* %6, align 8
  %30 = mul nsw i64 %29, 10
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = sub nsw i64 %32, 1
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 0), align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @LONG_MAX, align 4
  %39 = sdiv i32 %38, 10
  %40 = sext i32 %39 to i64
  %41 = icmp sle i64 %37, %40
  br label %42

42:                                               ; preds = %36, %31
  %43 = phi i1 [ false, %31 ], [ %41, %36 ]
  br i1 %43, label %26, label %44

44:                                               ; preds = %42
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @LONG_MAX, align 4
  %47 = sdiv i32 %46, 10
  %48 = sext i32 %47 to i64
  %49 = icmp sle i64 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 3), align 8
  %52 = load i64, i64* %6, align 8
  %53 = sdiv i64 %52, 10
  store i64 %53, i64* %6, align 8
  br label %57

54:                                               ; preds = %44
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 3), align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 3), align 8
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 4), align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 3), align 8
  %60 = add nsw i32 %59, 1
  %61 = call i64 @malloc(i32 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 5), align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -1, i32* %2, align 4
  br label %96

65:                                               ; preds = %57
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 0), align 8
  store i64 %66, i64* %7, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 3), align 8
  store i32 %67, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %86, %65
  %69 = load i32, i32* %4, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %6, align 8
  %74 = sdiv i64 %72, %73
  %75 = add nsw i64 %74, 48
  %76 = trunc i64 %75 to i8
  %77 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 5), align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 %76, i8* %80, align 1
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %6, align 8
  %83 = srem i64 %81, %82
  store i64 %83, i64* %7, align 8
  %84 = load i64, i64* %6, align 8
  %85 = sdiv i64 %84, 10
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %71
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %68

91:                                               ; preds = %68
  %92 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 5), align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 3), align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 0, i8* %95, align 1
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %64
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @log10(i32) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
