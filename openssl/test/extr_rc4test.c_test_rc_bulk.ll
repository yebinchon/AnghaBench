; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rc4test.c_test_rc_bulk.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rc4test.c_test_rc_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@test_rc_bulk.expected = internal global [20 x i8] c"\A4{\CC\00=\D0\BD\E1\AC_\12\1EE\BC\FB\1A\A1\F2\7F\C5", align 16
@keys = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_rc_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rc_bulk() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [513 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32**, i32*** @keys, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32**, i32*** @keys, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 3
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = call i32 @RC4_set_key(i32* %1, i32 %15, i32* %19)
  %21 = getelementptr inbounds [513 x i8], [513 x i8]* %2, i64 0, i64 0
  %22 = call i32 @memset(i8* %21, i32 0, i32 513)
  %23 = call i32 @SHA1_Init(i32* %3)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %33, %0
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 2571
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = getelementptr inbounds [513 x i8], [513 x i8]* %2, i64 0, i64 0
  %29 = getelementptr inbounds [513 x i8], [513 x i8]* %2, i64 0, i64 0
  %30 = call i32 @RC4(i32* %1, i32 513, i8* %28, i8* %29)
  %31 = getelementptr inbounds [513 x i8], [513 x i8]* %2, i64 0, i64 0
  %32 = call i32 @SHA1_Update(i32* %3, i8* %31, i32 513)
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %24

36:                                               ; preds = %24
  %37 = call i32 @SHA1_Final(i8* %10, i32* %3)
  %38 = trunc i64 %8 to i32
  %39 = call i32 @TEST_mem_eq(i8* %10, i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @test_rc_bulk.expected, i64 0, i64 0), i32 20)
  %40 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %40)
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RC4_set_key(i32*, i32, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @SHA1_Init(i32*) #2

declare dso_local i32 @RC4(i32*, i32, i8*, i8*) #2

declare dso_local i32 @SHA1_Update(i32*, i8*, i32) #2

declare dso_local i32 @SHA1_Final(i8*, i32*) #2

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
