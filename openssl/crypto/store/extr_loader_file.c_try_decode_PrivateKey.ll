; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_try_decode_PrivateKey.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_try_decode_PrivateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@PEM_STRING_PKCS8INF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"PRIVATE KEY\00", align 1
@ASN1_PKEY_ALIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i64, i8**, i32*, i32*, i8*)* @try_decode_PrivateKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @try_decode_PrivateKey(i8* %0, i8* %1, i8* %2, i64 %3, i8** %4, i32* %5, i32* %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8** %4, i8*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %20, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %63

28:                                               ; preds = %8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* @PEM_STRING_PKCS8INF, align 4
  %31 = call i64 @strcmp(i8* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i64, i64* %13, align 8
  %35 = call i32* @d2i_PKCS8_PRIV_KEY_INFO(i32* null, i8** %12, i64 %34)
  store i32* %35, i32** %21, align 8
  %36 = load i32*, i32** %15, align 8
  store i32 1, i32* %36, align 4
  %37 = load i32*, i32** %21, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32*, i32** %21, align 8
  %41 = call i32* @EVP_PKCS82PKEY(i32* %40)
  store i32* %41, i32** %19, align 8
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32*, i32** %21, align 8
  %44 = call i32 @PKCS8_PRIV_KEY_INFO_free(i32* %43)
  br label %62

45:                                               ; preds = %28
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @pem_check_suffix(i8* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %22, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %22, align 4
  %52 = call %struct.TYPE_4__* @EVP_PKEY_asn1_find_str(i32* null, i8* %50, i32 %51)
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %20, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i32*, i32** %15, align 8
  store i32 1, i32* %55, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %13, align 8
  %60 = call i32* @d2i_PrivateKey(i32 %58, i32* null, i8** %12, i64 %59)
  store i32* %60, i32** %19, align 8
  br label %61

61:                                               ; preds = %54, %49, %45
  br label %62

62:                                               ; preds = %61, %42
  br label %111

63:                                               ; preds = %8
  store i32 0, i32* %23, align 4
  br label %64

64:                                               ; preds = %100, %63
  %65 = load i32, i32* %23, align 4
  %66 = call i32 (...) @EVP_PKEY_asn1_get_count()
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %103

68:                                               ; preds = %64
  store i32* null, i32** %24, align 8
  %69 = load i8*, i8** %12, align 8
  store i8* %69, i8** %25, align 8
  %70 = load i32, i32* %23, align 4
  %71 = call %struct.TYPE_4__* @EVP_PKEY_asn1_get0(i32 %70)
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %20, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ASN1_PKEY_ALIAS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %100

79:                                               ; preds = %68
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %13, align 8
  %84 = call i32* @d2i_PrivateKey(i32 %82, i32* null, i8** %25, i64 %83)
  store i32* %84, i32** %24, align 8
  %85 = load i32*, i32** %24, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %79
  %88 = load i32*, i32** %19, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32*, i32** %24, align 8
  %92 = call i32 @EVP_PKEY_free(i32* %91)
  br label %95

93:                                               ; preds = %87
  %94 = load i32*, i32** %24, align 8
  store i32* %94, i32** %19, align 8
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i32*, i32** %15, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %95, %79
  br label %100

100:                                              ; preds = %99, %78
  %101 = load i32, i32* %23, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %23, align 4
  br label %64

103:                                              ; preds = %64
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32*, i32** %19, align 8
  %109 = call i32 @EVP_PKEY_free(i32* %108)
  store i32* null, i32** %19, align 8
  br label %110

110:                                              ; preds = %107, %103
  br label %111

111:                                              ; preds = %110, %62
  %112 = load i32*, i32** %19, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32* null, i32** %9, align 8
  br label %125

115:                                              ; preds = %111
  %116 = load i32*, i32** %19, align 8
  %117 = call i32* @OSSL_STORE_INFO_new_PKEY(i32* %116)
  store i32* %117, i32** %18, align 8
  %118 = load i32*, i32** %18, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32*, i32** %19, align 8
  %122 = call i32 @EVP_PKEY_free(i32* %121)
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32*, i32** %18, align 8
  store i32* %124, i32** %9, align 8
  br label %125

125:                                              ; preds = %123, %114
  %126 = load i32*, i32** %9, align 8
  ret i32* %126
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @d2i_PKCS8_PRIV_KEY_INFO(i32*, i8**, i64) #1

declare dso_local i32* @EVP_PKCS82PKEY(i32*) #1

declare dso_local i32 @PKCS8_PRIV_KEY_INFO_free(i32*) #1

declare dso_local i32 @pem_check_suffix(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @EVP_PKEY_asn1_find_str(i32*, i8*, i32) #1

declare dso_local i32* @d2i_PrivateKey(i32, i32*, i8**, i64) #1

declare dso_local i32 @EVP_PKEY_asn1_get_count(...) #1

declare dso_local %struct.TYPE_4__* @EVP_PKEY_asn1_get0(i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32* @OSSL_STORE_INFO_new_PKEY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
