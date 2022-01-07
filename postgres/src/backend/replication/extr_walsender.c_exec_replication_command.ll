; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_exec_replication_command.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_exec_replication_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@got_STOPPING = common dso_local global i64 0, align 8
@WALSNDSTATE_STOPPING = common dso_local global i64 0, align 8
@MyWalSnd = common dso_local global %struct.TYPE_12__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"cannot execute new commands while WAL sender is in stopping mode\00", align 1
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Replication command context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"replication command parser returned %d\00", align 1
@replication_parse_result = common dso_local global %struct.TYPE_11__* null, align 8
@log_replication_commands = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"received replication command: %s\00", align 1
@SQLCmd = common dso_local global i32 0, align 4
@ERRCODE_IN_FAILED_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [80 x i8] c"current transaction is aborted, commands ignored until end of transaction block\00", align 1
@output_message = common dso_local global i32 0, align 4
@reply_message = common dso_local global i32 0, align 4
@tmpbuf = common dso_local global i32 0, align 4
@STATE_RUNNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"BASE_BACKUP\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"START_REPLICATION\00", align 1
@REPLICATION_KIND_PHYSICAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"TIMELINE_HISTORY\00", align 1
@DestRemoteSimple = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [67 x i8] c"cannot execute SQL commands in WAL sender for physical replication\00", align 1
@STATE_IDLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"unrecognized replication command node tag: %u\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@DestRemote = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_replication_command(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i64, i64* @got_STOPPING, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i64, i64* @WALSNDSTATE_STOPPING, align 8
  %15 = call i32 @WalSndSetState(i64 %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyWalSnd, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WALSNDSTATE_STOPPING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @ereport(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %16
  %27 = call i32 (...) @SnapBuildClearExportedSnapshot()
  %28 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %29 = load i32, i32* @CurrentMemoryContext, align 4
  %30 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %31 = call i32 @AllocSetContextCreate(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @MemoryContextSwitchTo(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @replication_scanner_init(i8* %34)
  %36 = call i32 (...) @replication_yyparse()
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @errmsg_internal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = call i32 @ereport(i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %39, %26
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @replication_parse_result, align 8
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %5, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 131
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i64, i64* @log_replication_commands, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @LOG, align 4
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @DEBUG1, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = call i32 @ereport(i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %59, %46
  %65 = call i32 (...) @IsTransactionBlock()
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = call i32 (...) @SnapBuildClearExportedSnapshot()
  br label %69

69:                                               ; preds = %67, %64
  %70 = call i64 (...) @IsAbortedTransactionBlockState()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = load i32, i32* @SQLCmd, align 4
  %75 = call i32 @IsA(%struct.TYPE_11__* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i32, i32* @ERRCODE_IN_FAILED_SQL_TRANSACTION, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  %82 = call i32 @ereport(i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %72, %69
  %84 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %85 = call i32 @initStringInfo(i32* @output_message)
  %86 = call i32 @initStringInfo(i32* @reply_message)
  %87 = call i32 @initStringInfo(i32* @tmpbuf)
  %88 = load i32, i32* @STATE_RUNNING, align 4
  %89 = call i32 @pgstat_report_activity(i32 %88, i32* null)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %152 [
    i32 132, label %93
    i32 135, label %95
    i32 134, label %100
    i32 133, label %104
    i32 130, label %108
    i32 129, label %124
    i32 128, label %129
    i32 131, label %141
  ]

93:                                               ; preds = %83
  %94 = call i32 (...) @IdentifySystem()
  br label %158

95:                                               ; preds = %83
  %96 = call i32 @PreventInTransactionBlock(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = bitcast %struct.TYPE_11__* %97 to i32*
  %99 = call i32 @SendBaseBackup(i32* %98)
  br label %158

100:                                              ; preds = %83
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = bitcast %struct.TYPE_11__* %101 to i32*
  %103 = call i32 @CreateReplicationSlot(i32* %102)
  br label %158

104:                                              ; preds = %83
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = bitcast %struct.TYPE_11__* %105 to i32*
  %107 = call i32 @DropReplicationSlot(i32* %106)
  br label %158

108:                                              ; preds = %83
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = bitcast %struct.TYPE_11__* %109 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %8, align 8
  %111 = call i32 @PreventInTransactionBlock(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @REPLICATION_KIND_PHYSICAL, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %119 = call i32 @StartReplication(%struct.TYPE_10__* %118)
  br label %123

120:                                              ; preds = %108
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %122 = call i32 @StartLogicalReplication(%struct.TYPE_10__* %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %158

124:                                              ; preds = %83
  %125 = call i32 @PreventInTransactionBlock(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = bitcast %struct.TYPE_11__* %126 to i32*
  %128 = call i32 @SendTimeLineHistory(i32* %127)
  br label %158

129:                                              ; preds = %83
  %130 = load i32, i32* @DestRemoteSimple, align 4
  %131 = call i32* @CreateDestReceiver(i32 %130)
  store i32* %131, i32** %9, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %133 = bitcast %struct.TYPE_11__* %132 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %133, %struct.TYPE_9__** %10, align 8
  %134 = call i32 (...) @StartTransactionCommand()
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = call i32 @GetPGVariable(i32 %137, i32* %138)
  %140 = call i32 (...) @CommitTransactionCommand()
  br label %158

141:                                              ; preds = %83
  %142 = load i32, i32* @MyDatabaseId, align 4
  %143 = load i32, i32* @InvalidOid, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32, i32* @ERROR, align 4
  %147 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0))
  %148 = call i32 @ereport(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %141
  %150 = load i32, i32* @STATE_IDLE, align 4
  %151 = call i32 @pgstat_report_activity(i32 %150, i32* null)
  store i32 0, i32* %2, align 4
  br label %167

152:                                              ; preds = %83
  %153 = load i32, i32* @ERROR, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @elog(i32 %153, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %152, %129, %124, %123, %104, %100, %95, %93
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @MemoryContextSwitchTo(i32 %159)
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @MemoryContextDelete(i32 %161)
  %163 = load i32, i32* @DestRemote, align 4
  %164 = call i32 @EndCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @STATE_IDLE, align 4
  %166 = call i32 @pgstat_report_activity(i32 %165, i32* null)
  store i32 1, i32* %2, align 4
  br label %167

167:                                              ; preds = %158, %149
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @WalSndSetState(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @SnapBuildClearExportedSnapshot(...) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @replication_scanner_init(i8*) #1

declare dso_local i32 @replication_yyparse(...) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i32) #1

declare dso_local i32 @IsTransactionBlock(...) #1

declare dso_local i64 @IsAbortedTransactionBlockState(...) #1

declare dso_local i32 @IsA(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @initStringInfo(i32*) #1

declare dso_local i32 @pgstat_report_activity(i32, i32*) #1

declare dso_local i32 @IdentifySystem(...) #1

declare dso_local i32 @PreventInTransactionBlock(i32, i8*) #1

declare dso_local i32 @SendBaseBackup(i32*) #1

declare dso_local i32 @CreateReplicationSlot(i32*) #1

declare dso_local i32 @DropReplicationSlot(i32*) #1

declare dso_local i32 @StartReplication(%struct.TYPE_10__*) #1

declare dso_local i32 @StartLogicalReplication(%struct.TYPE_10__*) #1

declare dso_local i32 @SendTimeLineHistory(i32*) #1

declare dso_local i32* @CreateDestReceiver(i32) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @GetPGVariable(i32, i32*) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

declare dso_local i32 @EndCommand(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
