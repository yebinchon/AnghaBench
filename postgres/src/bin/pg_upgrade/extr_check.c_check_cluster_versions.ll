; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_cluster_versions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_cluster_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Checking cluster versions\00", align 1
@old_cluster = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@new_cluster = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"This utility can only upgrade from PostgreSQL version 8.4 and later.\0A\00", align 1
@PG_VERSION_NUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"This utility can only upgrade to PostgreSQL version %s.\0A\00", align 1
@PG_MAJORVERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [78 x i8] c"This utility cannot be used to downgrade to older major PostgreSQL versions.\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"Old cluster data and binary directories are from different major versions.\0A\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"New cluster data and binary directories are from different major versions.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_cluster_versions() #0 {
  %1 = call i32 @prep_status(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @old_cluster, i32 0, i32 0), align 8
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @Assert(i32 %4)
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @new_cluster, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @Assert(i32 %8)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @old_cluster, i32 0, i32 0), align 8
  %11 = call i32 @GET_MAJOR_VERSION(i64 %10)
  %12 = icmp slt i32 %11, 804
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @new_cluster, i32 0, i32 0), align 8
  %17 = call i32 @GET_MAJOR_VERSION(i64 %16)
  %18 = load i64, i64* @PG_VERSION_NUM, align 8
  %19 = call i32 @GET_MAJOR_VERSION(i64 %18)
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @PG_MAJORVERSION, align 4
  %23 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @old_cluster, i32 0, i32 0), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @new_cluster, i32 0, i32 0), align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @old_cluster, i32 0, i32 0), align 8
  %32 = call i32 @GET_MAJOR_VERSION(i64 %31)
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @old_cluster, i32 0, i32 1), align 8
  %34 = call i32 @GET_MAJOR_VERSION(i64 %33)
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @new_cluster, i32 0, i32 0), align 8
  %40 = call i32 @GET_MAJOR_VERSION(i64 %39)
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @new_cluster, i32 0, i32 1), align 8
  %42 = call i32 @GET_MAJOR_VERSION(i64 %41)
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %38
  %47 = call i32 (...) @check_ok()
  ret void
}

declare dso_local i32 @prep_status(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GET_MAJOR_VERSION(i64) #1

declare dso_local i32 @pg_fatal(i8*, ...) #1

declare dso_local i32 @check_ok(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
