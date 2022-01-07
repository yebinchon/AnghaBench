; ModuleID = '/home/carl/AnghaBench/openssl/fuzz/extr_asn1.c_FuzzerInitialize.c'
source_filename = "/home/carl/AnghaBench/openssl/fuzz/extr_asn1.c_FuzzerInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pctx = common dso_local global i32 0, align 4
@ASN1_PCTX_FLAGS_SHOW_ABSENT = common dso_local global i32 0, align 4
@ASN1_PCTX_FLAGS_SHOW_SEQUENCE = common dso_local global i32 0, align 4
@ASN1_PCTX_FLAGS_SHOW_SSOF = common dso_local global i32 0, align 4
@ASN1_PCTX_FLAGS_SHOW_TYPE = common dso_local global i32 0, align 4
@ASN1_PCTX_FLAGS_SHOW_FIELD_STRUCT_NAME = common dso_local global i32 0, align 4
@ASN1_STRFLGS_UTF8_CONVERT = common dso_local global i32 0, align 4
@ASN1_STRFLGS_SHOW_TYPE = common dso_local global i32 0, align 4
@ASN1_STRFLGS_DUMP_ALL = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CRYPTO_STRINGS = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_SSL_STRINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FuzzerInitialize(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %5 = call i32 (...) @ASN1_PCTX_new()
  store i32 %5, i32* @pctx, align 4
  %6 = load i32, i32* @pctx, align 4
  %7 = load i32, i32* @ASN1_PCTX_FLAGS_SHOW_ABSENT, align 4
  %8 = load i32, i32* @ASN1_PCTX_FLAGS_SHOW_SEQUENCE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @ASN1_PCTX_FLAGS_SHOW_SSOF, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ASN1_PCTX_FLAGS_SHOW_TYPE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ASN1_PCTX_FLAGS_SHOW_FIELD_STRUCT_NAME, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @ASN1_PCTX_set_flags(i32 %6, i32 %15)
  %17 = load i32, i32* @pctx, align 4
  %18 = load i32, i32* @ASN1_STRFLGS_UTF8_CONVERT, align 4
  %19 = load i32, i32* @ASN1_STRFLGS_SHOW_TYPE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ASN1_STRFLGS_DUMP_ALL, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @ASN1_PCTX_set_str_flags(i32 %17, i32 %22)
  %24 = load i32, i32* @OPENSSL_INIT_LOAD_CRYPTO_STRINGS, align 4
  %25 = call i32 @OPENSSL_init_crypto(i32 %24, i32* null)
  %26 = load i32, i32* @OPENSSL_INIT_LOAD_SSL_STRINGS, align 4
  %27 = call i32 @OPENSSL_init_ssl(i32 %26, i32* null)
  %28 = call i32 (...) @ERR_clear_error()
  %29 = call i32 @CRYPTO_free_ex_index(i32 0, i32 -1)
  %30 = call i32 (...) @FuzzerSetRand()
  ret i32 1
}

declare dso_local i32 @ASN1_PCTX_new(...) #1

declare dso_local i32 @ASN1_PCTX_set_flags(i32, i32) #1

declare dso_local i32 @ASN1_PCTX_set_str_flags(i32, i32) #1

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local i32 @OPENSSL_init_ssl(i32, i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @CRYPTO_free_ex_index(i32, i32) #1

declare dso_local i32 @FuzzerSetRand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
