; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_controldata.c_disable_old_cluster.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_controldata.c_disable_old_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Adding \22.old\22 suffix to old global/pg_control\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s/global/pg_control\00", align 1
@old_cluster = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s/global/pg_control.old\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unable to rename %s to %s.\0A\00", align 1
@PG_REPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [224 x i8] c"\0AIf you want to start the old cluster, you will need to remove\0Athe \22.old\22 suffix from %s/global/pg_control.old.\0ABecause \22link\22 mode was used, the old cluster cannot be safely\0Astarted once the new cluster has been started.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disable_old_cluster() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @MAXPGPATH, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i32, i32* @MAXPGPATH, align 4
  %9 = zext i32 %8 to i64
  %10 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %11 = call i32 @prep_status(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %12 = trunc i64 %5 to i32
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @old_cluster, i32 0, i32 0), align 8
  %14 = call i32 @snprintf(i8* %7, i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = trunc i64 %9 to i32
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @old_cluster, i32 0, i32 0), align 8
  %17 = call i32 @snprintf(i8* %10, i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = call i64 @pg_mv_file(i8* %7, i8* %10)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 @pg_fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %7, i8* %10)
  br label %22

22:                                               ; preds = %20, %0
  %23 = call i32 (...) @check_ok()
  %24 = load i32, i32* @PG_REPORT, align 4
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @old_cluster, i32 0, i32 0), align 8
  %26 = call i32 @pg_log(i32 %24, i8* getelementptr inbounds ([224 x i8], [224 x i8]* @.str.4, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %27)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @prep_status(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @pg_mv_file(i8*, i8*) #2

declare dso_local i32 @pg_fatal(i8*, i8*, i8*) #2

declare dso_local i32 @check_ok(...) #2

declare dso_local i32 @pg_log(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
