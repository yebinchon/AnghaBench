; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_pixie-timer.c_pixie_usleep.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_pixie-timer.c_pixie_usleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pixie_usleep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec, align 4
  %4 = alloca %struct.timespec, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sdiv i32 %6, 1000000
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %2, align 4
  %10 = srem i32 %9, 1000000
  %11 = mul nsw i32 %10, 1000
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  br label %13

13:                                               ; preds = %21, %1
  %14 = call i32 @nanosleep(%struct.timespec* %3, %struct.timespec* %4)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EINTR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @memcpy(%struct.timespec* %3, %struct.timespec* %4, i32 8)
  br label %13

23:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @nanosleep(%struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @memcpy(%struct.timespec*, %struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
