; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rc4test.c_test_rc4_end_processing.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rc4test.c_test_rc4_end_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keys = common dso_local global i32** null, align 8
@data = common dso_local global i32** null, align 8
@output = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_rc4_end_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rc4_end_processing(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [512 x i8], align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32**, i32*** @keys, align 8
  %7 = getelementptr inbounds i32*, i32** %6, i64 3
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32**, i32*** @keys, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 3
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = call i32 @RC4_set_key(i32* %5, i32 %10, i32* %14)
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i32 0, i32 512)
  %18 = load i32, i32* %3, align 4
  %19 = load i32**, i32*** @data, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 3
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %24 = call i32 @RC4(i32* %5, i32 %18, i32* %22, i8* %23)
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %26 = load i32, i32* %3, align 4
  %27 = load i32*, i32** @output, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @TEST_mem_eq(i8* %25, i32 %26, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @TEST_uchar_eq(i8 zeroext %38, i32 0)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %33
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @RC4_set_key(i32*, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @RC4(i32*, i32, i32*, i8*) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i32, i32) #1

declare dso_local i32 @TEST_uchar_eq(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
