; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_encrypted_extensions.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_encrypted_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_ENCRYPTED_EXTENSIONS = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_READING = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @tls_process_encrypted_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_encrypted_extensions(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @PACKET_as_length_prefixed_2(i32* %8, i32* %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @PACKET_remaining(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %18 = load i32, i32* @SSL_F_TLS_PROCESS_ENCRYPTED_EXTENSIONS, align 4
  %19 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %20 = call i32 @SSLfatal(i32* %16, i32 %17, i32 %18, i32 %19)
  br label %37

21:                                               ; preds = %11
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS, align 4
  %24 = call i32 @tls_collect_extensions(i32* %22, i32* %6, i32 %23, i32** %7, i32* null, i32 1)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @tls_parse_all_extensions(i32* %27, i32 %28, i32* %29, i32* null, i32 0, i32 1)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26, %21
  br label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @OPENSSL_free(i32* %34)
  %36 = load i32, i32* @MSG_PROCESS_CONTINUE_READING, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %32, %15
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @OPENSSL_free(i32* %38)
  %40 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @PACKET_as_length_prefixed_2(i32*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32 @tls_collect_extensions(i32*, i32*, i32, i32**, i32*, i32) #1

declare dso_local i32 @tls_parse_all_extensions(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
