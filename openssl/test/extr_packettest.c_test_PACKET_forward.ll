; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_forward.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smbuf = common dso_local global i32 0, align 4
@BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_forward() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* null, i8** %2, align 8
  %4 = load i32, i32* @smbuf, align 4
  %5 = load i32, i32* @BUF_LEN, align 4
  %6 = call i32 @PACKET_buf_init(i32* %3, i32 %4, i32 %5)
  %7 = call i32 @TEST_true(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %0
  %10 = call i32 @PACKET_forward(i32* %3, i32 1)
  %11 = call i32 @TEST_true(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %9
  %14 = call i32 @PACKET_get_bytes(i32* %3, i8** %2, i32 1)
  %15 = call i32 @TEST_true(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @TEST_uchar_eq(i8 zeroext %20, i32 4)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load i32, i32* @BUF_LEN, align 4
  %25 = sub nsw i32 %24, 3
  %26 = call i32 @PACKET_forward(i32* %3, i32 %25)
  %27 = call i32 @TEST_true(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = call i32 @PACKET_get_bytes(i32* %3, i8** %2, i32 1)
  %31 = call i32 @TEST_true(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @TEST_uchar_eq(i8 zeroext %36, i32 254)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33, %29, %23, %17, %13, %9, %0
  store i32 0, i32* %1, align 4
  br label %41

40:                                               ; preds = %33
  store i32 1, i32* %1, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i32, i32) #1

declare dso_local i32 @PACKET_forward(i32*, i32) #1

declare dso_local i32 @PACKET_get_bytes(i32*, i8**, i32) #1

declare dso_local i32 @TEST_uchar_eq(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
