; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rc4test.c_test_rc4_multi_call.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rc4test.c_test_rc4_multi_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keys = common dso_local global i32** null, align 8
@data = common dso_local global i32** null, align 8
@data_len = common dso_local global i32* null, align 8
@output = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_rc4_multi_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rc4_multi_call(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [512 x i8], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32**, i32*** @keys, align 8
  %6 = getelementptr inbounds i32*, i32** %5, i64 3
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32**, i32*** @keys, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 3
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = call i32 @RC4_set_key(i32* %4, i32 %9, i32* %13)
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i32 0, i32 512)
  %17 = load i32, i32* %2, align 4
  %18 = load i32**, i32*** @data, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 3
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %23 = call i32 @RC4(i32* %4, i32 %17, i32* %21, i8* %22)
  %24 = load i32*, i32** @data_len, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %2, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32**, i32*** @data, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 %36
  %38 = call i32 @RC4(i32* %4, i32 %28, i32* %34, i8* %37)
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %40 = load i32*, i32** @data_len, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32*, i32** @output, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** @data_len, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @TEST_mem_eq(i8* %39, i32 %43, i32 %46, i32 %50)
  ret i32 %51
}

declare dso_local i32 @RC4_set_key(i32*, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @RC4(i32*, i32, i32*, i8*) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
