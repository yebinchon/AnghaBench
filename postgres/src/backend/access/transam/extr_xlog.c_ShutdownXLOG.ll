; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_ShutdownXLOG.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_ShutdownXLOG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AuxProcessResourceOwner = common dso_local global i32* null, align 8
@CurrentResourceOwner = common dso_local global i32* null, align 8
@IsPostmasterEnvironment = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"shutting down\00", align 1
@CHECKPOINT_IS_SHUTDOWN = common dso_local global i32 0, align 4
@CHECKPOINT_IMMEDIATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ShutdownXLOG(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** @AuxProcessResourceOwner, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @Assert(i32 %7)
  %9 = load i32*, i32** @CurrentResourceOwner, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** @CurrentResourceOwner, align 8
  %13 = load i32*, i32** @AuxProcessResourceOwner, align 8
  %14 = icmp eq i32* %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ true, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32*, i32** @AuxProcessResourceOwner, align 8
  store i32* %19, i32** @CurrentResourceOwner, align 8
  %20 = load i64, i64* @IsPostmasterEnvironment, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @LOG, align 4
  br label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @NOTICE, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @ereport(i32 %27, i32 %28)
  %30 = call i32 (...) @WalSndInitStopping()
  %31 = call i32 (...) @WalSndWaitStopping()
  %32 = call i64 (...) @RecoveryInProgress()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i32, i32* @CHECKPOINT_IS_SHUTDOWN, align 4
  %36 = load i32, i32* @CHECKPOINT_IMMEDIATE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @CreateRestartPoint(i32 %37)
  br label %52

39:                                               ; preds = %26
  %40 = call i64 (...) @XLogArchivingActive()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = call i64 (...) @XLogArchiveCommandSet()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @RequestXLogSwitch(i32 0)
  br label %47

47:                                               ; preds = %45, %42, %39
  %48 = load i32, i32* @CHECKPOINT_IS_SHUTDOWN, align 4
  %49 = load i32, i32* @CHECKPOINT_IMMEDIATE, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @CreateCheckPoint(i32 %50)
  br label %52

52:                                               ; preds = %47, %34
  %53 = call i32 (...) @ShutdownCLOG()
  %54 = call i32 (...) @ShutdownCommitTs()
  %55 = call i32 (...) @ShutdownSUBTRANS()
  %56 = call i32 (...) @ShutdownMultiXact()
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @WalSndInitStopping(...) #1

declare dso_local i32 @WalSndWaitStopping(...) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i32 @CreateRestartPoint(i32) #1

declare dso_local i64 @XLogArchivingActive(...) #1

declare dso_local i64 @XLogArchiveCommandSet(...) #1

declare dso_local i32 @RequestXLogSwitch(i32) #1

declare dso_local i32 @CreateCheckPoint(i32) #1

declare dso_local i32 @ShutdownCLOG(...) #1

declare dso_local i32 @ShutdownCommitTs(...) #1

declare dso_local i32 @ShutdownSUBTRANS(...) #1

declare dso_local i32 @ShutdownMultiXact(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
