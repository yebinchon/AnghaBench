; ModuleID = '/home/carl/AnghaBench/openssl/fuzz/extr_bndiv.c_FuzzerInitialize.c'
source_filename = "/home/carl/AnghaBench/openssl/fuzz/extr_bndiv.c_FuzzerInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b1 = common dso_local global i8* null, align 8
@b2 = common dso_local global i8* null, align 8
@b3 = common dso_local global i8* null, align 8
@b4 = common dso_local global i8* null, align 8
@b5 = common dso_local global i8* null, align 8
@ctx = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CRYPTO_STRINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FuzzerInitialize(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %5 = call i8* (...) @BN_new()
  store i8* %5, i8** @b1, align 8
  %6 = call i8* (...) @BN_new()
  store i8* %6, i8** @b2, align 8
  %7 = call i8* (...) @BN_new()
  store i8* %7, i8** @b3, align 8
  %8 = call i8* (...) @BN_new()
  store i8* %8, i8** @b4, align 8
  %9 = call i8* (...) @BN_new()
  store i8* %9, i8** @b5, align 8
  %10 = call i32 (...) @BN_CTX_new()
  store i32 %10, i32* @ctx, align 4
  %11 = load i32, i32* @OPENSSL_INIT_LOAD_CRYPTO_STRINGS, align 4
  %12 = call i32 @OPENSSL_init_crypto(i32 %11, i32* null)
  %13 = call i32 (...) @ERR_clear_error()
  ret i32 1
}

declare dso_local i8* @BN_new(...) #1

declare dso_local i32 @BN_CTX_new(...) #1

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
