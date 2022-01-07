; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_PreventInTransactionBlock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_PreventInTransactionBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_ACTIVE_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s cannot run inside a transaction block\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s cannot run inside a subtransaction\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s cannot be executed from a function\00", align 1
@CurrentTransactionState = common dso_local global %struct.TYPE_2__* null, align 8
@TBLOCK_DEFAULT = common dso_local global i64 0, align 8
@TBLOCK_STARTED = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"cannot prevent transaction chain\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PreventInTransactionBlock(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = call i64 (...) @IsTransactionBlock()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32, i32* @ERROR, align 4
  %9 = load i32, i32* @ERRCODE_ACTIVE_SQL_TRANSACTION, align 4
  %10 = call i32 @errcode(i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = call i32 @ereport(i32 %8, i32 %12)
  br label %14

14:                                               ; preds = %7, %2
  %15 = call i64 (...) @IsSubTransaction()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @ERRCODE_ACTIVE_SQL_TRANSACTION, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = call i32 @ereport(i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_ACTIVE_SQL_TRANSACTION, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = call i32 @ereport(i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %27, %24
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurrentTransactionState, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TBLOCK_DEFAULT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurrentTransactionState, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TBLOCK_STARTED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @FATAL, align 4
  %48 = call i32 @elog(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %40, %34
  ret void
}

declare dso_local i64 @IsTransactionBlock(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @IsSubTransaction(...) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
