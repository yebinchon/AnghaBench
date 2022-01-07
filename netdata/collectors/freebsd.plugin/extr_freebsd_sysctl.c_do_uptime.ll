; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_uptime.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_uptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@CLOCK_UPTIME = common dso_local global i32 0, align 4
@do_uptime.st = internal global i32* null, align 8
@do_uptime.rd = internal global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"uptime\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"System Uptime\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_UPTIME = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_uptime(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CLOCK_UPTIME, align 4
  %8 = call i32 @clock_gettime(i32 %7, %struct.timespec* %5)
  %9 = load i32*, i32** @do_uptime.st, align 8
  %10 = icmp ne i32* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_UPTIME, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %19 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  store i32* %19, i32** @do_uptime.st, align 8
  %20 = load i32*, i32** @do_uptime.st, align 8
  %21 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %22 = call i32* @rrddim_add(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %21)
  store i32* %22, i32** @do_uptime.rd, align 8
  br label %26

23:                                               ; preds = %2
  %24 = load i32*, i32** @do_uptime.st, align 8
  %25 = call i32 @rrdset_next(i32* %24)
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32*, i32** @do_uptime.st, align 8
  %28 = load i32*, i32** @do_uptime.rd, align 8
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rrddim_set_by_pointer(i32* %27, i32* %28, i32 %30)
  %32 = load i32*, i32** @do_uptime.st, align 8
  %33 = call i32 @rrdset_done(i32* %32)
  ret i32 0
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32* @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i32) #1

declare dso_local i32 @rrdset_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
