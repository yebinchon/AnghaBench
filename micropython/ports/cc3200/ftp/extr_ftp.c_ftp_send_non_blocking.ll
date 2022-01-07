; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_send_non_blocking.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_send_non_blocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ftp_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@E_FTP_RESULT_OK = common dso_local global i32 0, align 4
@FTP_TX_RETRIES_MAX = common dso_local global i64 0, align 8
@SL_EAGAIN = common dso_local global i64 0, align 8
@E_FTP_RESULT_CONTINUE = common dso_local global i32 0, align 4
@E_FTP_RESULT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @ftp_send_non_blocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_send_non_blocking(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @sl_Send(i32 %9, i8* %10, i32 %11, i32 0)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 0), align 8
  %16 = load i32, i32* @E_FTP_RESULT_OK, align 4
  store i32 %16, i32* %4, align 4
  br label %31

17:                                               ; preds = %3
  %18 = load i64, i64* @FTP_TX_RETRIES_MAX, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 0), align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 0), align 8
  %21 = icmp sge i64 %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @SL_EAGAIN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @E_FTP_RESULT_CONTINUE, align 4
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %22, %17
  %29 = call i32 (...) @ftp_reset()
  %30 = load i32, i32* @E_FTP_RESULT_FAILED, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %26, %15
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @sl_Send(i32, i8*, i32, i32) #1

declare dso_local i32 @ftp_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
