; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_DigestFinal_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_DigestFinal_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 (i32, i8*, i64*, i64)*, i32 (%struct.TYPE_7__*, i8*)*, i32, i32 (%struct.TYPE_7__*)*, i32* }

@EVP_F_EVP_DIGESTFINAL_EX = common dso_local global i32 0, align 4
@EVP_R_FINAL_ERROR = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@EVP_MAX_MD_SIZE = common dso_local global i64 0, align 8
@EVP_MD_CTX_FLAG_CLEANED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_DigestFinal_ex(%struct.TYPE_7__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = call i64 @EVP_MD_size(%struct.TYPE_8__* %13)
  store i64 %14, i64* %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %3
  br label %67

27:                                               ; preds = %19
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32 (i32, i8*, i64*, i64)*, i32 (i32, i8*, i64*, i64)** %31, align 8
  %33 = icmp eq i32 (i32, i8*, i64*, i64)* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @EVP_F_EVP_DIGESTFINAL_EX, align 4
  %36 = load i32, i32* @EVP_R_FINAL_ERROR, align 4
  %37 = call i32 @EVPerr(i32 %35, i32 %36)
  store i32 0, i32* %4, align 4
  br label %116

38:                                               ; preds = %27
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32 (i32, i8*, i64*, i64)*, i32 (i32, i8*, i64*, i64)** %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 %43(i32 %46, i8* %47, i64* %9, i64 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %38
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @UINT_MAX, align 8
  %55 = icmp ule i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %9, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @EVP_F_EVP_DIGESTFINAL_EX, align 4
  %62 = load i32, i32* @EVP_R_FINAL_ERROR, align 4
  %63 = call i32 @EVPerr(i32 %61, i32 %62)
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %38
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %116

67:                                               ; preds = %26
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @EVP_MAX_MD_SIZE, align 8
  %70 = icmp ule i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @OPENSSL_assert(i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 %77(%struct.TYPE_7__* %78, i8* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %67
  %84 = load i64, i64* %10, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %67
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %91, align 8
  %93 = icmp ne i32 (%struct.TYPE_7__*)* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %87
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = call i32 %99(%struct.TYPE_7__* %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = load i32, i32* @EVP_MD_CTX_FLAG_CLEANED, align 4
  %104 = call i32 @EVP_MD_CTX_set_flags(%struct.TYPE_7__* %102, i32 %103)
  br label %105

105:                                              ; preds = %94, %87
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @OPENSSL_cleanse(i32 %108, i32 %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %105, %65, %34
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @EVP_MD_size(%struct.TYPE_8__*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @EVP_MD_CTX_set_flags(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @OPENSSL_cleanse(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
