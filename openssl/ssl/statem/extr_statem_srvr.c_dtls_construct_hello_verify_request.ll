; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_dtls_construct_hello_verify_request.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_dtls_construct_hello_verify_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_9__*, i32, i32*)* }

@SSL_AD_NO_ALERT = common dso_local global i32 0, align 4
@SSL_F_DTLS_CONSTRUCT_HELLO_VERIFY_REQUEST = common dso_local global i32 0, align 4
@SSL_R_COOKIE_GEN_CALLBACK_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls_construct_hello_verify_request(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64 (%struct.TYPE_9__*, i32, i32*)*, i64 (%struct.TYPE_9__*, i32, i32*)** %10, align 8
  %12 = icmp eq i64 (%struct.TYPE_9__*, i32, i32*)* %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64 (%struct.TYPE_9__*, i32, i32*)*, i64 (%struct.TYPE_9__*, i32, i32*)** %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 %18(%struct.TYPE_9__* %19, i32 %24, i32* %6)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %6, align 4
  %29 = icmp ugt i32 %28, 255
  br i1 %29, label %30, label %36

30:                                               ; preds = %27, %13, %2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = load i32, i32* @SSL_AD_NO_ALERT, align 4
  %33 = load i32, i32* @SSL_F_DTLS_CONSTRUCT_HELLO_VERIFY_REQUEST, align 4
  %34 = load i32, i32* @SSL_R_COOKIE_GEN_CALLBACK_FAILURE, align 4
  %35 = call i32 @SSLfatal(%struct.TYPE_9__* %31, i32 %32, i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %62

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dtls_raw_hello_verify_request(i32* %42, i32 %47, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %36
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = load i32, i32* @SSL_AD_NO_ALERT, align 4
  %58 = load i32, i32* @SSL_F_DTLS_CONSTRUCT_HELLO_VERIFY_REQUEST, align 4
  %59 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %60 = call i32 @SSLfatal(%struct.TYPE_9__* %56, i32 %57, i32 %58, i32 %59)
  store i32 0, i32* %3, align 4
  br label %62

61:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %55, %30
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @SSLfatal(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @dtls_raw_hello_verify_request(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
