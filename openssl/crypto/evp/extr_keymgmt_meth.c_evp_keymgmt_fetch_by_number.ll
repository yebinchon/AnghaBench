; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_keymgmt_meth.c_evp_keymgmt_fetch_by_number.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_keymgmt_meth.c_evp_keymgmt_fetch_by_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_OP_KEYMGMT = common dso_local global i32 0, align 4
@keymgmt_from_dispatch = common dso_local global i32 0, align 4
@EVP_KEYMGMT_up_ref = common dso_local global i64 0, align 8
@EVP_KEYMGMT_free = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @evp_keymgmt_fetch_by_number(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @OSSL_OP_KEYMGMT, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* @keymgmt_from_dispatch, align 4
  %12 = load i64, i64* @EVP_KEYMGMT_up_ref, align 8
  %13 = inttoptr i64 %12 to i32 (i8*)*
  %14 = load i64, i64* @EVP_KEYMGMT_free, align 8
  %15 = inttoptr i64 %14 to void (i8*)*
  %16 = call i32* @evp_generic_fetch_by_number(i32* %7, i32 %8, i32 %9, i8* %10, i32 %11, i32 (i8*)* %13, void (i8*)* %15)
  ret i32* %16
}

declare dso_local i32* @evp_generic_fetch_by_number(i32*, i32, i32, i8*, i32, i32 (i8*)*, void (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
