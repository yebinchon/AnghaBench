; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_decr.c_PKCS12_item_i2d_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_decr.c_PKCS12_item_i2d_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@PKCS12_F_PKCS12_ITEM_I2D_ENCRYPT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@PKCS12_R_ENCODE_ERROR = common dso_local global i32 0, align 4
@PKCS12_R_ENCRYPT_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @PKCS12_item_i2d_encrypt(i32* %0, i32* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  store i8* null, i8** %15, align 8
  %17 = call %struct.TYPE_5__* (...) @ASN1_OCTET_STRING_new()
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %14, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load i32, i32* @PKCS12_F_PKCS12_ITEM_I2D_ENCRYPT, align 4
  %21 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %22 = call i32 @PKCS12err(i32 %20, i32 %21)
  br label %62

23:                                               ; preds = %6
  %24 = load i8*, i8** %12, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @ASN1_item_i2d(i8* %24, i8** %15, i32* %25)
  store i32 %26, i32* %16, align 4
  %27 = load i8*, i8** %15, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @PKCS12_F_PKCS12_ITEM_I2D_ENCRYPT, align 4
  %31 = load i32, i32* @PKCS12_R_ENCODE_ERROR, align 4
  %32 = call i32 @PKCS12err(i32 %30, i32 %31)
  br label %62

33:                                               ; preds = %23
  %34 = load i32*, i32** %8, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i8*, i8** %15, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @PKCS12_pbe_crypt(i32* %34, i8* %35, i32 %36, i8* %37, i32 %38, i32* %40, i32* %42, i32 1)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* @PKCS12_F_PKCS12_ITEM_I2D_ENCRYPT, align 4
  %47 = load i32, i32* @PKCS12_R_ENCRYPT_ERROR, align 4
  %48 = call i32 @PKCS12err(i32 %46, i32 %47)
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @OPENSSL_free(i8* %49)
  br label %62

51:                                               ; preds = %33
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** %15, align 8
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @OPENSSL_cleanse(i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i8*, i8** %15, align 8
  %60 = call i32 @OPENSSL_free(i8* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %7, align 8
  br label %65

62:                                               ; preds = %45, %29, %19
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %64 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_5__* %63)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %66
}

declare dso_local %struct.TYPE_5__* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32 @PKCS12err(i32, i32) #1

declare dso_local i32 @ASN1_item_i2d(i8*, i8**, i32*) #1

declare dso_local i32 @PKCS12_pbe_crypt(i32*, i8*, i32, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
