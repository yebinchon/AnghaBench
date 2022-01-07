; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_leap-a-day.c_sigalarm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_leap-a-day.c_sigalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timex = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@next_leap = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Error: Early timer expiration! (Should be %ld)\0A\00", align 1
@error_found = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"adjtimex: %10ld sec + %6ld us (%i)\09%s\0A\00", align 1
@TIME_WAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Error: Timer seeing incorrect NTP state? (Should be TIME_WAIT)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigalarm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timex, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds %struct.timex, %struct.timex* %3, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = call i32 @adjtimex(%struct.timex* %3)
  store i32 %6, i32* %4, align 4
  %7 = getelementptr inbounds %struct.timex, %struct.timex* %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @next_leap, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i64, i64* @next_leap, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %13)
  store i32 1, i32* @error_found, align 4
  %15 = getelementptr inbounds %struct.timex, %struct.timex* %3, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.timex, %struct.timex* %3, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.timex, %struct.timex* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @time_state_str(i32 %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %17, i32 %20, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %12, %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TIME_WAIT, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @error_found, align 4
  %32 = getelementptr inbounds %struct.timex, %struct.timex* %3, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.timex, %struct.timex* %3, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.timex, %struct.timex* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @time_state_str(i32 %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %34, i32 %37, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %30, %26
  ret void
}

declare dso_local i32 @adjtimex(%struct.timex*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @time_state_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
