; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_sema.c_InternalIpcSemaphoreCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_sema.c_InternalIpcSemaphoreCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPC_CREAT = common dso_local global i32 0, align 4
@IPC_EXCL = common dso_local global i32 0, align 4
@IPCProtection = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not create semaphores: %m\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed system call was semget(%lu, %d, 0%o).\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [490 x i8] c"This error does *not* mean that you have run out of disk space.  It occurs when either the system limit for the maximum number of semaphore sets (SEMMNI), or the system wide maximum number of semaphores (SEMMNS), would be exceeded.  You need to raise the respective kernel parameter.  Alternatively, reduce PostgreSQL's consumption of semaphores by reducing its max_connections parameter.\0AThe PostgreSQL documentation contains more information about configuring your system for PostgreSQL.\00", align 1
@EIDRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @InternalIpcSemaphoreCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InternalIpcSemaphoreCreate(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IPC_CREAT, align 4
  %11 = load i32, i32* @IPC_EXCL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IPCProtection, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @semget(i64 %8, i32 %9, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %2
  %19 = load i32, i32* @errno, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @EEXIST, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @EACCES, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %18
  store i32 -1, i32* %3, align 4
  br label %50

28:                                               ; preds = %23
  %29 = load i32, i32* @FATAL, align 4
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IPC_CREAT, align 4
  %34 = load i32, i32* @IPC_EXCL, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IPCProtection, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @errdetail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %31, i32 %32, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ENOSPC, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = call i32 @errhint(i8* getelementptr inbounds ([490 x i8], [490 x i8]* @.str.2, i64 0, i64 0))
  br label %45

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = call i32 @ereport(i32 %29, i32 %46)
  br label %48

48:                                               ; preds = %45, %2
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %27
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @semget(i64, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i64, i32, i32) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
