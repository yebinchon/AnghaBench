; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_util.c_ossl_cmp_asn1_octet_string_set1_bytes.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_util.c_ossl_cmp_asn1_octet_string_set1_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMP_R_NULL_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_cmp_asn1_octet_string_set1_bytes(i32** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %9 = load i32**, i32*** %5, align 8
  %10 = icmp eq i32** %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @CMP_R_NULL_ARGUMENT, align 4
  %13 = call i32 @CMPerr(i32 0, i32 %12)
  store i32 0, i32* %4, align 4
  br label %36

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = call i32* (...) @ASN1_OCTET_STRING_new()
  store i32* %18, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ASN1_OCTET_STRING_set(i32* %21, i8* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20, %17
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @ASN1_OCTET_STRING_free(i32* %27)
  store i32 0, i32* %4, align 4
  br label %36

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32**, i32*** %5, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @ASN1_OCTET_STRING_free(i32* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = load i32**, i32*** %5, align 8
  store i32* %34, i32** %35, align 8
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %30, %26, %11
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @CMPerr(i32, i32) #1

declare dso_local i32* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32 @ASN1_OCTET_STRING_set(i32*, i8*, i32) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
