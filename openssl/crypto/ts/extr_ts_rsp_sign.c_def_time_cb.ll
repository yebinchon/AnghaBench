; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_sign.c_def_time_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_sign.c_def_time_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TS_resp_ctx = type { i32 }
%struct.timeval = type { i64, i64 }

@TS_F_DEF_TIME_CB = common dso_local global i32 0, align 4
@TS_R_TIME_SYSCALL_ERROR = common dso_local global i32 0, align 4
@TS_STATUS_REJECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Time is not available.\00", align 1
@TS_INFO_TIME_NOT_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TS_resp_ctx*, i8*, i64*, i64*)* @def_time_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @def_time_cb(%struct.TS_resp_ctx* %0, i8* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TS_resp_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.timeval, align 8
  store %struct.TS_resp_ctx* %0, %struct.TS_resp_ctx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = call i64 @gettimeofday(%struct.timeval* %10, i32* null)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  %14 = load i32, i32* @TS_F_DEF_TIME_CB, align 4
  %15 = load i32, i32* @TS_R_TIME_SYSCALL_ERROR, align 4
  %16 = call i32 @TSerr(i32 %14, i32 %15)
  %17 = load %struct.TS_resp_ctx*, %struct.TS_resp_ctx** %6, align 8
  %18 = load i32, i32* @TS_STATUS_REJECTION, align 4
  %19 = call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* %17, i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TS_resp_ctx*, %struct.TS_resp_ctx** %6, align 8
  %21 = load i32, i32* @TS_INFO_TIME_NOT_AVAILABLE, align 4
  %22 = call i32 @TS_RESP_CTX_add_failure_info(%struct.TS_resp_ctx* %20, i32 %21)
  store i32 0, i32* %5, align 4
  br label %30

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %8, align 8
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %9, align 8
  store i64 %28, i64* %29, align 8
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %23, %13
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i64 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @TSerr(i32, i32) #1

declare dso_local i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx*, i32, i8*) #1

declare dso_local i32 @TS_RESP_CTX_add_failure_info(%struct.TS_resp_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
