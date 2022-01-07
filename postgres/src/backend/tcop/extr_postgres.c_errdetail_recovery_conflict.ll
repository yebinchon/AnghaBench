; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_errdetail_recovery_conflict.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_errdetail_recovery_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RecoveryConflictReason = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"User was holding shared buffer pin for too long.\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"User was holding a relation lock for too long.\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"User was or might have been using tablespace that must be dropped.\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"User query might have needed to see row versions that must be removed.\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"User transaction caused buffer deadlock with recovery.\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"User was connected to a database that must be dropped.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @errdetail_recovery_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @errdetail_recovery_conflict() #0 {
  %1 = load i32, i32* @RecoveryConflictReason, align 4
  switch i32 %1, label %14 [
    i32 133, label %2
    i32 131, label %4
    i32 128, label %6
    i32 130, label %8
    i32 129, label %10
    i32 132, label %12
  ]

2:                                                ; preds = %0
  %3 = call i32 @errdetail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %15

4:                                                ; preds = %0
  %5 = call i32 @errdetail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %15

6:                                                ; preds = %0
  %7 = call i32 @errdetail(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  br label %15

8:                                                ; preds = %0
  %9 = call i32 @errdetail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  br label %15

10:                                               ; preds = %0
  %11 = call i32 @errdetail(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %15

12:                                               ; preds = %0
  %13 = call i32 @errdetail(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  br label %15

14:                                               ; preds = %0
  br label %15

15:                                               ; preds = %14, %12, %10, %8, %6, %4, %2
  ret i32 0
}

declare dso_local i32 @errdetail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
