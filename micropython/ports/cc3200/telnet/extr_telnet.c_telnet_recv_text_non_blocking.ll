; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/telnet/extr_telnet.c_telnet_recv_text_non_blocking.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/telnet/extr_telnet.c_telnet_recv_text_non_blocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@telnet_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@E_TELNET_RESULT_OK = common dso_local global i32 0, align 4
@SL_EAGAIN = common dso_local global i64 0, align 8
@E_TELNET_RESULT_FAILED = common dso_local global i32 0, align 4
@E_TELNET_RESULT_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*)* @telnet_recv_text_non_blocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telnet_recv_text_non_blocking(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 1), align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @sl_Recv(i32 %8, i8* %9, i64 %10, i32 0)
  %12 = load i64*, i64** %7, align 8
  store i64 %11, i64* %12, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = call i32 @telnet_parse_input(i8* %17, i64* %18)
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @E_TELNET_RESULT_OK, align 4
  store i32 %24, i32* %4, align 4
  br label %37

25:                                               ; preds = %16
  br label %35

26:                                               ; preds = %3
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SL_EAGAIN, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i32 (...) @telnet_reset()
  %33 = load i32, i32* @E_TELNET_RESULT_FAILED, align 4
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %25
  %36 = load i32, i32* @E_TELNET_RESULT_AGAIN, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %31, %23
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @sl_Recv(i32, i8*, i64, i32) #1

declare dso_local i32 @telnet_parse_input(i8*, i64*) #1

declare dso_local i32 @telnet_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
