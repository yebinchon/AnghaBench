; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_dup.c_ASN1_item_dup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_dup.c_ASN1_item_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_F_ASN1_ITEM_DUP = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ASN1_item_dup(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %31

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @ASN1_item_i2d(i8* %14, i8** %6, i32* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @ASN1_F_ASN1_ITEM_DUP, align 4
  %21 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %22 = call i32 @ASN1err(i32 %20, i32 %21)
  store i8* null, i8** %3, align 8
  br label %31

23:                                               ; preds = %13
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @ASN1_item_d2i(i32* null, i8** %7, i64 %25, i32* %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @OPENSSL_free(i8* %28)
  %30 = load i8*, i8** %9, align 8
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %23, %19, %12
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

declare dso_local i64 @ASN1_item_i2d(i8*, i8**, i32*) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i8* @ASN1_item_d2i(i32*, i8**, i64, i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
