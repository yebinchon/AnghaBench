; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/watchdog/extr_watchdog-test.c_usage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/watchdog/extr_watchdog-test.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c" -f, --file\09\09Open watchdog device file\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\09\09\09Default is /dev/watchdog\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c" -i, --info\09\09Show watchdog_info\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c" -b, --bootstatus\09Get last boot status (Watchdog/POR)\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c" -d, --disable\09\09Turn off the watchdog timer\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c" -e, --enable\09\09Turn on the watchdog timer\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c" -h, --help\09\09Print the help message\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c" -p, --pingrate=P\09Set ping rate to P seconds (default %d)\0A\00", align 1
@DEFAULT_PING_RATE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c" -t, --timeout=T\09Set timeout to T seconds\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c" -T, --gettimeout\09Get the timeout\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c" -n, --pretimeout=T\09Set the pretimeout to T seconds\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c" -N, --getpretimeout\09Get the pretimeout\0A\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c" -L, --gettimeleft\09Get the time left until timer expires\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"Parameters are parsed left-to-right in real-time.\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Example: %s -d -t 10 -p 5 -e\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Example: %s -t 12 -T -n 7 -N\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %12 = load i32, i32* @DEFAULT_PING_RATE, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i32 %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0))
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8* %21)
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8* %23)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
