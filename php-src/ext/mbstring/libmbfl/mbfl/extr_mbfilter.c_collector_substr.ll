; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_collector_substr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_collector_substr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collector_substr_data = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.TYPE_2__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @collector_substr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collector_substr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.collector_substr_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.collector_substr_data*
  store %struct.collector_substr_data* %8, %struct.collector_substr_data** %6, align 8
  %9 = load %struct.collector_substr_data*, %struct.collector_substr_data** %6, align 8
  %10 = getelementptr inbounds %struct.collector_substr_data, %struct.collector_substr_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.collector_substr_data*, %struct.collector_substr_data** %6, align 8
  %13 = getelementptr inbounds %struct.collector_substr_data, %struct.collector_substr_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.collector_substr_data*, %struct.collector_substr_data** %6, align 8
  %19 = getelementptr inbounds %struct.collector_substr_data, %struct.collector_substr_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.collector_substr_data*, %struct.collector_substr_data** %6, align 8
  %22 = getelementptr inbounds %struct.collector_substr_data, %struct.collector_substr_data* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = load %struct.collector_substr_data*, %struct.collector_substr_data** %6, align 8
  %27 = getelementptr inbounds %struct.collector_substr_data, %struct.collector_substr_data* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.TYPE_2__*)*, i32 (i32, %struct.TYPE_2__*)** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.collector_substr_data*, %struct.collector_substr_data** %6, align 8
  %33 = getelementptr inbounds %struct.collector_substr_data, %struct.collector_substr_data* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 %30(i32 %31, %struct.TYPE_2__* %34)
  br label %36

36:                                               ; preds = %25, %17
  %37 = load %struct.collector_substr_data*, %struct.collector_substr_data** %6, align 8
  %38 = getelementptr inbounds %struct.collector_substr_data, %struct.collector_substr_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
