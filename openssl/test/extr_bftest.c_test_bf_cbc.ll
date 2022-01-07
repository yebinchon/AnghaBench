; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bftest.c_test_bf_cbc.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bftest.c_test_bf_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cbc_data = common dso_local global i64 0, align 8
@cbc_key = common dso_local global i32 0, align 4
@cbc_iv = common dso_local global i32 0, align 4
@BF_ENCRYPT = common dso_local global i32 0, align 4
@cbc_ok = common dso_local global i64 0, align 8
@BF_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bf_cbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bf_cbc() #0 {
  %1 = alloca [40 x i8], align 16
  %2 = alloca [40 x i8], align 16
  %3 = alloca [8 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 1, i32* %4, align 4
  %7 = load i64, i64* @cbc_data, align 8
  %8 = call i32 @strlen(i64 %7)
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @cbc_key, align 4
  %11 = call i32 @BF_set_key(i32* %5, i32 16, i32 %10)
  %12 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i32 0, i32 40)
  %14 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i32 0, i32 40)
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %17 = load i32, i32* @cbc_iv, align 4
  %18 = call i32 @memcpy(i8* %16, i32 %17, i32 8)
  %19 = load i64, i64* @cbc_data, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %24 = load i32, i32* @BF_ENCRYPT, align 4
  %25 = call i32 @BF_cbc_encrypt(i8* %20, i8* %21, i32 %22, i32* %5, i8* %23, i32 %24)
  %26 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %27 = load i64, i64* @cbc_ok, align 8
  %28 = call i32 @TEST_mem_eq(i8* %26, i32 32, i64 %27, i32 32)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %0
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %33 = load i32, i32* @cbc_iv, align 4
  %34 = call i32 @memcpy(i8* %32, i32 %33, i32 8)
  %35 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %36 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %39 = load i32, i32* @BF_DECRYPT, align 4
  %40 = call i32 @BF_cbc_encrypt(i8* %35, i8* %36, i32 %37, i32* %5, i8* %38, i32 %39)
  %41 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %42 = load i32, i32* %6, align 4
  %43 = load i64, i64* @cbc_data, align 8
  %44 = load i64, i64* @cbc_data, align 8
  %45 = call i32 @strlen(i64 %44)
  %46 = add nsw i32 %45, 1
  %47 = call i32 @TEST_mem_eq(i8* %41, i32 %42, i64 %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @BF_set_key(i32*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @BF_cbc_encrypt(i8*, i8*, i32, i32*, i8*, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
