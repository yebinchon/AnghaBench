; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_post_process_message.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_post_process_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_OSSL_STATEM_SERVER_POST_PROCESS_MESSAGE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@WORK_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_server_post_process_message(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %12 [
    i32 129, label %19
    i32 128, label %23
  ]

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %15 = load i32, i32* @SSL_F_OSSL_STATEM_SERVER_POST_PROCESS_MESSAGE, align 4
  %16 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %17 = call i32 @SSLfatal(%struct.TYPE_7__* %13, i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @WORK_ERROR, align 4
  store i32 %18, i32* %3, align 4
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @tls_post_process_client_hello(%struct.TYPE_7__* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @tls_post_process_client_key_exchange(%struct.TYPE_7__* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %19, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @SSLfatal(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @tls_post_process_client_hello(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @tls_post_process_client_key_exchange(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
