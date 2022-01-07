; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/clocks/extr_clocks.c_now_usec.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/clocks/extr_clocks.c_now_usec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"clock_gettime(%d, &timespec) failed.\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @now_usec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @now_usec(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @clock_gettime(i32 %5, %struct.timespec* %4)
  %7 = icmp eq i32 %6, -1
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 0, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @USEC_PER_SEC, align 4
  %19 = mul nsw i32 %17, %18
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NSEC_PER_SEC, align 4
  %23 = srem i32 %21, %22
  %24 = load i32, i32* @NSEC_PER_USEC, align 4
  %25 = sdiv i32 %23, %24
  %26 = add nsw i32 %19, %25
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %14, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
