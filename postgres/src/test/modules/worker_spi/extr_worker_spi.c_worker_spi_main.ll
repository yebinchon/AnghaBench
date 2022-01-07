; ModuleID = '/home/carl/AnghaBench/postgres/src/test/modules/worker_spi/extr_worker_spi.c_worker_spi_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/modules/worker_spi/extr_worker_spi.c_worker_spi_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"schema%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"counted\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@worker_spi_sighup = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@worker_spi_sigterm = common dso_local global i32 0, align 4
@worker_spi_database = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%s initialized with %s.%s\00", align 1
@MyBgworkerEntry = common dso_local global %struct.TYPE_12__* null, align 8
@.str.3 = private unnamed_addr constant [233 x i8] c"WITH deleted AS (DELETE FROM %s.%s WHERE type = 'delta' RETURNING value), total AS (SELECT coalesce(sum(value), 0) as sum FROM deleted) UPDATE %s.%s SET value = %s.value + total.sum FROM total WHERE type = 'total' RETURNING %s.value\00", align 1
@got_sigterm = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@worker_spi_naptime = common dso_local global i64 0, align 8
@PG_WAIT_EXTENSION = common dso_local global i32 0, align 4
@got_sighup = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@STATE_RUNNING = common dso_local global i32 0, align 4
@SPI_OK_UPDATE_RETURNING = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"cannot select from table %s.%s: error code %d\00", align 1
@SPI_processed = common dso_local global i64 0, align 8
@SPI_tuptable = common dso_local global %struct.TYPE_11__* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"%s: count in %s.%s is now %d\00", align 1
@STATE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @worker_spi_main(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i8* @DatumGetInt32(i32 %10)
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = call %struct.TYPE_9__* @palloc(i32 16)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %18 = call i8* @pstrdup(i8* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = call i8* @pstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @SIGHUP, align 4
  %25 = load i32, i32* @worker_spi_sighup, align 4
  %26 = call i32 @pqsignal(i32 %24, i32 %25)
  %27 = load i32, i32* @SIGTERM, align 4
  %28 = load i32, i32* @worker_spi_sigterm, align 4
  %29 = call i32 @pqsignal(i32 %27, i32 %28)
  %30 = call i32 (...) @BackgroundWorkerUnblockSignals()
  %31 = load i32, i32* @worker_spi_database, align 4
  %32 = call i32 @BackgroundWorkerInitializeConnection(i32 %31, i32* null, i32 0)
  %33 = load i32, i32* @LOG, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyBgworkerEntry, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = call i32 (i32, i8*, i32, i8*, i32, ...) @elog(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %36, i8* %39, i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = call i32 @initialize_worker_spi(%struct.TYPE_9__* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @quote_identifier(i8* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @quote_identifier(i8* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = call i32 @initStringInfo(%struct.TYPE_10__* %5)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @appendStringInfo(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([233 x i8], [233 x i8]* @.str.3, i64 0, i64 0), i8* %62, i8* %65, i8* %68, i8* %71, i8* %74, i8* %77)
  br label %79

79:                                               ; preds = %160, %1
  %80 = load i32, i32* @got_sigterm, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br i1 %82, label %83, label %167

83:                                               ; preds = %79
  %84 = load i32, i32* @MyLatch, align 4
  %85 = load i32, i32* @WL_LATCH_SET, align 4
  %86 = load i32, i32* @WL_TIMEOUT, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %89 = or i32 %87, %88
  %90 = load i64, i64* @worker_spi_naptime, align 8
  %91 = mul nsw i64 %90, 1000
  %92 = load i32, i32* @PG_WAIT_EXTENSION, align 4
  %93 = call i32 @WaitLatch(i32 %84, i32 %89, i64 %91, i32 %92)
  %94 = load i32, i32* @MyLatch, align 4
  %95 = call i32 @ResetLatch(i32 %94)
  %96 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %97 = load i32, i32* @got_sighup, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %83
  store i32 0, i32* @got_sighup, align 4
  %100 = load i32, i32* @PGC_SIGHUP, align 4
  %101 = call i32 @ProcessConfigFile(i32 %100)
  br label %102

102:                                              ; preds = %99, %83
  %103 = call i32 (...) @SetCurrentStatementStartTimestamp()
  %104 = call i32 (...) @StartTransactionCommand()
  %105 = call i32 (...) @SPI_connect()
  %106 = call i32 (...) @GetTransactionSnapshot()
  %107 = call i32 @PushActiveSnapshot(i32 %106)
  %108 = load i32, i32* @STATE_RUNNING, align 4
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @pgstat_report_activity(i32 %108, i32* %110)
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @SPI_execute(i32* %113, i32 0, i32 0)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @SPI_OK_UPDATE_RETURNING, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %102
  %119 = load i32, i32* @FATAL, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (i32, i8*, i32, i8*, i32, ...) @elog(i32 %119, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %123, i8* %126, i32 %127)
  br label %129

129:                                              ; preds = %118, %102
  %130 = load i64, i64* @SPI_processed, align 8
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %129
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SPI_tuptable, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SPI_tuptable, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @SPI_getbinval(i32 %137, i32 %140, i32 1, i32* %8)
  %142 = call i8* @DatumGetInt32(i32 %141)
  store i8* %142, i8** %9, align 8
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %132
  %146 = load i32, i32* @LOG, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyBgworkerEntry, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = ptrtoint i8* %155 to i32
  %157 = load i8*, i8** %9, align 8
  %158 = call i32 (i32, i8*, i32, i8*, i32, ...) @elog(i32 %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %149, i8* %152, i32 %156, i8* %157)
  br label %159

159:                                              ; preds = %145, %132
  br label %160

160:                                              ; preds = %159, %129
  %161 = call i32 (...) @SPI_finish()
  %162 = call i32 (...) @PopActiveSnapshot()
  %163 = call i32 (...) @CommitTransactionCommand()
  %164 = call i32 @pgstat_report_stat(i32 0)
  %165 = load i32, i32* @STATE_IDLE, align 4
  %166 = call i32 @pgstat_report_activity(i32 %165, i32* null)
  br label %79

167:                                              ; preds = %79
  %168 = call i32 @proc_exit(i32 1)
  ret void
}

declare dso_local i8* @DatumGetInt32(i32) #1

declare dso_local %struct.TYPE_9__* @palloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @BackgroundWorkerUnblockSignals(...) #1

declare dso_local i32 @BackgroundWorkerInitializeConnection(i32, i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @initialize_worker_spi(%struct.TYPE_9__*) #1

declare dso_local i8* @quote_identifier(i8*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_10__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_10__*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @WaitLatch(i32, i32, i64, i32) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ProcessConfigFile(i32) #1

declare dso_local i32 @SetCurrentStatementStartTimestamp(...) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @SPI_connect(...) #1

declare dso_local i32 @PushActiveSnapshot(i32) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local i32 @pgstat_report_activity(i32, i32*) #1

declare dso_local i32 @SPI_execute(i32*, i32, i32) #1

declare dso_local i32 @SPI_getbinval(i32, i32, i32, i32*) #1

declare dso_local i32 @SPI_finish(...) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @pgstat_report_stat(i32) #1

declare dso_local i32 @proc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
