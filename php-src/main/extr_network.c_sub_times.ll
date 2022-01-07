; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_network.c_sub_times.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_network.c_sub_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, %struct.timeval*)* @sub_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sub_times(i64 %0, i64 %1, i64 %2, i64 %3, %struct.timeval* %4) #0 {
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval*, align 8
  %9 = bitcast %struct.timeval* %6 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %1, i64* %11, align 8
  %12 = bitcast %struct.timeval* %7 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %3, i64* %14, align 8
  store %struct.timeval* %4, %struct.timeval** %8, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %16, %18
  %20 = load %struct.timeval*, %struct.timeval** %8, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.timeval*, %struct.timeval** %8, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.timeval*, %struct.timeval** %8, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1000000
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %26, %5
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %36, %38
  %40 = load %struct.timeval*, %struct.timeval** %8, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.timeval*, %struct.timeval** %8, align 8
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load %struct.timeval*, %struct.timeval** %8, align 8
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.timeval*, %struct.timeval** %8, align 8
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1000000
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %46, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
