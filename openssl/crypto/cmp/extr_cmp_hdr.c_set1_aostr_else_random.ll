; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_hdr.c_set1_aostr_else_random.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_hdr.c_set1_aostr_else_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMP_R_FAILURE_OBTAINING_RANDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i64)* @set1_aostr_else_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set1_aostr_else_random(i32** %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = call i8* @OPENSSL_malloc(i64 %12)
  store i8* %13, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %34

16:                                               ; preds = %11
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @RAND_bytes(i8* %17, i64 %18)
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @CMP_R_FAILURE_OBTAINING_RANDOM, align 4
  %23 = call i32 @CMPerr(i32 0, i32 %22)
  br label %34

24:                                               ; preds = %16
  %25 = load i32**, i32*** %4, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @ossl_cmp_asn1_octet_string_set1_bytes(i32** %25, i8* %26, i64 %27)
  store i32 %28, i32* %8, align 4
  br label %33

29:                                               ; preds = %3
  %30 = load i32**, i32*** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @ossl_cmp_asn1_octet_string_set1(i32** %30, i32* %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %24
  br label %34

34:                                               ; preds = %33, %21, %15
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @OPENSSL_free(i8* %35)
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i64 @RAND_bytes(i8*, i64) #1

declare dso_local i32 @CMPerr(i32, i32) #1

declare dso_local i32 @ossl_cmp_asn1_octet_string_set1_bytes(i32**, i8*, i64) #1

declare dso_local i32 @ossl_cmp_asn1_octet_string_set1(i32**, i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
