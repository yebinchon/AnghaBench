; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_sys_kernel_random_entropy_avail.c_do_proc_sys_kernel_random_entropy_avail.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_sys_kernel_random_entropy_avail.c_do_proc_sys_kernel_random_entropy_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_proc_sys_kernel_random_entropy_avail.ff = internal global i32* null, align 8
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@netdata_configured_host_prefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"/proc/sys/kernel/random/entropy_avail\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"plugin:proc:/proc/sys/kernel/random/entropy_avail\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"filename to monitor\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@do_proc_sys_kernel_random_entropy_avail.st = internal global i32* null, align 8
@do_proc_sys_kernel_random_entropy_avail.rd = internal global i32* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"entropy\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Available Entropy\00", align 1
@PLUGIN_PROC_NAME = common dso_local global i32 0, align 4
@NETDATA_CHART_PRIO_SYSTEM_ENTROPY = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_proc_sys_kernel_random_entropy_avail(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** @do_proc_sys_kernel_random_entropy_avail.ff, align 8
  %12 = icmp ne i32* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load i32, i32* @FILENAME_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = load i32, i32* @FILENAME_MAX, align 4
  %24 = load i32, i32* @netdata_configured_host_prefix, align 4
  %25 = call i32 @snprintfz(i8* %22, i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @config_get(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %27 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %28 = call i32* @procfile_open(i32 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  store i32* %28, i32** @do_proc_sys_kernel_random_entropy_avail.ff, align 8
  %29 = load i32*, i32** @do_proc_sys_kernel_random_entropy_avail.ff, align 8
  %30 = icmp ne i32* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %37

36:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %82 [
    i32 0, label %40
    i32 1, label %80
  ]

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32*, i32** @do_proc_sys_kernel_random_entropy_avail.ff, align 8
  %43 = call i32* @procfile_readall(i32* %42)
  store i32* %43, i32** @do_proc_sys_kernel_random_entropy_avail.ff, align 8
  %44 = load i32*, i32** @do_proc_sys_kernel_random_entropy_avail.ff, align 8
  %45 = icmp ne i32* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %80

51:                                               ; preds = %41
  %52 = load i32*, i32** @do_proc_sys_kernel_random_entropy_avail.ff, align 8
  %53 = call i32 @procfile_lineword(i32* %52, i32 0, i32 0)
  %54 = call i64 @str2ull(i32 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i32*, i32** @do_proc_sys_kernel_random_entropy_avail.st, align 8
  %56 = icmp ne i32* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %51
  %62 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %63 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_ENTROPY, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %66 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64, i32 %65)
  store i32* %66, i32** @do_proc_sys_kernel_random_entropy_avail.st, align 8
  %67 = load i32*, i32** @do_proc_sys_kernel_random_entropy_avail.st, align 8
  %68 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %69 = call i32* @rrddim_add(i32* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %68)
  store i32* %69, i32** @do_proc_sys_kernel_random_entropy_avail.rd, align 8
  br label %73

70:                                               ; preds = %51
  %71 = load i32*, i32** @do_proc_sys_kernel_random_entropy_avail.st, align 8
  %72 = call i32 @rrdset_next(i32* %71)
  br label %73

73:                                               ; preds = %70, %61
  %74 = load i32*, i32** @do_proc_sys_kernel_random_entropy_avail.st, align 8
  %75 = load i32*, i32** @do_proc_sys_kernel_random_entropy_avail.rd, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @rrddim_set_by_pointer(i32* %74, i32* %75, i64 %76)
  %78 = load i32*, i32** @do_proc_sys_kernel_random_entropy_avail.st, align 8
  %79 = call i32 @rrdset_done(i32* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %73, %50, %37
  %81 = load i32, i32* %3, align 4
  ret i32 %81

82:                                               ; preds = %37
  unreachable
}

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32* @procfile_open(i32, i8*, i32) #1

declare dso_local i32 @config_get(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i64 @str2ull(i32) #1

declare dso_local i32 @procfile_lineword(i32*, i32, i32) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32* @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i64) #1

declare dso_local i32 @rrdset_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
