; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_check_prerequisites.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_check_prerequisites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"only superusers can query or manipulate replication origins\00", align 1
@max_replication_slots = common dso_local global i64 0, align 8
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"cannot query or manipulate replication origin when max_replication_slots = 0\00", align 1
@ERRCODE_READ_ONLY_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"cannot manipulate replication origins during recovery\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @replorigin_check_prerequisites to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replorigin_check_prerequisites(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @superuser()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* @ERROR, align 4
  %9 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %10 = call i32 @errcode(i32 %9)
  %11 = call i32 @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @ereport(i32 %8, i32 %11)
  br label %13

13:                                               ; preds = %7, %2
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i64, i64* @max_replication_slots, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @ereport(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %19, %16, %13
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = call i64 (...) @RecoveryInProgress()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_READ_ONLY_SQL_TRANSACTION, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @ereport(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %28, %25
  ret void
}

declare dso_local i32 @superuser(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @RecoveryInProgress(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
