; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn_mime.c_i2d_ASN1_bio_stream.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn_mime.c_i2d_ASN1_bio_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMIME_STREAM = common dso_local global i32 0, align 4
@ASN1_F_I2D_ASN1_BIO_STREAM = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2d_ASN1_bio_stream(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @SMIME_STREAM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i32* @BIO_new_NDEF(i32* %19, i32* %20, i32* %21)
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ASN1_F_I2D_ASN1_BIO_STREAM, align 4
  %27 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %28 = call i32 @ASN1err(i32 %26, i32 %27)
  store i32 0, i32* %6, align 4
  br label %53

29:                                               ; preds = %18
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @SMIME_crlf_copy(i32* %30, i32* %31, i32 %32)
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @BIO_flush(i32* %34)
  br label %36

36:                                               ; preds = %42, %29
  %37 = load i32*, i32** %12, align 8
  %38 = call i32* @BIO_pop(i32* %37)
  store i32* %38, i32** %13, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @BIO_free(i32* %39)
  %41 = load i32*, i32** %13, align 8
  store i32* %41, i32** %12, align 8
  br label %42

42:                                               ; preds = %36
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %43, %44
  br i1 %45, label %36, label %46

46:                                               ; preds = %42
  br label %52

47:                                               ; preds = %5
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @ASN1_item_i2d_bio(i32* %48, i32* %49, i32* %50)
  br label %52

52:                                               ; preds = %47, %46
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32* @BIO_new_NDEF(i32*, i32*, i32*) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @SMIME_crlf_copy(i32*, i32*, i32) #1

declare dso_local i32 @BIO_flush(i32*) #1

declare dso_local i32* @BIO_pop(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @ASN1_item_i2d_bio(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
