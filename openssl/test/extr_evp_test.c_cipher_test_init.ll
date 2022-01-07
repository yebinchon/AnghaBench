; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_cipher_test_init.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_cipher_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32*, i32* }

@NID_undef = common dso_local global i64 0, align 8
@EVP_CIPH_GCM_MODE = common dso_local global i32 0, align 4
@EVP_CIPH_OCB_MODE = common dso_local global i32 0, align 4
@EVP_CIPH_SIV_MODE = common dso_local global i32 0, align 4
@EVP_CIPH_CCM_MODE = common dso_local global i32 0, align 4
@EVP_CIPH_FLAG_AEAD_CIPHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s is fetched\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @cipher_test_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_test_init(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32* @EVP_CIPHER_fetch(i32* null, i8* %10, i32* null)
  store i32* %11, i32** %7, align 8
  store i32* %11, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32* @EVP_get_cipherbyname(i8* %14)
  store i32* %15, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @OBJ_sn2nid(i8* %18)
  %20 = load i64, i64* @NID_undef, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @OBJ_ln2nid(i8* %23)
  %25 = load i64, i64* @NID_undef, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  store i32 1, i32* %3, align 4
  br label %85

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %85

31:                                               ; preds = %13, %2
  %32 = call %struct.TYPE_6__* @OPENSSL_zalloc(i32 24)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %8, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @EVP_CIPHER_mode(i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @EVP_CIPH_GCM_MODE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @EVP_CIPH_OCB_MODE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @EVP_CIPH_SIV_MODE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @EVP_CIPH_CCM_MODE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %50, %46, %31
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %75

62:                                               ; preds = %54
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @EVP_CIPHER_flags(i32* %63)
  %65 = load i32, i32* @EVP_CIPH_FLAG_AEAD_CIPHER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 -1, i32* %70, align 4
  br label %74

71:                                               ; preds = %62
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %58
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %78, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @TEST_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %75
  store i32 1, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %30, %27
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32* @EVP_CIPHER_fetch(i32*, i8*, i32*) #1

declare dso_local i32* @EVP_get_cipherbyname(i8*) #1

declare dso_local i64 @OBJ_sn2nid(i8*) #1

declare dso_local i64 @OBJ_ln2nid(i8*) #1

declare dso_local %struct.TYPE_6__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @EVP_CIPHER_mode(i32*) #1

declare dso_local i32 @EVP_CIPHER_flags(i32*) #1

declare dso_local i32 @TEST_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
