; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_lib.c_ASN1_STRING_dup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_lib.c_ASN1_STRING_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ASN1_STRING_dup(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %23

8:                                                ; preds = %1
  %9 = call i32* (...) @ASN1_STRING_new()
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32* null, i32** %2, align 8
  br label %23

13:                                               ; preds = %8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @ASN1_STRING_copy(i32* %14, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @ASN1_STRING_free(i32* %19)
  store i32* null, i32** %2, align 8
  br label %23

21:                                               ; preds = %13
  %22 = load i32*, i32** %4, align 8
  store i32* %22, i32** %2, align 8
  br label %23

23:                                               ; preds = %21, %18, %12, %7
  %24 = load i32*, i32** %2, align 8
  ret i32* %24
}

declare dso_local i32* @ASN1_STRING_new(...) #1

declare dso_local i32 @ASN1_STRING_copy(i32*, i32*) #1

declare dso_local i32 @ASN1_STRING_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
