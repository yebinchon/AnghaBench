; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_leap-a-day.c_test_hrtimer_failure.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_leap-a-day.c_test_hrtimer_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@TIMER_ABSTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ERROR: hrtimer early expiration failure observed.\0A\00", align 1
@error_found = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_hrtimer_failure() #0 {
  %1 = alloca %struct.timespec, align 4
  %2 = alloca %struct.timespec, align 4
  %3 = alloca %struct.timespec, align 4
  %4 = load i32, i32* @CLOCK_REALTIME, align 4
  %5 = call i32 @clock_gettime(i32 %4, %struct.timespec* %1)
  %6 = load i32, i32* @NSEC_PER_SEC, align 4
  %7 = sdiv i32 %6, 2
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @timespec_add(i32 %9, i32 %7)
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = bitcast %struct.timespec* %2 to i8*
  %13 = bitcast %struct.timespec* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load i32, i32* @CLOCK_REALTIME, align 4
  %15 = load i32, i32* @TIMER_ABSTIME, align 4
  %16 = call i32 @clock_nanosleep(i32 %14, i32 %15, %struct.timespec* %2, i32* null)
  %17 = load i32, i32* @CLOCK_REALTIME, align 4
  %18 = call i32 @clock_gettime(i32 %17, %struct.timespec* %1)
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @in_order(i32 %20, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %0
  %26 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @error_found, align 4
  br label %27

27:                                               ; preds = %25, %0
  ret void
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @timespec_add(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @clock_nanosleep(i32, i32, %struct.timespec*, i32*) #1

declare dso_local i32 @in_order(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
