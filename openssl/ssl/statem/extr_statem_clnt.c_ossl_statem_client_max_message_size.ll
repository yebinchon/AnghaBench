; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_max_message_size.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_max_message_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SERVER_HELLO_MAX_LENGTH = common dso_local global i64 0, align 8
@HELLO_VERIFY_REQUEST_MAX_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_MAX_PLAIN_LENGTH = common dso_local global i64 0, align 8
@SERVER_KEY_EXCH_MAX_LENGTH = common dso_local global i64 0, align 8
@SERVER_HELLO_DONE_MAX_LENGTH = common dso_local global i64 0, align 8
@DTLS1_BAD_VER = common dso_local global i32 0, align 4
@CCS_MAX_LENGTH = common dso_local global i64 0, align 8
@FINISHED_MAX_LENGTH = common dso_local global i64 0, align 8
@ENCRYPTED_EXTENSIONS_MAX_LENGTH = common dso_local global i64 0, align 8
@KEY_UPDATE_MAX_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ossl_statem_client_max_message_size(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %10 [
    i32 128, label %11
    i32 140, label %13
    i32 139, label %15
    i32 136, label %19
    i32 137, label %21
    i32 132, label %23
    i32 138, label %25
    i32 129, label %29
    i32 135, label %31
    i32 130, label %40
    i32 133, label %42
    i32 134, label %44
    i32 131, label %46
  ]

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %48

11:                                               ; preds = %1
  %12 = load i64, i64* @SERVER_HELLO_MAX_LENGTH, align 8
  store i64 %12, i64* %2, align 8
  br label %48

13:                                               ; preds = %1
  %14 = load i64, i64* @HELLO_VERIFY_REQUEST_MAX_LENGTH, align 8
  store i64 %14, i64* %2, align 8
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %2, align 8
  br label %48

19:                                               ; preds = %1
  %20 = load i64, i64* @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  store i64 %20, i64* %2, align 8
  br label %48

21:                                               ; preds = %1
  %22 = load i64, i64* @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  store i64 %22, i64* %2, align 8
  br label %48

23:                                               ; preds = %1
  %24 = load i64, i64* @SERVER_KEY_EXCH_MAX_LENGTH, align 8
  store i64 %24, i64* %2, align 8
  br label %48

25:                                               ; preds = %1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %2, align 8
  br label %48

29:                                               ; preds = %1
  %30 = load i64, i64* @SERVER_HELLO_DONE_MAX_LENGTH, align 8
  store i64 %30, i64* %2, align 8
  br label %48

31:                                               ; preds = %1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DTLS1_BAD_VER, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i64 3, i64* %2, align 8
  br label %48

38:                                               ; preds = %31
  %39 = load i64, i64* @CCS_MAX_LENGTH, align 8
  store i64 %39, i64* %2, align 8
  br label %48

40:                                               ; preds = %1
  %41 = load i64, i64* @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  store i64 %41, i64* %2, align 8
  br label %48

42:                                               ; preds = %1
  %43 = load i64, i64* @FINISHED_MAX_LENGTH, align 8
  store i64 %43, i64* %2, align 8
  br label %48

44:                                               ; preds = %1
  %45 = load i64, i64* @ENCRYPTED_EXTENSIONS_MAX_LENGTH, align 8
  store i64 %45, i64* %2, align 8
  br label %48

46:                                               ; preds = %1
  %47 = load i64, i64* @KEY_UPDATE_MAX_LENGTH, align 8
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %46, %44, %42, %40, %38, %37, %29, %25, %23, %21, %19, %15, %13, %11, %10
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
