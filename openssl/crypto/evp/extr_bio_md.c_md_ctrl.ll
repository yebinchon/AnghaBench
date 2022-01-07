; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_bio_md.c_md_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_bio_md.c_md_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i8*)* @md_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @md_ctrl(i32* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 1, i64* %15, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @BIO_get_data(i32* %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @BIO_next(i32* %20)
  store i32* %21, i32** %17, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %107 [
    i32 133, label %23
    i32 131, label %43
    i32 130, label %55
    i32 128, label %62
    i32 132, label %72
    i32 129, label %82
    i32 134, label %94
  ]

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @BIO_get_init(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32* @EVP_MD_CTX_md(i32* %29)
  %31 = call i64 @EVP_DigestInit_ex(i32* %28, i32* %30, i32* null)
  store i64 %31, i64* %15, align 8
  br label %33

32:                                               ; preds = %23
  store i64 0, i64* %15, align 8
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i64, i64* %15, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32*, i32** %17, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @BIO_ctrl(i32* %37, i32 %38, i64 %39, i8* %40)
  store i64 %41, i64* %15, align 8
  br label %42

42:                                               ; preds = %36, %33
  br label %113

43:                                               ; preds = %4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @BIO_get_init(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast i8* %48 to i32**
  store i32** %49, i32*** %13, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32* @EVP_MD_CTX_md(i32* %50)
  %52 = load i32**, i32*** %13, align 8
  store i32* %51, i32** %52, align 8
  br label %54

53:                                               ; preds = %43
  store i64 0, i64* %15, align 8
  br label %54

54:                                               ; preds = %53, %47
  br label %113

55:                                               ; preds = %4
  %56 = load i8*, i8** %9, align 8
  %57 = bitcast i8* %56 to i32**
  store i32** %57, i32*** %12, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32**, i32*** %12, align 8
  store i32* %58, i32** %59, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @BIO_set_init(i32* %60, i32 1)
  br label %113

62:                                               ; preds = %4
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @BIO_get_init(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32*, i32** %6, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @BIO_set_data(i32* %67, i8* %68)
  br label %71

70:                                               ; preds = %62
  store i64 0, i64* %15, align 8
  br label %71

71:                                               ; preds = %70, %66
  br label %113

72:                                               ; preds = %4
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @BIO_clear_retry_flags(i32* %73)
  %75 = load i32*, i32** %17, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i64, i64* %8, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i64 @BIO_ctrl(i32* %75, i32 %76, i64 %77, i8* %78)
  store i64 %79, i64* %15, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @BIO_copy_next_retry(i32* %80)
  br label %113

82:                                               ; preds = %4
  %83 = load i8*, i8** %9, align 8
  %84 = bitcast i8* %83 to i32*
  store i32* %84, i32** %14, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = call i64 @EVP_DigestInit_ex(i32* %85, i32* %86, i32* null)
  store i64 %87, i64* %15, align 8
  %88 = load i64, i64* %15, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @BIO_set_init(i32* %91, i32 1)
  br label %93

93:                                               ; preds = %90, %82
  br label %113

94:                                               ; preds = %4
  %95 = load i8*, i8** %9, align 8
  %96 = bitcast i8* %95 to i32*
  store i32* %96, i32** %16, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = call i32* @BIO_get_data(i32* %97)
  store i32* %98, i32** %11, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @EVP_MD_CTX_copy_ex(i32* %99, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %94
  store i64 0, i64* %5, align 8
  br label %115

104:                                              ; preds = %94
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @BIO_set_init(i32* %105, i32 1)
  br label %113

107:                                              ; preds = %4
  %108 = load i32*, i32** %17, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i64, i64* %8, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = call i64 @BIO_ctrl(i32* %108, i32 %109, i64 %110, i8* %111)
  store i64 %112, i64* %15, align 8
  br label %113

113:                                              ; preds = %107, %104, %93, %72, %71, %55, %54, %42
  %114 = load i64, i64* %15, align 8
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %113, %103
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local i32* @BIO_get_data(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i32 @BIO_get_init(i32*) #1

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32* @EVP_MD_CTX_md(i32*) #1

declare dso_local i64 @BIO_ctrl(i32*, i32, i64, i8*) #1

declare dso_local i32 @BIO_set_init(i32*, i32) #1

declare dso_local i32 @BIO_set_data(i32*, i8*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_copy_next_retry(i32*) #1

declare dso_local i32 @EVP_MD_CTX_copy_ex(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
