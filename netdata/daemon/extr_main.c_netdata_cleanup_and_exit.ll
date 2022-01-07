; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_main.c_netdata_cleanup_and_exit.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_main.c_netdata_cleanup_and_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"EXIT: netdata prepares to exit with code %d...\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"EXIT: cleaning up the database...\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"EXIT: stopping master threads...\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"EXIT: freeing database memory...\00", align 1
@pidfile = common dso_local global i64* null, align 8
@.str.8 = private unnamed_addr constant [40 x i8] c"EXIT: removing netdata PID file '%s'...\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"EXIT: cannot unlink pidfile '%s'.\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"EXIT: all done - netdata is now exiting - bye bye...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netdata_cleanup_and_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @error_log_limit_unlimited()
  %4 = load i32, i32* %2, align 4
  %5 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %10 = call i32 @send_statistics(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 (...) @rrdhost_cleanup_all()
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %17 = call i32 (...) @cancel_main_threads()
  %18 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %19 = call i32 (...) @rrdhost_free_all()
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i64*, i64** @pidfile, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i64*, i64** @pidfile, align 8
  %27 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64* %26)
  %28 = load i64*, i64** @pidfile, align 8
  %29 = call i64 @unlink(i64* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i64*, i64** @pidfile, align 8
  %33 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64* %32)
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34, %20
  %36 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0))
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @exit(i32 %37) #3
  unreachable
}

declare dso_local i32 @error_log_limit_unlimited(...) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @send_statistics(i8*, i8*, i8*) #1

declare dso_local i32 @rrdhost_cleanup_all(...) #1

declare dso_local i32 @cancel_main_threads(...) #1

declare dso_local i32 @rrdhost_free_all(...) #1

declare dso_local i64 @unlink(i64*) #1

declare dso_local i32 @error(i8*, i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
