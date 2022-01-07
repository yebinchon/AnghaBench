; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure.c_secure_read.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure.c_secure_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@WL_SOCKET_READABLE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@FeBeWaitSet = common dso_local global i32 0, align 4
@WAIT_EVENT_CLIENT_READ = common dso_local global i32 0, align 4
@WL_POSTMASTER_DEATH = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_ADMIN_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"terminating connection due to unexpected postmaster exit\00", align 1
@WL_LATCH_SET = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @secure_read(%struct.TYPE_11__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i32 @ProcessClientReadInterrupt(i32 0)
  br label %11

11:                                               ; preds = %62, %3
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @secure_raw_read(%struct.TYPE_11__* %12, i8* %13, i64 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @WL_SOCKET_READABLE, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %11
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %63, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EWOULDBLOCK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EAGAIN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @Assert(i32 %33)
  %35 = load i32, i32* @FeBeWaitSet, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ModifyWaitEvent(i32 %35, i32 0, i32 %36, i32* null)
  %38 = load i32, i32* @FeBeWaitSet, align 4
  %39 = load i32, i32* @WAIT_EVENT_CLIENT_READ, align 4
  %40 = call i32 @WaitEventSetWait(i32 %38, i32 -1, %struct.TYPE_10__* %9, i32 1, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load i32, i32* @FATAL, align 4
  %48 = load i32, i32* @ERRCODE_ADMIN_SHUTDOWN, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @ereport(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %32
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @WL_LATCH_SET, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @MyLatch, align 4
  %60 = call i32 @ResetLatch(i32 %59)
  %61 = call i32 @ProcessClientReadInterrupt(i32 1)
  br label %62

62:                                               ; preds = %58, %52
  br label %11

63:                                               ; preds = %28, %19, %11
  %64 = call i32 @ProcessClientReadInterrupt(i32 0)
  %65 = load i64, i64* %7, align 8
  ret i64 %65
}

declare dso_local i32 @ProcessClientReadInterrupt(i32) #1

declare dso_local i64 @secure_raw_read(%struct.TYPE_11__*, i8*, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ModifyWaitEvent(i32, i32, i32, i32*) #1

declare dso_local i32 @WaitEventSetWait(i32, i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @ResetLatch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
