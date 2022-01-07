; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_forbidden_in_wal_sender.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_forbidden_in_wal_sender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@am_walsender = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"fastpath function calls not supported in a replication connection\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"extended query protocol not supported in a replication connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @forbidden_in_wal_sender to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forbidden_in_wal_sender(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i64, i64* @am_walsender, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load i8, i8* %2, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 70
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i32, i32* @ERROR, align 4
  %11 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %12 = call i32 @errcode(i32 %11)
  %13 = call i32 @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @ereport(i32 %10, i32 %13)
  br label %21

15:                                               ; preds = %5
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = call i32 @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @ereport(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %15, %9
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
