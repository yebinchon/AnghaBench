; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_igetest.c_test_ige_vectors.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_igetest.c_test_ige_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ige_test = type { i32, i64, i8*, i8*, i8*, i32 }

@ige_test_vectors = common dso_local global %struct.ige_test* null, align 8
@MAX_VECTOR_SIZE = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@AES_ENCRYPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"IGE test vector %d failed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"IGE test vector %d failed (with in == out)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_ige_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ige_vectors(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ige_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load %struct.ige_test*, %struct.ige_test** @ige_test_vectors, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %11, i64 %13
  store %struct.ige_test* %14, %struct.ige_test** %4, align 8
  %15 = load i32, i32* @MAX_VECTOR_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %20 = mul nsw i32 %19, 2
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %23 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %24 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MAX_VECTOR_SIZE, align 4
  %27 = call i32 @TEST_int_le(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %142

30:                                               ; preds = %1
  %31 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %32 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AES_ENCRYPT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %38 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @AES_set_encrypt_key(i8* %39, i32 64, i32* %5)
  br label %46

41:                                               ; preds = %30
  %42 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %43 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @AES_set_decrypt_key(i8* %44, i32 64, i32* %5)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %48 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = trunc i64 %21 to i32
  %51 = call i32 @memcpy(i8* %22, i8* %49, i32 %50)
  %52 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %53 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %52, i32 0, i32 4
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %56 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %59 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @AES_ige_encrypt(i8* %54, i8* %18, i32 %57, i32* %5, i8* %22, i64 %60)
  %62 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %63 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %66 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %69 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @TEST_mem_eq(i32 %64, i32 %67, i8* %18, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %46
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @TEST_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %77 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @test_output_memory(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %78, i32 8)
  %80 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %81 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @test_output_memory(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %82, i32 8)
  %84 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %85 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %88 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @test_output_memory(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %86, i32 %89)
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %73, %46
  %92 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %93 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = trunc i64 %21 to i32
  %96 = call i32 @memcpy(i8* %22, i8* %94, i32 %95)
  %97 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %98 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %101 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @memcpy(i8* %18, i8* %99, i32 %102)
  %104 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %105 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %108 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @AES_ige_encrypt(i8* %18, i8* %18, i32 %106, i32* %5, i8* %22, i64 %109)
  %111 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %112 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %115 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %118 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @TEST_mem_eq(i32 %113, i32 %116, i8* %18, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %91
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @TEST_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  %125 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %126 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @test_output_memory(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %127, i32 8)
  %129 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %130 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @test_output_memory(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %131, i32 8)
  %133 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %134 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %133, i32 0, i32 4
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.ige_test*, %struct.ige_test** %4, align 8
  %137 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @test_output_memory(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %135, i32 %138)
  store i32 0, i32* %9, align 4
  br label %140

140:                                              ; preds = %122, %91
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %142

142:                                              ; preds = %140, %29
  %143 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TEST_int_le(i32, i32) #2

declare dso_local i32 @AES_set_encrypt_key(i8*, i32, i32*) #2

declare dso_local i32 @AES_set_decrypt_key(i8*, i32, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @AES_ige_encrypt(i8*, i8*, i32, i32*, i8*, i64) #2

declare dso_local i32 @TEST_mem_eq(i32, i32, i8*, i32) #2

declare dso_local i32 @TEST_info(i8*, i32) #2

declare dso_local i32 @test_output_memory(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
