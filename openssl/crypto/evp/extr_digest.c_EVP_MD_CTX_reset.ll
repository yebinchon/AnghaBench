; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_MD_CTX_reset.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_MD_CTX_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i64, i32*, i32*, i32*, i32 }
%struct.TYPE_8__ = type { i64, {}*, i32 (i32*)* }

@EVP_MD_CTX_FLAG_KEEP_PKEY_CTX = common dso_local global i32 0, align 4
@EVP_MD_CTX_FLAG_CLEANED = common dso_local global i32 0, align 4
@EVP_MD_CTX_FLAG_REUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_MD_CTX_reset(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %5 = icmp eq %struct.TYPE_9__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %119

7:                                                ; preds = %1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = load i32, i32* @EVP_MD_CTX_FLAG_KEEP_PKEY_CTX, align 4
  %10 = call i32 @EVP_MD_CTX_test_flags(%struct.TYPE_9__* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @EVP_PKEY_CTX_free(i32 %15)
  br label %17

17:                                               ; preds = %12, %7
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @EVP_MD_free(i32* %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 5
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %53

30:                                               ; preds = %17
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32 (i32*)*, i32 (i32*)** %34, align 8
  %36 = icmp ne i32 (i32*)* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32 (i32*)*, i32 (i32*)** %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 %42(i32* %45)
  br label %47

47:                                               ; preds = %37, %30
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = load i32, i32* @EVP_MD_CTX_FLAG_CLEANED, align 4
  %52 = call i32 @EVP_MD_CTX_set_flags(%struct.TYPE_9__* %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %17
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = bitcast {}** %62 to i32 (%struct.TYPE_9__*)**
  %64 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %63, align 8
  %65 = icmp ne i32 (%struct.TYPE_9__*)* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %58
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = load i32, i32* @EVP_MD_CTX_FLAG_CLEANED, align 4
  %69 = call i32 @EVP_MD_CTX_test_flags(%struct.TYPE_9__* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = bitcast {}** %75 to i32 (%struct.TYPE_9__*)**
  %77 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = call i32 %77(%struct.TYPE_9__* %78)
  br label %80

80:                                               ; preds = %71, %66, %58, %53
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = icmp ne %struct.TYPE_8__* %83, null
  br i1 %84, label %85, label %112

85:                                               ; preds = %80
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %85
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = load i32, i32* @EVP_MD_CTX_FLAG_REUSE, align 4
  %100 = call i32 @EVP_MD_CTX_test_flags(%struct.TYPE_9__* %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @OPENSSL_clear_free(i64 %105, i64 %110)
  br label %112

112:                                              ; preds = %102, %97, %92, %85, %80
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ENGINE_finish(i32 %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = call i32 @OPENSSL_cleanse(%struct.TYPE_9__* %117, i32 56)
  store i32 1, i32* %2, align 4
  br label %119

119:                                              ; preds = %112, %6
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @EVP_MD_CTX_test_flags(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32) #1

declare dso_local i32 @EVP_MD_free(i32*) #1

declare dso_local i32 @EVP_MD_CTX_set_flags(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i64, i64) #1

declare dso_local i32 @ENGINE_finish(i32) #1

declare dso_local i32 @OPENSSL_cleanse(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
