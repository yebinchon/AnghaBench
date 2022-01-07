; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_max_message_size.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_max_message_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CLIENT_HELLO_MAX_LENGTH = common dso_local global i64 0, align 8
@END_OF_EARLY_DATA_MAX_LENGTH = common dso_local global i64 0, align 8
@CLIENT_KEY_EXCH_MAX_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_MAX_PLAIN_LENGTH = common dso_local global i64 0, align 8
@NEXT_PROTO_MAX_LENGTH = common dso_local global i64 0, align 8
@CCS_MAX_LENGTH = common dso_local global i64 0, align 8
@FINISHED_MAX_LENGTH = common dso_local global i64 0, align 8
@KEY_UPDATE_MAX_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ossl_statem_server_max_message_size(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %10 [
    i32 133, label %11
    i32 132, label %13
    i32 136, label %15
    i32 130, label %19
    i32 135, label %21
    i32 128, label %23
    i32 134, label %25
    i32 131, label %27
    i32 129, label %29
  ]

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %31

11:                                               ; preds = %1
  %12 = load i64, i64* @CLIENT_HELLO_MAX_LENGTH, align 8
  store i64 %12, i64* %2, align 8
  br label %31

13:                                               ; preds = %1
  %14 = load i64, i64* @END_OF_EARLY_DATA_MAX_LENGTH, align 8
  store i64 %14, i64* %2, align 8
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %2, align 8
  br label %31

19:                                               ; preds = %1
  %20 = load i64, i64* @CLIENT_KEY_EXCH_MAX_LENGTH, align 8
  store i64 %20, i64* %2, align 8
  br label %31

21:                                               ; preds = %1
  %22 = load i64, i64* @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  store i64 %22, i64* %2, align 8
  br label %31

23:                                               ; preds = %1
  %24 = load i64, i64* @NEXT_PROTO_MAX_LENGTH, align 8
  store i64 %24, i64* %2, align 8
  br label %31

25:                                               ; preds = %1
  %26 = load i64, i64* @CCS_MAX_LENGTH, align 8
  store i64 %26, i64* %2, align 8
  br label %31

27:                                               ; preds = %1
  %28 = load i64, i64* @FINISHED_MAX_LENGTH, align 8
  store i64 %28, i64* %2, align 8
  br label %31

29:                                               ; preds = %1
  %30 = load i64, i64* @KEY_UPDATE_MAX_LENGTH, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %29, %27, %25, %23, %21, %19, %15, %13, %11, %10
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
