; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogBeginInsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogBeginInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_registered_block_id = common dso_local global i64 0, align 8
@mainrdata_last = common dso_local global i32* null, align 8
@mainrdata_head = common dso_local global i32 0, align 4
@mainrdata_len = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot make new WAL entries during recovery\00", align 1
@begininsert_called = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"XLogBeginInsert was already called\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XLogBeginInsert() #0 {
  %1 = load i64, i64* @max_registered_block_id, align 8
  %2 = icmp eq i64 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i32 @Assert(i32 %3)
  %5 = load i32*, i32** @mainrdata_last, align 8
  %6 = icmp eq i32* %5, @mainrdata_head
  %7 = zext i1 %6 to i32
  %8 = call i32 @Assert(i32 %7)
  %9 = load i64, i64* @mainrdata_len, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = call i32 (...) @XLogInsertAllowed()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* @ERROR, align 4
  %17 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %0
  %19 = load i32, i32* @begininsert_called, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  store i32 1, i32* @begininsert_called, align 4
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogInsertAllowed(...) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
