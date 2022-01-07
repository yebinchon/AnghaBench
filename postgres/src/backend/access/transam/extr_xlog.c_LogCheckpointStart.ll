; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_LogCheckpointStart.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_LogCheckpointStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s starting:%s%s%s%s%s%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"restartpoint\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"checkpoint\00", align 1
@CHECKPOINT_IS_SHUTDOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" shutdown\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CHECKPOINT_END_OF_RECOVERY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c" end-of-recovery\00", align 1
@CHECKPOINT_IMMEDIATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c" immediate\00", align 1
@CHECKPOINT_FORCE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c" force\00", align 1
@CHECKPOINT_WAIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c" wait\00", align 1
@CHECKPOINT_CAUSE_XLOG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c" wal\00", align 1
@CHECKPOINT_CAUSE_TIME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c" time\00", align 1
@CHECKPOINT_FLUSH_ALL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c" flush-all\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @LogCheckpointStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LogCheckpointStart(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @LOG, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @CHECKPOINT_IS_SHUTDOWN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @CHECKPOINT_END_OF_RECOVERY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @CHECKPOINT_IMMEDIATE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @CHECKPOINT_FORCE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @CHECKPOINT_WAIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @CHECKPOINT_CAUSE_XLOG, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @CHECKPOINT_CAUSE_TIME, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @CHECKPOINT_FLUSH_ALL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %58 = call i32 @elog(i32 %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %15, i8* %21, i8* %27, i8* %33, i8* %39, i8* %45, i8* %51, i8* %57)
  ret void
}

declare dso_local i32 @elog(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
