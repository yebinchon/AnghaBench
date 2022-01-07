; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_copy_all.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_copy_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUF_LEN = common dso_local global i32 0, align 4
@smbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_copy_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_copy_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @BUF_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i32, i32* @smbuf, align 4
  %12 = load i32, i32* @BUF_LEN, align 4
  %13 = call i32 @PACKET_buf_init(i32* %4, i32 %11, i32 %12)
  %14 = call i32 @TEST_true(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %0
  %17 = load i32, i32* @BUF_LEN, align 4
  %18 = call i32 @PACKET_copy_all(i32* %4, i8* %10, i32 %17, i64* %5)
  %19 = call i32 @TEST_true(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @BUF_LEN, align 4
  %24 = call i32 @TEST_size_t_eq(i64 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load i32, i32* @smbuf, align 4
  %28 = load i32, i32* @BUF_LEN, align 4
  %29 = load i32, i32* @BUF_LEN, align 4
  %30 = call i32 @TEST_mem_eq(i32 %27, i32 %28, i8* %10, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = call i64 @PACKET_remaining(i32* %4)
  %34 = load i32, i32* @BUF_LEN, align 4
  %35 = call i32 @TEST_size_t_eq(i64 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @BUF_LEN, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @PACKET_copy_all(i32* %4, i8* %10, i32 %39, i64* %5)
  %41 = call i32 @TEST_false(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37, %32, %26, %21, %16, %0
  store i32 0, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %45

44:                                               ; preds = %37
  store i32 1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @PACKET_buf_init(i32*, i32, i32) #2

declare dso_local i32 @PACKET_copy_all(i32*, i8*, i32, i64*) #2

declare dso_local i32 @TEST_size_t_eq(i64, i32) #2

declare dso_local i32 @TEST_mem_eq(i32, i32, i8*, i32) #2

declare dso_local i64 @PACKET_remaining(i32*) #2

declare dso_local i32 @TEST_false(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
