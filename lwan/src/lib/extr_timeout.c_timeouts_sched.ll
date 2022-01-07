; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_timeout.c_timeouts_sched.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_timeout.c_timeouts_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeouts = type { i64, i32*, i32, i32** }
%struct.timeout = type { i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeouts*, %struct.timeout*, i64)* @timeouts_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timeouts_sched(%struct.timeouts* %0, %struct.timeout* %1, i64 %2) #0 {
  %4 = alloca %struct.timeouts*, align 8
  %5 = alloca %struct.timeout*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timeouts* %0, %struct.timeouts** %4, align 8
  store %struct.timeout* %1, %struct.timeout** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.timeouts*, %struct.timeouts** %4, align 8
  %11 = load %struct.timeout*, %struct.timeout** %5, align 8
  %12 = call i32 @timeouts_del(%struct.timeouts* %10, %struct.timeout* %11)
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.timeout*, %struct.timeout** %5, align 8
  %15 = getelementptr inbounds %struct.timeout, %struct.timeout* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.timeouts*, %struct.timeouts** %4, align 8
  %18 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %3
  %22 = load %struct.timeouts*, %struct.timeouts** %4, align 8
  %23 = load %struct.timeout*, %struct.timeout** %5, align 8
  %24 = call i64 @timeout_rem(%struct.timeouts* %22, %struct.timeout* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @timeout_wheel(i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.timeout*, %struct.timeout** %5, align 8
  %29 = getelementptr inbounds %struct.timeout, %struct.timeout* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @timeout_slot(i32 %27, i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.timeouts*, %struct.timeouts** %4, align 8
  %33 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %32, i32 0, i32 3
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.timeout*, %struct.timeout** %5, align 8
  %43 = getelementptr inbounds %struct.timeout, %struct.timeout* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = call i32 @WHEEL_C(i32 1)
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 %44, %45
  %47 = load %struct.timeouts*, %struct.timeouts** %4, align 8
  %48 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %46
  store i32 %54, i32* %52, align 4
  br label %60

55:                                               ; preds = %3
  %56 = load %struct.timeouts*, %struct.timeouts** %4, align 8
  %57 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %56, i32 0, i32 2
  %58 = load %struct.timeout*, %struct.timeout** %5, align 8
  %59 = getelementptr inbounds %struct.timeout, %struct.timeout* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  br label %60

60:                                               ; preds = %55, %21
  %61 = load %struct.timeout*, %struct.timeout** %5, align 8
  %62 = getelementptr inbounds %struct.timeout, %struct.timeout* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.timeout*, %struct.timeout** %5, align 8
  %65 = getelementptr inbounds %struct.timeout, %struct.timeout* %64, i32 0, i32 0
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  ret void
}

declare dso_local i32 @timeouts_del(%struct.timeouts*, %struct.timeout*) #1

declare dso_local i64 @timeout_rem(%struct.timeouts*, %struct.timeout*) #1

declare dso_local i32 @timeout_wheel(i64) #1

declare dso_local i32 @timeout_slot(i32, i64) #1

declare dso_local i32 @WHEEL_C(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
