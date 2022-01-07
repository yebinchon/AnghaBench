; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_mbedtls_handshake_result.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_mbedtls_handshake_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@MBEDTLS_SSL_HANDSHAKE_OVER = common dso_local global i64 0, align 8
@ssl_option = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @mbedtls_handshake_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_handshake_result(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [512 x i8], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = icmp eq %struct.TYPE_15__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

9:                                                ; preds = %1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MBEDTLS_SSL_HANDSHAKE_OVER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ssl_option, i32 0, i32 1, i32 0, i32 0), align 4
  store i32 %23, i32* %4, align 4
  br label %26

24:                                               ; preds = %16
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ssl_option, i32 0, i32 0, i32 0, i32 0), align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = call i32 @mbedtls_ssl_get_verify_result(%struct.TYPE_17__* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %37 = call i32 @os_memset(i8* %36, i32 0, i32 511)
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @mbedtls_x509_crt_verify_info(i8* %38, i32 512, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %42 = call i32 @os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %2, align 4
  br label %49

46:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %49

47:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %49

48:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %47, %46, %35, %8
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mbedtls_ssl_get_verify_result(%struct.TYPE_17__*) #1

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i32 @mbedtls_x509_crt_verify_info(i8*, i32, i8*, i32) #1

declare dso_local i32 @os_printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
