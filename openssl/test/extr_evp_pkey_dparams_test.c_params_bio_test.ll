; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_pkey_dparams_test.c_params_bio_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_pkey_dparams_test.c_params_bio_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@pkey_params = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @params_bio_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @params_bio_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pkey_params, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32* @EVP_PKEY_CTX_new_id(i32 %18, i32* null)
  store i32* %19, i32** %7, align 8
  %20 = call i64 @TEST_ptr(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pkey_params, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pkey_params, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32* @BIO_new_mem_buf(i32 %28, i32 %35)
  store i32* %36, i32** %5, align 8
  %37 = call i64 @TEST_ptr(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %22
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32* @d2i_KeyParams_bio(i32 %40, i32** %8, i32* %41)
  %43 = call i64 @TEST_ptr(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %39
  %46 = call i32 (...) @BIO_s_mem()
  %47 = call i32* @BIO_new(i32 %46)
  store i32* %47, i32** %6, align 8
  %48 = call i64 @TEST_ptr(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %45
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @i2d_KeyParams_bio(i32* %51, i32* %52)
  %54 = call i64 @TEST_int_gt(i32 %53, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @BIO_get_mem_data(i32* %57, i8** %10)
  store i32 %58, i32* %4, align 4
  %59 = call i64 @TEST_int_gt(i32 %58, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pkey_params, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pkey_params, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i64 @TEST_mem_eq(i32 %67, i32 %74, i8* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %61, %56, %50, %45, %39, %22, %1
  %80 = phi i1 [ false, %56 ], [ false, %50 ], [ false, %45 ], [ false, %39 ], [ false, %22 ], [ false, %1 ], [ %78, %61 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %3, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @BIO_free(i32* %82)
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @BIO_free(i32* %84)
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @EVP_PKEY_free(i32* %86)
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @EVP_PKEY_free(i32* %88)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @EVP_PKEY_CTX_free(i32* %90)
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i32* @BIO_new_mem_buf(i32, i32) #1

declare dso_local i32* @d2i_KeyParams_bio(i32, i32**, i32*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i64 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @i2d_KeyParams_bio(i32*, i32*) #1

declare dso_local i32 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i64 @TEST_mem_eq(i32, i32, i8*, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
