; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bftest.c_test_bf_ecb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bftest.c_test_bf_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ecb_data = common dso_local global i32* null, align 8
@plain_data = common dso_local global i8** null, align 8
@BF_ENCRYPT = common dso_local global i32 0, align 4
@cipher_data = common dso_local global i8** null, align 8
@BF_BLOCK = common dso_local global i32 0, align 4
@BF_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_bf_ecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bf_ecb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8 x i8], align 1
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %6 = load i32*, i32** @ecb_data, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @BF_set_key(i32* %4, i32 8, i32 %10)
  %12 = load i8**, i8*** @plain_data, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %19 = load i32, i32* @BF_ENCRYPT, align 4
  %20 = call i32 @BF_ecb_encrypt(i8* %17, i8* %18, i32* %4, i32 %19)
  %21 = load i8**, i8*** @cipher_data, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i32, i32* @BF_BLOCK, align 4
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %29 = load i32, i32* @BF_BLOCK, align 4
  %30 = call i32 @TEST_mem_eq(i8* %26, i32 %27, i8* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %1
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %36 = load i32, i32* @BF_DECRYPT, align 4
  %37 = call i32 @BF_ecb_encrypt(i8* %34, i8* %35, i32* %4, i32 %36)
  %38 = load i8**, i8*** @plain_data, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i32, i32* @BF_BLOCK, align 4
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %46 = load i32, i32* @BF_BLOCK, align 4
  %47 = call i32 @TEST_mem_eq(i8* %43, i32 %44, i8* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @BF_set_key(i32*, i32, i32) #1

declare dso_local i32 @BF_ecb_encrypt(i8*, i8*, i32*, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
