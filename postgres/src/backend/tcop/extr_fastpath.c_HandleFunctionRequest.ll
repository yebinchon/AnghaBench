; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_fastpath.c_HandleFunctionRequest.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_fastpath.c_HandleFunctionRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.fp_info = type { i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 }

@fcinfo = common dso_local global %struct.TYPE_10__* null, align 8
@FUNC_MAX_ARGS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_IN_FAILED_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"current transaction is aborted, commands ignored until end of transaction block\00", align 1
@FrontendProtocol = common dso_local global i32 0, align 4
@log_statement = common dso_local global i64 0, align 8
@LOGSTMT_ALL = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"fastpath function call: \22%s\22 (OID %u)\00", align 1
@ACL_USAGE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_SCHEMA = common dso_local global i32 0, align 4
@ACL_EXECUTE = common dso_local global i32 0, align 4
@OBJECT_FUNCTION = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"duration: %s ms\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"duration: %s ms  fastpath function call: \22%s\22 (OID %u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HandleFunctionRequest(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.fp_info, align 8
  %8 = alloca %struct.fp_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fcinfo, align 8
  %14 = load i32, i32* @FUNC_MAX_ARGS, align 4
  %15 = call i32 @LOCAL_FCINFO(%struct.TYPE_10__* %13, i32 %14)
  store i32 0, i32* %10, align 4
  %16 = call i64 (...) @IsAbortedTransactionBlockState()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_IN_FAILED_SQL_TRANSACTION, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @ereport(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = call i32 (...) @GetTransactionSnapshot()
  %26 = call i32 @PushActiveSnapshot(i32 %25)
  %27 = load i32, i32* @FrontendProtocol, align 4
  %28 = call i32 @PG_PROTOCOL_MAJOR(i32 %27)
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @pq_getmsgstring(i32 %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @pq_getmsgint(i32 %34, i32 4)
  store i64 %35, i64* %3, align 8
  store %struct.fp_info* %7, %struct.fp_info** %8, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.fp_info*, %struct.fp_info** %8, align 8
  %38 = call i32 @fetch_fp_info(i64 %36, %struct.fp_info* %37)
  %39 = load i64, i64* @log_statement, align 8
  %40 = load i64, i64* @LOGSTMT_ALL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load i32, i32* @LOG, align 4
  %44 = load %struct.fp_info*, %struct.fp_info** %8, align 8
  %45 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %46, i64 %47)
  %49 = call i32 @ereport(i32 %43, i32 %48)
  store i32 1, i32* %10, align 4
  br label %50

50:                                               ; preds = %42, %33
  %51 = load %struct.fp_info*, %struct.fp_info** %8, align 8
  %52 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (...) @GetUserId()
  %55 = load i32, i32* @ACL_USAGE, align 4
  %56 = call i64 @pg_namespace_aclcheck(i32 %53, i32 %54, i32 %55)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @ACLCHECK_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load i64, i64* %4, align 8
  %62 = load i32, i32* @OBJECT_SCHEMA, align 4
  %63 = load %struct.fp_info*, %struct.fp_info** %8, align 8
  %64 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @get_namespace_name(i32 %65)
  %67 = call i32 @aclcheck_error(i64 %61, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %60, %50
  %69 = load %struct.fp_info*, %struct.fp_info** %8, align 8
  %70 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @InvokeNamespaceSearchHook(i32 %71, i32 1)
  %73 = load i64, i64* %3, align 8
  %74 = call i32 (...) @GetUserId()
  %75 = load i32, i32* @ACL_EXECUTE, align 4
  %76 = call i64 @pg_proc_aclcheck(i64 %73, i32 %74, i32 %75)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @ACLCHECK_OK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %68
  %81 = load i64, i64* %4, align 8
  %82 = load i32, i32* @OBJECT_FUNCTION, align 4
  %83 = load i64, i64* %3, align 8
  %84 = call i32 @get_func_name(i64 %83)
  %85 = call i32 @aclcheck_error(i64 %81, i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %80, %68
  %87 = load i64, i64* %3, align 8
  %88 = call i32 @InvokeFunctionExecuteHook(i64 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fcinfo, align 8
  %90 = load %struct.fp_info*, %struct.fp_info** %8, align 8
  %91 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %90, i32 0, i32 2
  %92 = load i32, i32* @InvalidOid, align 4
  %93 = bitcast %struct.TYPE_10__* %89 to { i64, %struct.TYPE_9__* }*
  %94 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %93, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = call i32 @InitFunctionCallInfoData(i64 %95, %struct.TYPE_9__* %97, %struct.TYPE_11__* %91, i32 0, i32 %92, i32* null, i32* null)
  %99 = load i32, i32* @FrontendProtocol, align 4
  %100 = call i32 @PG_PROTOCOL_MAJOR(i32 %99)
  %101 = icmp sge i32 %100, 3
  br i1 %101, label %102, label %107

102:                                              ; preds = %86
  %103 = load i32, i32* %2, align 4
  %104 = load %struct.fp_info*, %struct.fp_info** %8, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fcinfo, align 8
  %106 = call i32 @parse_fcall_arguments(i32 %103, %struct.fp_info* %104, %struct.TYPE_10__* %105)
  store i32 %106, i32* %5, align 4
  br label %112

107:                                              ; preds = %86
  %108 = load i32, i32* %2, align 4
  %109 = load %struct.fp_info*, %struct.fp_info** %8, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fcinfo, align 8
  %111 = call i32 @parse_fcall_arguments_20(i32 %108, %struct.fp_info* %109, %struct.TYPE_10__* %110)
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %2, align 4
  %114 = call i32 @pq_getmsgend(i32 %113)
  store i32 1, i32* %9, align 4
  %115 = load %struct.fp_info*, %struct.fp_info** %8, align 8
  %116 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %112
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %139, %120
  %122 = load i32, i32* %12, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fcinfo, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %121
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fcinfo, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  store i32 0, i32* %9, align 4
  br label %142

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %121

142:                                              ; preds = %137, %121
  br label %143

143:                                              ; preds = %142, %112
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fcinfo, align 8
  %148 = call i64 @FunctionCallInvoke(%struct.TYPE_10__* %147)
  store i64 %148, i64* %6, align 8
  br label %152

149:                                              ; preds = %143
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fcinfo, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  store i64 0, i64* %6, align 8
  br label %152

152:                                              ; preds = %149, %146
  %153 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %154 = load i64, i64* %6, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fcinfo, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.fp_info*, %struct.fp_info** %8, align 8
  %159 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @SendFunctionResult(i64 %154, i32 %157, i32 %160, i32 %161)
  %163 = call i32 (...) @PopActiveSnapshot()
  %164 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @check_log_duration(i8* %164, i32 %165)
  switch i32 %166, label %181 [
    i32 1, label %167
    i32 2, label %172
  ]

167:                                              ; preds = %152
  %168 = load i32, i32* @LOG, align 4
  %169 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %170 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %169)
  %171 = call i32 @ereport(i32 %168, i32 %170)
  br label %181

172:                                              ; preds = %152
  %173 = load i32, i32* @LOG, align 4
  %174 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %175 = load %struct.fp_info*, %struct.fp_info** %8, align 8
  %176 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i64, i64* %3, align 8
  %179 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %174, i32 %177, i64 %178)
  %180 = call i32 @ereport(i32 %173, i32 %179)
  br label %181

181:                                              ; preds = %152, %172, %167
  ret void
}

declare dso_local i32 @LOCAL_FCINFO(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @IsAbortedTransactionBlockState(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @PushActiveSnapshot(i32) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @pq_getmsgstring(i32) #1

declare dso_local i64 @pq_getmsgint(i32, i32) #1

declare dso_local i32 @fetch_fp_info(i64, %struct.fp_info*) #1

declare dso_local i64 @pg_namespace_aclcheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @InvokeNamespaceSearchHook(i32, i32) #1

declare dso_local i64 @pg_proc_aclcheck(i64, i32, i32) #1

declare dso_local i32 @get_func_name(i64) #1

declare dso_local i32 @InvokeFunctionExecuteHook(i64) #1

declare dso_local i32 @InitFunctionCallInfoData(i64, %struct.TYPE_9__*, %struct.TYPE_11__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @parse_fcall_arguments(i32, %struct.fp_info*, %struct.TYPE_10__*) #1

declare dso_local i32 @parse_fcall_arguments_20(i32, %struct.fp_info*, %struct.TYPE_10__*) #1

declare dso_local i32 @pq_getmsgend(i32) #1

declare dso_local i64 @FunctionCallInvoke(%struct.TYPE_10__*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @SendFunctionResult(i64, i32, i32, i32) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @check_log_duration(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
