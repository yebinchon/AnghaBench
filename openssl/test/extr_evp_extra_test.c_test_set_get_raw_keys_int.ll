; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_test_set_get_raw_keys_int.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_test_set_get_raw_keys_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }

@keys = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @test_set_get_raw_keys_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_set_get_raw_keys_int(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [80 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %10, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %131

20:                                               ; preds = %2
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %22 = call i32 @memset(i8* %21, i32 0, i32 80)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @strlen(i32* %31)
  store i64 %32, i64* %9, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to i8*
  store i8* %39, i8** %8, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32* @EVP_PKEY_new_raw_public_key(i32 %45, i32* null, i8* %46, i64 %47)
  store i32* %48, i32** %11, align 8
  br label %73

49:                                               ; preds = %20
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @strlen(i32* %55)
  store i64 %56, i64* %9, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to i8*
  store i8* %63, i8** %8, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32* @EVP_PKEY_new_raw_private_key(i32 %69, i32* null, i8* %70, i64 %71)
  store i32* %72, i32** %11, align 8
  br label %73

73:                                               ; preds = %49, %25
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @TEST_ptr(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %125

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @EVP_PKEY_get_raw_private_key(i32* %81, i8* null, i64* %10)
  %83 = call i32 @TEST_true(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %125

85:                                               ; preds = %80, %77
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @EVP_PKEY_get_raw_public_key(i32* %89, i8* null, i64* %10)
  %91 = call i32 @TEST_true(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %125

93:                                               ; preds = %88, %85
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %9, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @TEST_true(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %93
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %106 = call i32 @EVP_PKEY_get_raw_private_key(i32* %104, i8* %105, i64* %10)
  %107 = call i32 @TEST_true(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %103, %100
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %115 = call i32 @EVP_PKEY_get_raw_public_key(i32* %113, i8* %114, i64* %10)
  %116 = call i32 @TEST_true(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %112, %109
  %119 = load i8*, i8** %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @TEST_mem_eq(i8* %119, i64 %120, i8* %121, i64 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %118, %112, %103, %93, %88, %80, %73
  br label %127

126:                                              ; preds = %118
  store i32 1, i32* %6, align 4
  br label %127

127:                                              ; preds = %126, %125
  %128 = load i32*, i32** %11, align 8
  %129 = call i32 @EVP_PKEY_free(i32* %128)
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %127, %19
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32* @EVP_PKEY_new_raw_public_key(i32, i32*, i8*, i64) #1

declare dso_local i32* @EVP_PKEY_new_raw_private_key(i32, i32*, i8*, i64) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @EVP_PKEY_get_raw_private_key(i32*, i8*, i64*) #1

declare dso_local i32 @EVP_PKEY_get_raw_public_key(i32*, i8*, i64*) #1

declare dso_local i32 @TEST_mem_eq(i8*, i64, i8*, i64) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
