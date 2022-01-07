; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_kstat_zfs.c_do_kstat_zfs_misc_zio_trim.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_kstat_zfs.c_do_kstat_zfs_misc_zio_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_kstat_zfs_misc_zio_trim.mib_bytes = internal global [5 x i32] zeroinitializer, align 16
@do_kstat_zfs_misc_zio_trim.mib_success = internal global [5 x i32] zeroinitializer, align 16
@do_kstat_zfs_misc_zio_trim.mib_failed = internal global [5 x i32] zeroinitializer, align 16
@do_kstat_zfs_misc_zio_trim.mib_unsupported = internal global [5 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [30 x i8] c"kstat.zfs.misc.zio_trim.bytes\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"kstat.zfs.misc.zio_trim.success\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"kstat.zfs.misc.zio_trim.failed\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"kstat.zfs.misc.zio_trim.unsupported\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"DISABLED: zfs.trim_bytes chart\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"DISABLED: zfs.trim_success chart\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"DISABLED: kstat.zfs.misc.zio_trim module\00", align 1
@do_kstat_zfs_misc_zio_trim.st_bytes = internal global i32* null, align 8
@do_kstat_zfs_misc_zio_trim.rd_bytes = internal global i32* null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"zfs\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"trim_bytes\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"trim\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Successfully TRIMmed bytes\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"freebsd\00", align 1
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"TRIMmed\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@do_kstat_zfs_misc_zio_trim.st_requests = internal global i32* null, align 8
@do_kstat_zfs_misc_zio_trim.rd_successful = internal global i32* null, align 8
@do_kstat_zfs_misc_zio_trim.rd_failed = internal global i32* null, align 8
@do_kstat_zfs_misc_zio_trim.rd_unsupported = internal global i32* null, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"trim_requests\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"TRIM requests\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"requests\00", align 1
@RRDSET_TYPE_STACKED = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"successful\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_kstat_zfs_misc_zio_trim(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @do_kstat_zfs_misc_zio_trim.mib_bytes, i64 0, i64 0), i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @do_kstat_zfs_misc_zio_trim.mib_success, i64 0, i64 0), i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @do_kstat_zfs_misc_zio_trim.mib_failed, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @do_kstat_zfs_misc_zio_trim.mib_unsupported, i64 0, i64 0), i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %18, %14, %2
  %27 = phi i1 [ true, %18 ], [ true, %14 ], [ true, %2 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %33 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %34 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %97

35:                                               ; preds = %26
  %36 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_bytes, align 8
  %37 = icmp ne i32* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %45 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 2320, i32 %43, i32 %44)
  store i32* %45, i32** @do_kstat_zfs_misc_zio_trim.st_bytes, align 8
  %46 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_bytes, align 8
  %47 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %48 = call i32* @rrddim_add(i32* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %47)
  store i32* %48, i32** @do_kstat_zfs_misc_zio_trim.rd_bytes, align 8
  br label %52

49:                                               ; preds = %35
  %50 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_bytes, align 8
  %51 = call i32 @rrdset_next(i32* %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_bytes, align 8
  %54 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.rd_bytes, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @rrddim_set_by_pointer(i32* %53, i32* %54, i32 %55)
  %57 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_bytes, align 8
  %58 = call i32 @rrdset_done(i32* %57)
  %59 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_requests, align 8
  %60 = icmp ne i32* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %52
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %68 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 2321, i32 %66, i32 %67)
  store i32* %68, i32** @do_kstat_zfs_misc_zio_trim.st_requests, align 8
  %69 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_requests, align 8
  %70 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %71 = call i32* @rrddim_add(i32* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %70)
  store i32* %71, i32** @do_kstat_zfs_misc_zio_trim.rd_successful, align 8
  %72 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_requests, align 8
  %73 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %74 = call i32* @rrddim_add(i32* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %73)
  store i32* %74, i32** @do_kstat_zfs_misc_zio_trim.rd_failed, align 8
  %75 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_requests, align 8
  %76 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %77 = call i32* @rrddim_add(i32* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %76)
  store i32* %77, i32** @do_kstat_zfs_misc_zio_trim.rd_unsupported, align 8
  br label %81

78:                                               ; preds = %52
  %79 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_requests, align 8
  %80 = call i32 @rrdset_next(i32* %79)
  br label %81

81:                                               ; preds = %78, %65
  %82 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_requests, align 8
  %83 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.rd_successful, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @rrddim_set_by_pointer(i32* %82, i32* %83, i32 %84)
  %86 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_requests, align 8
  %87 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.rd_failed, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @rrddim_set_by_pointer(i32* %86, i32* %87, i32 %88)
  %90 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_requests, align 8
  %91 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.rd_unsupported, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @rrddim_set_by_pointer(i32* %90, i32* %91, i32 %92)
  %94 = load i32*, i32** @do_kstat_zfs_misc_zio_trim.st_requests, align 8
  %95 = call i32 @rrdset_done(i32* %94)
  br label %96

96:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %31
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @GETSYSCTL_SIMPLE(i8*, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

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
