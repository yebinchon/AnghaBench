; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_memdup.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_memdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smbuf = common dso_local global i32 0, align 4
@BUF_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_memdup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_memdup() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @smbuf, align 4
  %6 = load i64, i64* @BUF_LEN, align 8
  %7 = call i32 @PACKET_buf_init(i32* %3, i32 %5, i64 %6)
  %8 = call i32 @TEST_true(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %0
  %11 = call i32 @PACKET_memdup(i32* %3, i8** %1, i64* %2)
  %12 = call i32 @TEST_true(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @BUF_LEN, align 8
  %17 = call i32 @TEST_size_t_eq(i64 %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %14
  %20 = load i8*, i8** %1, align 8
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @PACKET_data(i32* %3)
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @TEST_mem_eq(i8* %20, i64 %21, i32 %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %19
  %27 = call i32 @PACKET_forward(i32* %3, i32 10)
  %28 = call i32 @TEST_true(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = call i32 @PACKET_memdup(i32* %3, i8** %1, i64* %2)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @BUF_LEN, align 8
  %37 = sub nsw i64 %36, 10
  %38 = call i32 @TEST_size_t_eq(i64 %35, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i8*, i8** %1, align 8
  %42 = load i64, i64* %2, align 8
  %43 = call i32 @PACKET_data(i32* %3)
  %44 = load i64, i64* %2, align 8
  %45 = call i32 @TEST_mem_eq(i8* %41, i64 %42, i32 %43, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40, %34, %30, %26, %19, %14, %10, %0
  br label %49

48:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i8*, i8** %1, align 8
  %51 = call i32 @OPENSSL_free(i8* %50)
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i32, i64) #1

declare dso_local i32 @PACKET_memdup(i32*, i8**, i64*) #1

declare dso_local i32 @TEST_size_t_eq(i64, i64) #1

declare dso_local i32 @TEST_mem_eq(i8*, i64, i32, i64) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i32 @PACKET_forward(i32*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
