; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bftest.c_test_bf_ofb64.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bftest.c_test_bf_ofb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cbc_data = common dso_local global i32* null, align 8
@cbc_key = common dso_local global i32 0, align 4
@cbc_iv = common dso_local global i32 0, align 4
@ofb64_ok = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bf_ofb64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bf_ofb64() #0 {
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
  %24 = call i32 @BF_ofb64_encrypt(i8* %21, i8* %22, i32 13, i32* %6, i8* %23, i32* %4)
  %25 = load i32*, i32** @cbc_data, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 13
  %27 = bitcast i32* %26 to i8*
  %28 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 13
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 13
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %32 = call i32 @BF_ofb64_encrypt(i8* %27, i8* %28, i32 %30, i32* %6, i8* %31, i32* %4)
  %33 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** @ofb64_ok, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @TEST_mem_eq(i8* %33, i32 %34, i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %0
  store i32 0, i32* %4, align 4
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %42 = load i32, i32* @cbc_iv, align 4
  %43 = call i32 @memcpy(i8* %41, i32 %42, i32 8)
  %44 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %45 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %47 = call i32 @BF_ofb64_encrypt(i8* %44, i8* %45, i32 17, i32* %6, i8* %46, i32* %4)
  %48 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 17
  %49 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 17
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 17
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %53 = call i32 @BF_ofb64_encrypt(i8* %48, i8* %49, i32 %51, i32* %6, i8* %52, i32* %4)
  %54 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** @cbc_data, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @TEST_mem_eq(i8* %54, i32 %55, i32* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @BF_set_key(i32*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @BF_ofb64_encrypt(i8*, i8*, i32, i32*, i8*, i32*) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
