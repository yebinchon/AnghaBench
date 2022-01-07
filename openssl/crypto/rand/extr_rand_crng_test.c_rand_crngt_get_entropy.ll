; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_crng_test.c_rand_crngt_get_entropy.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_crng_test.c_rand_crngt_get_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CRNGT_BUFSIZ = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@OPENSSL_CTX_RAND_CRNGT_INDEX = common dso_local global i32 0, align 4
@rand_crng_ossl_ctx_method = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rand_crngt_get_entropy(%struct.TYPE_5__* %0, i8** %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_6__*, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load i32, i32* @CRNGT_BUFSIZ, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %14, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %30 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %22, align 8
  store i32 3, i32* %23, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @OPENSSL_CTX_RAND_CRNGT_INDEX, align 4
  %37 = call %struct.TYPE_6__* @openssl_ctx_get_data(i32 %35, i32 %36, i32* @rand_crng_ossl_ctx_method)
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %24, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %39 = icmp eq %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  store i32 1, i32* %25, align 4
  br label %112

41:                                               ; preds = %6
  %42 = load i32, i32* %10, align 4
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32* @rand_pool_new(i32 %42, i32 1, i64 %43, i64 %44)
  store i32* %45, i32** %18, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i64 0, i64* %7, align 8
  store i32 1, i32* %25, align 4
  br label %112

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %90, %48
  %50 = load i32*, i32** %18, align 8
  %51 = call i64 @rand_pool_bytes_needed(i32* %50, i32 1)
  store i64 %51, i64* %19, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %23, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %23, align 4
  %56 = icmp sgt i32 %54, 0
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %101

59:                                               ; preds = %57
  %60 = load i64, i64* %19, align 8
  %61 = icmp ugt i64 %60, %27
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %65

63:                                               ; preds = %59
  %64 = load i64, i64* %19, align 8
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i64 [ %27, %62 ], [ %64, %63 ]
  store i64 %66, i64* %21, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @crngt_get_entropy(i32 %69, i32 %72, i8* %29, i8* %32, i32* %17)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %65
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %17, align 4
  %80 = call i64 @memcmp(i32 %78, i8* %32, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load i32*, i32** %18, align 8
  %84 = load i64, i64* %21, align 8
  %85 = load i64, i64* %21, align 8
  %86 = mul i64 %85, 8
  %87 = call i32 @rand_pool_add(i32* %83, i8* %29, i64 %84, i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82, %75, %65
  br label %106

90:                                               ; preds = %82
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @memcpy(i32 %93, i8* %32, i32 %94)
  %96 = load i64, i64* %21, align 8
  %97 = load i64, i64* %22, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %22, align 8
  %99 = load i32, i32* %23, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %23, align 4
  br label %49

101:                                              ; preds = %57
  %102 = load i64, i64* %22, align 8
  store i64 %102, i64* %20, align 8
  %103 = load i32*, i32** %18, align 8
  %104 = call i8* @rand_pool_detach(i32* %103)
  %105 = load i8**, i8*** %9, align 8
  store i8* %104, i8** %105, align 8
  br label %106

106:                                              ; preds = %101, %89
  %107 = trunc i64 %27 to i32
  %108 = call i32 @OPENSSL_cleanse(i8* %29, i32 %107)
  %109 = load i32*, i32** %18, align 8
  %110 = call i32 @rand_pool_free(i32* %109)
  %111 = load i64, i64* %20, align 8
  store i64 %111, i64* %7, align 8
  store i32 1, i32* %25, align 4
  br label %112

112:                                              ; preds = %106, %47, %40
  %113 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i64, i64* %7, align 8
  ret i64 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_6__* @openssl_ctx_get_data(i32, i32, i32*) #2

declare dso_local i32* @rand_pool_new(i32, i32, i64, i64) #2

declare dso_local i64 @rand_pool_bytes_needed(i32*, i32) #2

declare dso_local i32 @crngt_get_entropy(i32, i32, i8*, i8*, i32*) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @rand_pool_add(i32*, i8*, i64, i64) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i8* @rand_pool_detach(i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32 @rand_pool_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
