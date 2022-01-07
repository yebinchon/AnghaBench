; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_enc.c_asn1_item_flags_i2d.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_enc.c_asn1_item_flags_i2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_F_ASN1_ITEM_FLAGS_I2D = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*, i32)* @asn1_item_flags_i2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_item_flags_i2d(i32* %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8**, i8*** %7, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %4
  %16 = load i8**, i8*** %7, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ASN1_item_ex_i2d(i32** %6, i8** null, i32* %20, i32 -1, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %48

27:                                               ; preds = %19
  %28 = load i32, i32* %12, align 4
  %29 = call i8* @OPENSSL_malloc(i32 %28)
  store i8* %29, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @ASN1_F_ASN1_ITEM_FLAGS_I2D, align 4
  %33 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %34 = call i32 @ASN1err(i32 %32, i32 %33)
  store i32 -1, i32* %5, align 4
  br label %48

35:                                               ; preds = %27
  %36 = load i8*, i8** %11, align 8
  store i8* %36, i8** %10, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @ASN1_item_ex_i2d(i32** %6, i8** %10, i32* %37, i32 -1, i32 %38)
  %40 = load i8*, i8** %11, align 8
  %41 = load i8**, i8*** %7, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %15, %4
  %44 = load i8**, i8*** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ASN1_item_ex_i2d(i32** %6, i8** %44, i32* %45, i32 -1, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %35, %31, %25
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @ASN1_item_ex_i2d(i32**, i8**, i32*, i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
