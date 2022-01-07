; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_cust.c_SSL_CTX_add_server_custom_ext.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_cust.c_SSL_CTX_add_server_custom_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENDPOINT_SERVER = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_2_AND_BELOW_ONLY = common dso_local global i32 0, align 4
@SSL_EXT_CLIENT_HELLO = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_2_SERVER_HELLO = common dso_local global i32 0, align 4
@SSL_EXT_IGNORE_ON_RESUMPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_CTX_add_server_custom_ext(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @ENDPOINT_SERVER, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @SSL_EXT_TLS1_2_AND_BELOW_ONLY, align 4
  %19 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SSL_EXT_TLS1_2_SERVER_HELLO, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SSL_EXT_IGNORE_ON_RESUMPTION, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i8*, i8** %14, align 8
  %30 = call i32 @add_old_custom_ext(i32* %15, i32 %16, i32 %17, i32 %24, i32 %25, i32 %26, i8* %27, i32 %28, i8* %29)
  ret i32 %30
}

declare dso_local i32 @add_old_custom_ext(i32*, i32, i32, i32, i32, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
