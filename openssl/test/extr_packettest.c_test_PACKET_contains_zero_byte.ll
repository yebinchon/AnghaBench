; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_contains_zero_byte.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_contains_zero_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_contains_zero_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_contains_zero_byte() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca [10 x i8], align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %6 = call i32 @memset(i8* %5, i8 signext 120, i32 10)
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %8 = call i32 @memset(i8* %7, i8 signext 121, i32 10)
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 5
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %11 = call i32 @PACKET_buf_init(i32* %4, i8* %10, i32 10)
  %12 = call i32 @TEST_true(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %0
  %15 = call i32 @PACKET_contains_zero_byte(i32* %4)
  %16 = call i32 @TEST_false(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %20 = call i32 @PACKET_buf_init(i32* %4, i8* %19, i32 10)
  %21 = call i32 @TEST_true(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = call i32 @PACKET_contains_zero_byte(i32* %4)
  %25 = call i32 @TEST_true(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %18, %14, %0
  store i32 0, i32* %1, align 4
  br label %29

28:                                               ; preds = %23
  store i32 1, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i32) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @PACKET_contains_zero_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
