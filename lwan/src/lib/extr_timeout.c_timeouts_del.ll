; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_timeout.c_timeouts_del.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_timeout.c_timeouts_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeouts = type { i64*, i32**, i32 }
%struct.timeout = type { i32*, i32 }

@WHEEL_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timeouts_del(%struct.timeouts* %0, %struct.timeout* %1) #0 {
  %3 = alloca %struct.timeouts*, align 8
  %4 = alloca %struct.timeout*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.timeouts* %0, %struct.timeouts** %3, align 8
  store %struct.timeout* %1, %struct.timeout** %4, align 8
  %8 = load %struct.timeout*, %struct.timeout** %4, align 8
  %9 = getelementptr inbounds %struct.timeout, %struct.timeout* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %65

12:                                               ; preds = %2
  %13 = load %struct.timeout*, %struct.timeout** %4, align 8
  %14 = getelementptr inbounds %struct.timeout, %struct.timeout* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.timeout*, %struct.timeout** %4, align 8
  %17 = getelementptr inbounds %struct.timeout, %struct.timeout* %16, i32 0, i32 1
  %18 = call i32 @list_del_from(i32* %15, i32* %17)
  %19 = load %struct.timeout*, %struct.timeout** %4, align 8
  %20 = getelementptr inbounds %struct.timeout, %struct.timeout* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.timeouts*, %struct.timeouts** %3, align 8
  %23 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %22, i32 0, i32 2
  %24 = icmp ne i32* %21, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %12
  %26 = load %struct.timeout*, %struct.timeout** %4, align 8
  %27 = getelementptr inbounds %struct.timeout, %struct.timeout* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @list_empty(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %25
  %32 = load %struct.timeout*, %struct.timeout** %4, align 8
  %33 = getelementptr inbounds %struct.timeout, %struct.timeout* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.timeouts*, %struct.timeouts** %3, align 8
  %36 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = ptrtoint i32* %34 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @WHEEL_LEN, align 8
  %47 = udiv i64 %45, %46
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @WHEEL_LEN, align 8
  %50 = urem i64 %48, %49
  store i64 %50, i64* %7, align 8
  %51 = call i64 @WHEEL_C(i32 1)
  %52 = load i64, i64* %7, align 8
  %53 = shl i64 %51, %52
  %54 = xor i64 %53, -1
  %55 = load %struct.timeouts*, %struct.timeouts** %3, align 8
  %56 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = and i64 %60, %54
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %31, %25, %12
  %63 = load %struct.timeout*, %struct.timeout** %4, align 8
  %64 = getelementptr inbounds %struct.timeout, %struct.timeout* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %62, %2
  ret void
}

declare dso_local i32 @list_del_from(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @WHEEL_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
