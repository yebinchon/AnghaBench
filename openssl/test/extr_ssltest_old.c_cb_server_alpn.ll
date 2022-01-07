; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_cb_server_alpn.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_cb_server_alpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"failed to parser ALPN server protocol string: %s\0A\00", align 1
@OPENSSL_NPN_NEGOTIATED = common dso_local global i64 0, align 8
@SSL_TLSEXT_ERR_NOACK = common dso_local global i32 0, align 4
@alpn_selected = common dso_local global i8* null, align 8
@SSL_TLSEXT_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8*, i8*, i32, i8*)* @cb_server_alpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_server_alpn(i32* %0, i8** %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  store i8* %17, i8** %16, align 8
  %18 = load i8*, i8** %16, align 8
  %19 = call i8* @next_protos_parse(i64* %15, i8* %18)
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %16, align 8
  %25 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 (...) @abort() #3
  unreachable

27:                                               ; preds = %6
  %28 = load i8**, i8*** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @SSL_select_next_proto(i8** %28, i8* %29, i8* %30, i64 %31, i8* %32, i32 %33)
  %35 = load i64, i64* @OPENSSL_NPN_NEGOTIATED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @OPENSSL_free(i8* %38)
  %40 = load i32, i32* @SSL_TLSEXT_ERR_NOACK, align 4
  store i32 %40, i32* %7, align 4
  br label %56

41:                                               ; preds = %27
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i8* @OPENSSL_malloc(i8 zeroext %43)
  store i8* %44, i8** @alpn_selected, align 8
  %45 = load i8*, i8** @alpn_selected, align 8
  %46 = load i8**, i8*** %9, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @memcpy(i8* %45, i8* %47, i8 zeroext %49)
  %51 = load i8*, i8** @alpn_selected, align 8
  %52 = load i8**, i8*** %9, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @OPENSSL_free(i8* %53)
  %55 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %41, %37
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i8* @next_protos_parse(i64*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @SSL_select_next_proto(i8**, i8*, i8*, i64, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i8 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
