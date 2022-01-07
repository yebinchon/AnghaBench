; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_change_skew.c_change_skew_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_change_skew.c_change_skew_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timex = type { i32, i32 }

@ADJ_FREQUENCY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error adjusting freq\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"./raw_skew\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"./inconsistency-check\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"./nanosleep\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @change_skew_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timex, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @ADJ_FREQUENCY, align 4
  %7 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = shl i32 %8, 16
  %10 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = call i32 @adjtimex(%struct.timex* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %1
  %18 = call i32 @system(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %5, align 4
  %19 = call i32 @system(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = call i32 @system(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %14
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @adjtimex(%struct.timex*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @system(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
