; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_hdr.c_ossl_cmp_pkifreetext_push_str.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_hdr.c_ossl_cmp_pkifreetext_push_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_cmp_pkifreetext_push_str(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @ossl_assert(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %38

18:                                               ; preds = %12
  %19 = call i32* (...) @ASN1_UTF8STRING_new()
  store i32* %19, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %38

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @ASN1_STRING_set(i32* %23, i8* %24, i32 -1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %35

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @sk_ASN1_UTF8STRING_push(i32* %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %35

34:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %38

35:                                               ; preds = %33, %27
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @ASN1_UTF8STRING_free(i32* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %34, %21, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32* @ASN1_UTF8STRING_new(...) #1

declare dso_local i32 @ASN1_STRING_set(i32*, i8*, i32) #1

declare dso_local i32 @sk_ASN1_UTF8STRING_push(i32*, i32*) #1

declare dso_local i32 @ASN1_UTF8STRING_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
