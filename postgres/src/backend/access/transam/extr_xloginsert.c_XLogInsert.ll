; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogInsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@begininsert_called = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"XLogBeginInsert was not called\00", align 1
@XLR_RMGR_INFO_MASK = common dso_local global i32 0, align 4
@XLR_SPECIAL_REL_UPDATE = common dso_local global i32 0, align 4
@XLR_CHECK_CONSISTENCY = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid xlog info mask %02X\00", align 1
@RM_XLOG_ID = common dso_local global i64 0, align 8
@SizeOfXLogLongPHD = common dso_local global i64 0, align 8
@curinsert_flags = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XLogInsert(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @begininsert_called, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ERROR, align 4
  %15 = call i32 (i32, i8*, ...) @elog(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @XLR_RMGR_INFO_MASK, align 4
  %19 = load i32, i32* @XLR_SPECIAL_REL_UPDATE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @XLR_CHECK_CONSISTENCY, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %17, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load i32, i32* @PANIC, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i32, i8*, ...) @elog(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %16
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @TRACE_POSTGRESQL_WAL_INSERT(i64 %31, i32 %32)
  %34 = call i64 (...) @IsBootstrapProcessingMode()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @RM_XLOG_ID, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call i32 (...) @XLogResetInsertion()
  %42 = load i64, i64* @SizeOfXLogLongPHD, align 8
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  store i64 %43, i64* %3, align 8
  br label %63

44:                                               ; preds = %36, %30
  br label %45

45:                                               ; preds = %56, %44
  %46 = call i32 @GetFullPageWriteInfo(i64* %7, i32* %8)
  %47 = load i64, i64* %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32* @XLogRecordAssemble(i64 %47, i32 %48, i64 %49, i32 %50, i64* %9)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* @curinsert_flags, align 4
  %55 = call i64 @XLogInsertRecord(i32* %52, i64 %53, i32 %54)
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %45
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @InvalidXLogRecPtr, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %45, label %60

60:                                               ; preds = %56
  %61 = call i32 (...) @XLogResetInsertion()
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %60, %40
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @TRACE_POSTGRESQL_WAL_INSERT(i64, i32) #1

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @XLogResetInsertion(...) #1

declare dso_local i32 @GetFullPageWriteInfo(i64*, i32*) #1

declare dso_local i32* @XLogRecordAssemble(i64, i32, i64, i32, i64*) #1

declare dso_local i64 @XLogInsertRecord(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
