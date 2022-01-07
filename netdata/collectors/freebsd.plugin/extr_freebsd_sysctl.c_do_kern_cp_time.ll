; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_kern_cp_time.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_kern_cp_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPUSTATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"FREEBSD: There are %d CPU states (5 was expected)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DISABLED: system.cpu chart\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"DISABLED: kern.cp_time module\00", align 1
@do_kern_cp_time.mib = internal global [2 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"kern.cp_time\00", align 1
@do_kern_cp_time.st = internal global i32* null, align 8
@do_kern_cp_time.rd_nice = internal global i32* null, align 8
@do_kern_cp_time.rd_system = internal global i32* null, align 8
@do_kern_cp_time.rd_user = internal global i32* null, align 8
@do_kern_cp_time.rd_interrupt = internal global i32* null, align 8
@do_kern_cp_time.rd_idle = internal global i32* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"system.cpu\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Total CPU utilization\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"percentage\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_CPU = common dso_local global i32 0, align 4
@RRDSET_TYPE_STACKED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"idle\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_kern_cp_time(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @CPUSTATES, align 4
  %11 = icmp ne i32 %10, 5
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @CPUSTATES, align 4
  %17 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %97

20:                                               ; preds = %2
  %21 = load i32, i32* @CPUSTATES, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @do_kern_cp_time.mib, i64 0, i64 0), i64* %24)
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %92

31:                                               ; preds = %20
  %32 = load i32*, i32** @do_kern_cp_time.st, align 8
  %33 = icmp ne i32* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %31
  %39 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_CPU, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %42 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 %40, i32 %41)
  store i32* %42, i32** @do_kern_cp_time.st, align 8
  %43 = load i32*, i32** @do_kern_cp_time.st, align 8
  %44 = load i32, i32* @RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL, align 4
  %45 = call i32* @rrddim_add(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %44)
  store i32* %45, i32** @do_kern_cp_time.rd_nice, align 8
  %46 = load i32*, i32** @do_kern_cp_time.st, align 8
  %47 = load i32, i32* @RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL, align 4
  %48 = call i32* @rrddim_add(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %47)
  store i32* %48, i32** @do_kern_cp_time.rd_system, align 8
  %49 = load i32*, i32** @do_kern_cp_time.st, align 8
  %50 = load i32, i32* @RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL, align 4
  %51 = call i32* @rrddim_add(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %50)
  store i32* %51, i32** @do_kern_cp_time.rd_user, align 8
  %52 = load i32*, i32** @do_kern_cp_time.st, align 8
  %53 = load i32, i32* @RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL, align 4
  %54 = call i32* @rrddim_add(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %53)
  store i32* %54, i32** @do_kern_cp_time.rd_interrupt, align 8
  %55 = load i32*, i32** @do_kern_cp_time.st, align 8
  %56 = load i32, i32* @RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL, align 4
  %57 = call i32* @rrddim_add(i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %56)
  store i32* %57, i32** @do_kern_cp_time.rd_idle, align 8
  %58 = load i32*, i32** @do_kern_cp_time.st, align 8
  %59 = call i32 @rrddim_hide(i32* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %63

60:                                               ; preds = %31
  %61 = load i32*, i32** @do_kern_cp_time.st, align 8
  %62 = call i32 @rrdset_next(i32* %61)
  br label %63

63:                                               ; preds = %60, %38
  %64 = load i32*, i32** @do_kern_cp_time.st, align 8
  %65 = load i32*, i32** @do_kern_cp_time.rd_nice, align 8
  %66 = getelementptr inbounds i64, i64* %24, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @rrddim_set_by_pointer(i32* %64, i32* %65, i64 %67)
  %69 = load i32*, i32** @do_kern_cp_time.st, align 8
  %70 = load i32*, i32** @do_kern_cp_time.rd_system, align 8
  %71 = getelementptr inbounds i64, i64* %24, i64 2
  %72 = load i64, i64* %71, align 16
  %73 = call i32 @rrddim_set_by_pointer(i32* %69, i32* %70, i64 %72)
  %74 = load i32*, i32** @do_kern_cp_time.st, align 8
  %75 = load i32*, i32** @do_kern_cp_time.rd_user, align 8
  %76 = getelementptr inbounds i64, i64* %24, i64 0
  %77 = load i64, i64* %76, align 16
  %78 = call i32 @rrddim_set_by_pointer(i32* %74, i32* %75, i64 %77)
  %79 = load i32*, i32** @do_kern_cp_time.st, align 8
  %80 = load i32*, i32** @do_kern_cp_time.rd_interrupt, align 8
  %81 = getelementptr inbounds i64, i64* %24, i64 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @rrddim_set_by_pointer(i32* %79, i32* %80, i64 %82)
  %84 = load i32*, i32** @do_kern_cp_time.st, align 8
  %85 = load i32*, i32** @do_kern_cp_time.rd_idle, align 8
  %86 = getelementptr inbounds i64, i64* %24, i64 4
  %87 = load i64, i64* %86, align 16
  %88 = call i32 @rrddim_set_by_pointer(i32* %84, i32* %85, i64 %87)
  %89 = load i32*, i32** @do_kern_cp_time.st, align 8
  %90 = call i32 @rrdset_done(i32* %89)
  br label %91

91:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %28
  %93 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %8, align 4
  switch i32 %94, label %99 [
    i32 0, label %95
    i32 1, label %97
  ]

95:                                               ; preds = %92
  br label %96

96:                                               ; preds = %95
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %92, %15
  %98 = load i32, i32* %3, align 4
  ret i32 %98

99:                                               ; preds = %92
  unreachable
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @error(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GETSYSCTL_SIMPLE(i8*, i32*, i64*) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32* @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrddim_hide(i32*, i8*) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i64) #1

declare dso_local i32 @rrdset_done(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
