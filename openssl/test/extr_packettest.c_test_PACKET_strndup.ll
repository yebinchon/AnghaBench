; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_strndup.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_strndup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_strndup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_strndup() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca [10 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* null, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %7 = call i32 @memset(i8* %6, i8 signext 120, i32 10)
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %9 = call i32 @memset(i8* %8, i8 signext 121, i32 10)
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 5
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %12 = call i32 @PACKET_buf_init(i32* %4, i8* %11, i32 10)
  %13 = call i32 @TEST_true(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %0
  %16 = call i32 @PACKET_strndup(i32* %4, i8** %3)
  %17 = call i32 @TEST_true(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call i32 @TEST_size_t_eq(i32 %21, i32 10)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %27 = call i32 @TEST_strn_eq(i8* %25, i8* %26, i32 10)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %31 = call i32 @PACKET_buf_init(i32* %4, i8* %30, i32 10)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = call i32 @PACKET_strndup(i32* %4, i8** %3)
  %36 = call i32 @TEST_true(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @TEST_size_t_eq(i32 %40, i32 5)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %46 = call i32 @TEST_str_eq(i8* %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %38, %34, %29, %24, %19, %15, %0
  br label %50

49:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @OPENSSL_free(i8* %51)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i32) #1

declare dso_local i32 @PACKET_strndup(i32*, i8**) #1

declare dso_local i32 @TEST_size_t_eq(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @TEST_strn_eq(i8*, i8*, i32) #1

declare dso_local i32 @TEST_str_eq(i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
