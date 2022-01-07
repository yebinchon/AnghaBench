; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_s_server.c_print_stats.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_s_server.c_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"%4ld items in the session cache\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%4ld client connects (SSL_connect())\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%4ld client renegotiates (SSL_connect())\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%4ld client connects that finished\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%4ld server accepts (SSL_accept())\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"%4ld server renegotiates (SSL_accept())\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%4ld server accepts that finished\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"%4ld session cache hits\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%4ld session cache misses\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"%4ld session cache timeouts\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"%4ld callback cache hits\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"%4ld cache full overflows (%ld allowed)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stats(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @SSL_CTX_sess_number(i32* %6)
  %8 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @SSL_CTX_sess_connect(i32* %10)
  %12 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @SSL_CTX_sess_connect_renegotiate(i32* %14)
  %16 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @SSL_CTX_sess_connect_good(i32* %18)
  %20 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @SSL_CTX_sess_accept(i32* %22)
  %24 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @SSL_CTX_sess_accept_renegotiate(i32* %26)
  %28 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @SSL_CTX_sess_accept_good(i32* %30)
  %32 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @SSL_CTX_sess_hits(i32* %34)
  %36 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @SSL_CTX_sess_misses(i32* %38)
  %40 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @SSL_CTX_sess_timeouts(i32* %42)
  %44 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @SSL_CTX_sess_cb_hits(i32* %46)
  %48 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @SSL_CTX_sess_cache_full(i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @SSL_CTX_sess_get_cache_size(i32* %52)
  %54 = call i32 (i32*, i8*, i32, ...) @BIO_printf(i32* %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %51, i32 %53)
  ret void
}

declare dso_local i32 @BIO_printf(i32*, i8*, i32, ...) #1

declare dso_local i32 @SSL_CTX_sess_number(i32*) #1

declare dso_local i32 @SSL_CTX_sess_connect(i32*) #1

declare dso_local i32 @SSL_CTX_sess_connect_renegotiate(i32*) #1

declare dso_local i32 @SSL_CTX_sess_connect_good(i32*) #1

declare dso_local i32 @SSL_CTX_sess_accept(i32*) #1

declare dso_local i32 @SSL_CTX_sess_accept_renegotiate(i32*) #1

declare dso_local i32 @SSL_CTX_sess_accept_good(i32*) #1

declare dso_local i32 @SSL_CTX_sess_hits(i32*) #1

declare dso_local i32 @SSL_CTX_sess_misses(i32*) #1

declare dso_local i32 @SSL_CTX_sess_timeouts(i32*) #1

declare dso_local i32 @SSL_CTX_sess_cb_hits(i32*) #1

declare dso_local i32 @SSL_CTX_sess_cache_full(i32*) #1

declare dso_local i32 @SSL_CTX_sess_get_cache_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
