; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_exec_describe_statement_message.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_exec_describe_statement_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@MessageContext = common dso_local global i32 0, align 4
@unnamed_stmt_psrc = common dso_local global %struct.TYPE_7__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_PSTATEMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unnamed prepared statement does not exist\00", align 1
@ERRCODE_IN_FAILED_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"current transaction is aborted, commands ignored until end of transaction block\00", align 1
@whereToSendOutput = common dso_local global i64 0, align 8
@DestRemote = common dso_local global i64 0, align 8
@row_description_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @exec_describe_statement_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_describe_statement_message(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = call i32 (...) @start_xact_command()
  %9 = load i32, i32* @MessageContext, align 4
  %10 = call i32 @MemoryContextSwitchTo(i32 %9)
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i8*, i8** %2, align 8
  %18 = call %struct.TYPE_6__* @FetchPreparedStatement(i8* %17, i32 1)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %3, align 8
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @unnamed_stmt_psrc, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %3, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_UNDEFINED_PSTATEMENT, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @ereport(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %22
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @Assert(i32 %36)
  %38 = call i64 (...) @IsAbortedTransactionBlockState()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_IN_FAILED_SQL_TRANSACTION, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 (...) @errdetail_abort()
  %51 = call i32 @ereport(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %45, %40, %33
  %53 = load i64, i64* @whereToSendOutput, align 8
  %54 = load i64, i64* @DestRemote, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %99

57:                                               ; preds = %52
  %58 = call i32 @pq_beginmessage_reuse(i32* @row_description_buf, i8 signext 116)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pq_sendint16(i32* @row_description_buf, i32 %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %80, %57
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @pq_sendint32(i32* @row_description_buf, i32 %78)
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %63

83:                                               ; preds = %63
  %84 = call i32 @pq_endmessage_reuse(i32* @row_description_buf)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = call i32* @CachedPlanGetTargetList(%struct.TYPE_7__* %90, i32* null)
  store i32* %91, i32** %7, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @SendRowDescriptionMessage(i32* @row_description_buf, i64 %94, i32* %95, i32* null)
  br label %99

97:                                               ; preds = %83
  %98 = call i32 @pq_putemptymessage(i8 signext 110)
  br label %99

99:                                               ; preds = %56, %97, %89
  ret void
}

declare dso_local i32 @start_xact_command(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_6__* @FetchPreparedStatement(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IsAbortedTransactionBlockState(...) #1

declare dso_local i32 @errdetail_abort(...) #1

declare dso_local i32 @pq_beginmessage_reuse(i32*, i8 signext) #1

declare dso_local i32 @pq_sendint16(i32*, i32) #1

declare dso_local i32 @pq_sendint32(i32*, i32) #1

declare dso_local i32 @pq_endmessage_reuse(i32*) #1

declare dso_local i32* @CachedPlanGetTargetList(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @SendRowDescriptionMessage(i32*, i64, i32*, i32*) #1

declare dso_local i32 @pq_putemptymessage(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
