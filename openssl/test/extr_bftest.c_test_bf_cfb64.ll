; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bftest.c_test_bf_cfb64.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bftest.c_test_bf_cfb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cbc_data = common dso_local global i32* null, align 8
@cbc_key = common dso_local global i32 0, align 4
@cbc_iv = common dso_local global i32 0, align 4
@BF_ENCRYPT = common dso_local global i32 0, align 4
@cfb64_ok = common dso_local global i32* null, align 8
@BF_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bf_cfb64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bf_cfb64() #0 {
  %1 = alloca [40 x i8], align 16
  %2 = alloca [40 x i8], align 16
  %3 = alloca [8 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 1, i32* %5, align 4
  %8 = load i32*, i32** @cbc_data, align 8
  %9 = call i32 @strlen(i32* %8)
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @cbc_key, align 4
  %12 = call i32 @BF_set_key(i32* %6, i32 16, i32 %11)
  %13 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %14 = call i32 @memset(i8* %13, i32 0, i32 40)
  %15 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i32 0, i32 40)
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %18 = load i32, i32* @cbc_iv, align 4
  %19 = call i32 @memcpy(i8* %17, i32 %18, i32 8)
  store i32 0, i32* %4, align 4
  %20 = load i32*, i32** @cbc_data, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %24 = load i32, i32* @BF_ENCRYPT, align 4
  %25 = call i32 @BF_cfb64_encrypt(i8* %21, i8* %22, i32 13, i32* %6, i8* %23, i32* %4, i32 %24)
  %26 = load i32*, i32** @cbc_data, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 13
  %28 = bitcast i32* %27 to i8*
  %29 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 13
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 13
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %33 = load i32, i32* @BF_ENCRYPT, align 4
  %34 = call i32 @BF_cfb64_encrypt(i8* %28, i8* %29, i32 %31, i32* %6, i8* %32, i32* %4, i32 %33)
  %35 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** @cfb64_ok, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @TEST_mem_eq(i8* %35, i32 %36, i32* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %0
  store i32 0, i32* %4, align 4
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %44 = load i32, i32* @cbc_iv, align 4
  %45 = call i32 @memcpy(i8* %43, i32 %44, i32 8)
  %46 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %47 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %49 = load i32, i32* @BF_DECRYPT, align 4
  %50 = call i32 @BF_cfb64_encrypt(i8* %46, i8* %47, i32 17, i32* %6, i8* %48, i32* %4, i32 %49)
  %51 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 17
  %52 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 17
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, 17
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %56 = load i32, i32* @BF_DECRYPT, align 4
  %57 = call i32 @BF_cfb64_encrypt(i8* %51, i8* %52, i32 %54, i32* %6, i8* %55, i32* %4, i32 %56)
  %58 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** @cbc_data, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @TEST_mem_eq(i8* %58, i32 %59, i32* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @BF_set_key(i32*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @BF_cfb64_encrypt(i8*, i8*, i32, i32*, i8*, i32*, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
