; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_exec_describe_portal_message.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_exec_describe_portal_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@MessageContext = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_CURSOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"portal \22%s\22 does not exist\00", align 1
@ERRCODE_IN_FAILED_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"current transaction is aborted, commands ignored until end of transaction block\00", align 1
@whereToSendOutput = common dso_local global i64 0, align 8
@DestRemote = common dso_local global i64 0, align 8
@row_description_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @exec_describe_portal_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_describe_portal_message(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @start_xact_command()
  %5 = load i32, i32* @MessageContext, align 4
  %6 = call i32 @MemoryContextSwitchTo(i32 %5)
  %7 = load i8*, i8** %2, align 8
  %8 = call %struct.TYPE_5__* @GetPortalByName(i8* %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = call i32 @PortalIsValid(%struct.TYPE_5__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i32, i32* @ERRCODE_UNDEFINED_CURSOR, align 4
  %15 = call i32 @errcode(i32 %14)
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 @ereport(i32 %13, i32 %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = call i64 (...) @IsAbortedTransactionBlockState()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_IN_FAILED_SQL_TRANSACTION, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (...) @errdetail_abort()
  %33 = call i32 @ereport(i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %27, %22, %19
  %35 = load i64, i64* @whereToSendOutput, align 8
  %36 = load i64, i64* @DestRemote, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %56

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = call i32 @FetchPortalTargetList(%struct.TYPE_5__* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @SendRowDescriptionMessage(i32* @row_description_buf, i64 %47, i32 %49, i32 %52)
  br label %56

54:                                               ; preds = %39
  %55 = call i32 @pq_putemptymessage(i8 signext 110)
  br label %56

56:                                               ; preds = %38, %54, %44
  ret void
}

declare dso_local i32 @start_xact_command(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_5__* @GetPortalByName(i8*) #1

declare dso_local i32 @PortalIsValid(%struct.TYPE_5__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @IsAbortedTransactionBlockState(...) #1

declare dso_local i32 @errdetail_abort(...) #1

declare dso_local i32 @SendRowDescriptionMessage(i32*, i64, i32, i32) #1

declare dso_local i32 @FetchPortalTargetList(%struct.TYPE_5__*) #1

declare dso_local i32 @pq_putemptymessage(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
