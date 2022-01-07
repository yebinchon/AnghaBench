; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_setup_formatted_log_time.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_setup_formatted_log_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@saved_timeval_set = common dso_local global i32 0, align 4
@saved_timeval = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@formatted_log_time = common dso_local global i64 0, align 8
@FORMATTED_TS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%Y-%m-%d %H:%M:%S     %Z\00", align 1
@log_timezone = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".%03d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_formatted_log_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_formatted_log_time() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [13 x i8], align 1
  %3 = load i32, i32* @saved_timeval_set, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 @gettimeofday(%struct.TYPE_3__* @saved_timeval, i32* null)
  store i32 1, i32* @saved_timeval_set, align 4
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @saved_timeval, i32 0, i32 1), align 8
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* @formatted_log_time, align 8
  %10 = load i32, i32* @FORMATTED_TS_LEN, align 4
  %11 = load i32, i32* @log_timezone, align 4
  %12 = call i32 @pg_localtime(i64* %1, i32 %11)
  %13 = call i32 @pg_strftime(i64 %9, i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds [13 x i8], [13 x i8]* %2, i64 0, i64 0
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @saved_timeval, i32 0, i32 0), align 8
  %16 = sdiv i32 %15, 1000
  %17 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i64, i64* @formatted_log_time, align 8
  %19 = add nsw i64 %18, 19
  %20 = getelementptr inbounds [13 x i8], [13 x i8]* %2, i64 0, i64 0
  %21 = call i32 @memcpy(i64 %19, i8* %20, i32 4)
  ret void
}

declare dso_local i32 @gettimeofday(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @pg_strftime(i64, i32, i8*, i32) #1

declare dso_local i32 @pg_localtime(i64*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
