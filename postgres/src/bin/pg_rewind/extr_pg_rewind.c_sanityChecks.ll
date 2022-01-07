; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_pg_rewind.c_sanityChecks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_pg_rewind.c_sanityChecks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@ControlFile_target = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ControlFile_source = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [54 x i8] c"source and target clusters are from different systems\00", align 1
@PG_CONTROL_VERSION = common dso_local global i64 0, align 8
@CATALOG_VERSION_NO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"clusters are not compatible with this version of pg_rewind\00", align 1
@PG_DATA_CHECKSUM_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [73 x i8] c"target server needs to use either data checksums or \22wal_log_hints = on\22\00", align 1
@DB_SHUTDOWNED = common dso_local global i64 0, align 8
@DB_SHUTDOWNED_IN_RECOVERY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"target server must be shut down cleanly\00", align 1
@datadir_source = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"source data directory must be shut down cleanly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sanityChecks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sanityChecks() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ControlFile_target, i32 0, i32 0), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile_source, i32 0, i32 0), align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @pg_fatal(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ControlFile_target, i32 0, i32 1), align 8
  %8 = load i64, i64* @PG_CONTROL_VERSION, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile_source, i32 0, i32 1), align 8
  %12 = load i64, i64* @PG_CONTROL_VERSION, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ControlFile_target, i32 0, i32 2), align 8
  %16 = load i64, i64* @CATALOG_VERSION_NO, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile_source, i32 0, i32 2), align 8
  %20 = load i64, i64* @CATALOG_VERSION_NO, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14, %10, %6
  %23 = call i32 @pg_fatal(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ControlFile_target, i32 0, i32 3), align 8
  %26 = load i64, i64* @PG_DATA_CHECKSUM_VERSION, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ControlFile_target, i32 0, i32 5), align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 @pg_fatal(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28, %24
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ControlFile_target, i32 0, i32 4), align 8
  %35 = load i64, i64* @DB_SHUTDOWNED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ControlFile_target, i32 0, i32 4), align 8
  %39 = load i64, i64* @DB_SHUTDOWNED_IN_RECOVERY, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @pg_fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37, %33
  %44 = load i64, i64* @datadir_source, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile_source, i32 0, i32 3), align 8
  %48 = load i64, i64* @DB_SHUTDOWNED, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile_source, i32 0, i32 3), align 8
  %52 = load i64, i64* @DB_SHUTDOWNED_IN_RECOVERY, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @pg_fatal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %50, %46, %43
  ret void
}

declare dso_local i32 @pg_fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
