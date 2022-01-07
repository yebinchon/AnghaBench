; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_destest.c_test_des_cbc_cksum.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_destest.c_test_des_cbc_cksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cbc_key = common dso_local global i32 0, align 4
@cbc_data = common dso_local global i64 0, align 8
@cbc_iv = common dso_local global i32 0, align 4
@cbc_cksum_ret = common dso_local global i32 0, align 4
@cbc_cksum_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_des_cbc_cksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_des_cbc_cksum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 1
  %5 = call i32 @DES_set_key_checked(i32* @cbc_key, i32* %3)
  %6 = load i64, i64* @cbc_data, align 8
  %7 = bitcast [8 x i8]* %4 to i8**
  %8 = load i64, i64* @cbc_data, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @strlen(i8* %9)
  %11 = call i32 @DES_cbc_cksum(i64 %6, i8** %7, i32 %10, i32* %3, i32* @cbc_iv)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @cbc_cksum_ret, align 4
  %14 = call i32 @TEST_cs_eq(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %21

17:                                               ; preds = %0
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %19 = load i32, i32* @cbc_cksum_data, align 4
  %20 = call i32 @TEST_mem_eq(i8* %18, i32 8, i32 %19, i32 8)
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %17, %16
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @DES_set_key_checked(i32*, i32*) #1

declare dso_local i32 @DES_cbc_cksum(i64, i8**, i32, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @TEST_cs_eq(i32, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
