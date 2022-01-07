; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_backend_read_statsfile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_backend_read_statsfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pgStatDBHash = common dso_local global i64 0, align 8
@pgStatRunningInCollector = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@PGSTAT_POLL_LOOP_COUNT = common dso_local global i32 0, align 4
@PGSTAT_RETRY_DELAY = common dso_local global i64 0, align 8
@PGSTAT_STAT_INTERVAL = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"stats collector's time %s is later than backend local time %s\00", align 1
@PGSTAT_INQ_LOOP_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"using stale statistics instead of current ones because stats collector is not responding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @backend_read_statsfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backend_read_statsfile() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  %10 = load i64, i64* @pgStatDBHash, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %131

13:                                               ; preds = %0
  %14 = load i32, i32* @pgStatRunningInCollector, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = call i64 (...) @IsAutoVacuumLauncherProcess()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @InvalidOid, align 4
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @MyDatabaseId, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %21
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %111, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PGSTAT_POLL_LOOP_COUNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %114

30:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  %31 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pgstat_read_db_statsfile_timestamp(i32 %32, i32 0, i64* %6)
  store i32 %33, i32* %5, align 4
  %34 = call i64 (...) @GetCurrentTimestamp()
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %2, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37, %30
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %2, align 8
  %43 = call i64 (...) @IsAutoVacuumWorkerProcess()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* @PGSTAT_RETRY_DELAY, align 8
  %48 = sub nsw i64 0, %47
  %49 = trunc i64 %48 to i32
  %50 = call i64 @TimestampTzPlusMilliseconds(i64 %46, i32 %49)
  store i64 %50, i64* %1, align 8
  br label %56

51:                                               ; preds = %41
  %52 = load i64, i64* %2, align 8
  %53 = load i32, i32* @PGSTAT_STAT_INTERVAL, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i64 @TimestampTzPlusMilliseconds(i64 %52, i32 %54)
  store i64 %55, i64* %1, align 8
  br label %56

56:                                               ; preds = %51, %45
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @TimestampTzPlusMilliseconds(i64 %66, i32 1000)
  %68 = icmp sge i64 %65, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @timestamptz_to_str(i64 %70)
  %72 = call i8* @pstrdup(i32 %71)
  store i8* %72, i8** %8, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @timestamptz_to_str(i64 %73)
  %75 = call i8* @pstrdup(i32 %74)
  store i8* %75, i8** %9, align 8
  %76 = load i32, i32* @LOG, align 4
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @elog(i32 %76, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %77, i8* %78)
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @pfree(i8* %80)
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @pfree(i8* %82)
  br label %84

84:                                               ; preds = %69, %64
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %1, align 8
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @pgstat_send_inquiry(i64 %85, i64 %86, i32 %87)
  br label %114

89:                                               ; preds = %60, %57
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %1, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %114

97:                                               ; preds = %92, %89
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @PGSTAT_INQ_LOOP_COUNT, align 4
  %100 = srem i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %1, align 8
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @pgstat_send_inquiry(i64 %103, i64 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %97
  %108 = load i64, i64* @PGSTAT_RETRY_DELAY, align 8
  %109 = mul nsw i64 %108, 1000
  %110 = call i32 @pg_usleep(i64 %109)
  br label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %26

114:                                              ; preds = %96, %84, %26
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @PGSTAT_POLL_LOOP_COUNT, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* @LOG, align 4
  %120 = call i32 @errmsg(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  %121 = call i32 @ereport(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %114
  %123 = call i64 (...) @IsAutoVacuumLauncherProcess()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* @InvalidOid, align 4
  %127 = call i64 @pgstat_read_statsfiles(i32 %126, i32 0, i32 0)
  store i64 %127, i64* @pgStatDBHash, align 8
  br label %131

128:                                              ; preds = %122
  %129 = load i32, i32* @MyDatabaseId, align 4
  %130 = call i64 @pgstat_read_statsfiles(i32 %129, i32 0, i32 1)
  store i64 %130, i64* @pgStatDBHash, align 8
  br label %131

131:                                              ; preds = %12, %128, %125
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IsAutoVacuumLauncherProcess(...) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pgstat_read_db_statsfile_timestamp(i32, i32, i64*) #1

declare dso_local i64 @GetCurrentTimestamp(...) #1

declare dso_local i64 @IsAutoVacuumWorkerProcess(...) #1

declare dso_local i64 @TimestampTzPlusMilliseconds(i64, i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @timestamptz_to_str(i64) #1

declare dso_local i32 @elog(i32, i8*, i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @pgstat_send_inquiry(i64, i64, i32) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @pgstat_read_statsfiles(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
