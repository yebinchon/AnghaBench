; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_igetest.c_test_bi_ige_vectors.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_igetest.c_test_bi_ige_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bi_ige_test = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@bi_ige_test_vectors = common dso_local global %struct.bi_ige_test* null, align 8
@MAX_VECTOR_SIZE = common dso_local global i32 0, align 4
@AES_ENCRYPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"key 1\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"key 2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_bi_ige_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bi_ige_vectors(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bi_ige_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load %struct.bi_ige_test*, %struct.bi_ige_test** @bi_ige_test_vectors, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %10, i64 %12
  store %struct.bi_ige_test* %13, %struct.bi_ige_test** %4, align 8
  %14 = load i32, i32* @MAX_VECTOR_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %19 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MAX_VECTOR_SIZE, align 4
  %22 = call i32 @TEST_int_le(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %111

25:                                               ; preds = %1
  %26 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %27 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AES_ENCRYPT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %33 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %36 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 8, %37
  %39 = call i32 @AES_set_encrypt_key(i32 %34, i32 %38, i32* %5)
  %40 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %41 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %44 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 8, %45
  %47 = call i32 @AES_set_encrypt_key(i32 %42, i32 %46, i32* %6)
  br label %65

48:                                               ; preds = %25
  %49 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %50 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %53 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 8, %54
  %56 = call i32 @AES_set_decrypt_key(i32 %51, i32 %55, i32* %5)
  %57 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %58 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %61 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 8, %62
  %64 = call i32 @AES_set_decrypt_key(i32 %59, i32 %63, i32* %6)
  br label %65

65:                                               ; preds = %48, %31
  %66 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %67 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %70 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %73 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %76 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @AES_bi_ige_encrypt(i32 %68, i8* %17, i32 %71, i32* %5, i32* %6, i32 %74, i64 %77)
  %79 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %80 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %83 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %86 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @TEST_mem_eq(i32 %81, i32 %84, i8* %17, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %65
  %91 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %92 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @test_output_memory(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %93, i32 4)
  %95 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %96 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @test_output_memory(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 4)
  %99 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %100 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @test_output_memory(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 4)
  %103 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %104 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.bi_ige_test*, %struct.bi_ige_test** %4, align 8
  %107 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @test_output_memory(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %108)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %111

110:                                              ; preds = %65
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %111

111:                                              ; preds = %110, %90, %24
  %112 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TEST_int_le(i32, i32) #2

declare dso_local i32 @AES_set_encrypt_key(i32, i32, i32*) #2

declare dso_local i32 @AES_set_decrypt_key(i32, i32, i32*) #2

declare dso_local i32 @AES_bi_ige_encrypt(i32, i8*, i32, i32*, i32*, i32, i64) #2

declare dso_local i32 @TEST_mem_eq(i32, i32, i8*, i32) #2

declare dso_local i32 @test_output_memory(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
