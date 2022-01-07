; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_hello_req.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_hello_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_HELLO_REQ = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4
@SSL_OP_NO_RENEGOTIATION = common dso_local global i32 0, align 4
@SSL3_AL_WARNING = common dso_local global i32 0, align 4
@SSL_AD_NO_RENEGOTIATION = common dso_local global i32 0, align 4
@MSG_PROCESS_FINISHED_READING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_hello_req(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = call i64 @PACKET_remaining(i32* %6)
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %12 = load i32, i32* @SSL_F_TLS_PROCESS_HELLO_REQ, align 4
  %13 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %14 = call i32 @SSLfatal(%struct.TYPE_8__* %10, i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SSL_OP_NO_RENEGOTIATION, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = load i32, i32* @SSL3_AL_WARNING, align 4
  %26 = load i32, i32* @SSL_AD_NO_RENEGOTIATION, align 4
  %27 = call i32 @ssl3_send_alert(%struct.TYPE_8__* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %16
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = call i64 @SSL_IS_DTLS(%struct.TYPE_8__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = call i32 @SSL_renegotiate(%struct.TYPE_8__* %34)
  br label %39

36:                                               ; preds = %29
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = call i32 @SSL_renegotiate_abbreviated(%struct.TYPE_8__* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %23, %9
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @ssl3_send_alert(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_8__*) #1

declare dso_local i32 @SSL_renegotiate(%struct.TYPE_8__*) #1

declare dso_local i32 @SSL_renegotiate_abbreviated(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
