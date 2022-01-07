; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_ex_data.c_crypto_get_ex_new_index_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_ex_data.c_crypto_get_ex_new_index_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32*, i32*, i32*, i8* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }

@CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX_EX = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_get_ex_new_index_ex(i32* %0, i32 %1, i64 %2, i8* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 -1, i32* %16, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.TYPE_8__* @openssl_ctx_get_ex_data_global(i32* %20)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %19, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %23 = icmp eq %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %110

25:                                               ; preds = %7
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.TYPE_9__* @get_and_lock(i32* %26, i32 %27)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %18, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %30 = icmp eq %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %8, align 4
  br label %110

32:                                               ; preds = %25
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = call i32* (...) @sk_EX_CALLBACK_new_null()
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @sk_EX_CALLBACK_push(i32* %48, i32* null)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45, %37
  %52 = load i32, i32* @CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX_EX, align 4
  %53 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %54 = call i32 @CRYPTOerr(i32 %52, i32 %53)
  br label %104

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %32
  %57 = call i64 @OPENSSL_malloc(i32 40)
  %58 = inttoptr i64 %57 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %17, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %60 = icmp eq %struct.TYPE_10__* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX_EX, align 4
  %63 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %64 = call i32 @CRYPTOerr(i32 %62, i32 %63)
  br label %104

65:                                               ; preds = %56
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  store i32* %72, i32** %74, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i32* %78, i32** %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @sk_EX_CALLBACK_push(i32* %83, i32* null)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %65
  %87 = load i32, i32* @CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX_EX, align 4
  %88 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %89 = call i32 @CRYPTOerr(i32 %87, i32 %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %91 = call i32 @OPENSSL_free(%struct.TYPE_10__* %90)
  br label %104

92:                                               ; preds = %65
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @sk_EX_CALLBACK_num(i32* %95)
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %16, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %103 = call i32 @sk_EX_CALLBACK_set(i32* %100, i32 %101, %struct.TYPE_10__* %102)
  br label %104

104:                                              ; preds = %92, %86, %61, %51
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @CRYPTO_THREAD_unlock(i32 %107)
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %104, %31, %24
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_8__* @openssl_ctx_get_ex_data_global(i32*) #1

declare dso_local %struct.TYPE_9__* @get_and_lock(i32*, i32) #1

declare dso_local i32* @sk_EX_CALLBACK_new_null(...) #1

declare dso_local i32 @sk_EX_CALLBACK_push(i32*, i32*) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i64 @OPENSSL_malloc(i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_10__*) #1

declare dso_local i32 @sk_EX_CALLBACK_num(i32*) #1

declare dso_local i32 @sk_EX_CALLBACK_set(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
