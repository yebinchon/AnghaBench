; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_lu.c_X509_STORE_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_lu.c_X509_STORE_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32*, i32*, i32 }

@X509_F_X509_STORE_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@x509_object_cmp = common dso_local global i32 0, align 4
@CRYPTO_EX_INDEX_X509_STORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @X509_STORE_new() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = call %struct.TYPE_6__* @OPENSSL_zalloc(i32 48)
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = icmp eq %struct.TYPE_6__* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @X509_F_X509_STORE_NEW, align 4
  %8 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %9 = call i32 @X509err(i32 %7, i32 %8)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %82

10:                                               ; preds = %0
  %11 = load i32, i32* @x509_object_cmp, align 4
  %12 = call i32* @sk_X509_OBJECT_new(i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i32* %12, i32** %14, align 8
  %15 = icmp eq i32* %12, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* @X509_F_X509_STORE_NEW, align 4
  %18 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %19 = call i32 @X509err(i32 %17, i32 %18)
  br label %67

20:                                               ; preds = %10
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = call i32* (...) @sk_X509_LOOKUP_new_null()
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = icmp eq i32* %23, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @X509_F_X509_STORE_NEW, align 4
  %29 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %30 = call i32 @X509err(i32 %28, i32 %29)
  br label %67

31:                                               ; preds = %20
  %32 = call i32* (...) @X509_VERIFY_PARAM_new()
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  store i32* %32, i32** %34, align 8
  %35 = icmp eq i32* %32, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @X509_F_X509_STORE_NEW, align 4
  %38 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %39 = call i32 @X509err(i32 %37, i32 %38)
  br label %67

40:                                               ; preds = %31
  %41 = load i32, i32* @CRYPTO_EX_INDEX_X509_STORE, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 6
  %45 = call i32 @CRYPTO_new_ex_data(i32 %41, %struct.TYPE_6__* %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @X509_F_X509_STORE_NEW, align 4
  %49 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %50 = call i32 @X509err(i32 %48, i32 %49)
  br label %67

51:                                               ; preds = %40
  %52 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @X509_F_X509_STORE_NEW, align 4
  %61 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %62 = call i32 @X509err(i32 %60, i32 %61)
  br label %67

63:                                               ; preds = %51
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %1, align 8
  br label %82

67:                                               ; preds = %59, %47, %36, %27, %16
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @X509_VERIFY_PARAM_free(i32* %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @sk_X509_OBJECT_free(i32* %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @sk_X509_LOOKUP_free(i32* %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = call i32 @OPENSSL_free(%struct.TYPE_6__* %80)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %82

82:                                               ; preds = %67, %63, %6
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %83
}

declare dso_local %struct.TYPE_6__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32* @sk_X509_OBJECT_new(i32) #1

declare dso_local i32* @sk_X509_LOOKUP_new_null(...) #1

declare dso_local i32* @X509_VERIFY_PARAM_new(...) #1

declare dso_local i32 @CRYPTO_new_ex_data(i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @X509_VERIFY_PARAM_free(i32*) #1

declare dso_local i32 @sk_X509_OBJECT_free(i32*) #1

declare dso_local i32 @sk_X509_LOOKUP_free(i32*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
