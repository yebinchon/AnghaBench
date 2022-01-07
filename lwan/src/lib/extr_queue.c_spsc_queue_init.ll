; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_queue.c_spsc_queue_init.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_queue.c_spsc_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spsc_queue = type { i64, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spsc_queue_init(%struct.spsc_queue* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spsc_queue*, align 8
  %5 = alloca i64, align 8
  store %struct.spsc_queue* %0, %struct.spsc_queue** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %43

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @lwan_nextpow2(i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add i64 1, %14
  %16 = trunc i64 %15 to i32
  %17 = call i32 @calloc(i32 %16, i32 4)
  %18 = load %struct.spsc_queue*, %struct.spsc_queue** %4, align 8
  %19 = getelementptr inbounds %struct.spsc_queue, %struct.spsc_queue* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.spsc_queue*, %struct.spsc_queue** %4, align 8
  %21 = getelementptr inbounds %struct.spsc_queue, %struct.spsc_queue* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %11
  %25 = load i32, i32* @errno, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %11
  %28 = load %struct.spsc_queue*, %struct.spsc_queue** %4, align 8
  %29 = getelementptr inbounds %struct.spsc_queue, %struct.spsc_queue* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ATOMIC_INIT(i32 %30, i32 0)
  %32 = load %struct.spsc_queue*, %struct.spsc_queue** %4, align 8
  %33 = getelementptr inbounds %struct.spsc_queue, %struct.spsc_queue* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ATOMIC_INIT(i32 %34, i32 0)
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.spsc_queue*, %struct.spsc_queue** %4, align 8
  %38 = getelementptr inbounds %struct.spsc_queue, %struct.spsc_queue* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub i64 %39, 1
  %41 = load %struct.spsc_queue*, %struct.spsc_queue** %4, align 8
  %42 = getelementptr inbounds %struct.spsc_queue, %struct.spsc_queue* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %27, %24, %8
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @lwan_nextpow2(i64) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @ATOMIC_INIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
