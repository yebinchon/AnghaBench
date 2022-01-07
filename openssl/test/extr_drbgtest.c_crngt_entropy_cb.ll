; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_crngt_entropy_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_crngt_entropy_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crngt_idx = common dso_local global i32 0, align 4
@crngt_num_cases = common dso_local global i32 0, align 4
@crngt_case = common dso_local global i64 0, align 8
@CRNGT_BUFSIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*, i32*)* @crngt_entropy_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crngt_entropy_cb(i32* %0, i32* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* @crngt_idx, align 4
  %15 = load i32, i32* @crngt_num_cases, align 4
  %16 = call i32 @TEST_int_lt(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %56

19:                                               ; preds = %5
  %20 = load i32, i32* @crngt_idx, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @crngt_idx, align 4
  %22 = sext i32 %20 to i64
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %13, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i64, i64* @crngt_case, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* %13, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %13, align 8
  br label %32

32:                                               ; preds = %29, %25, %19
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @CRNGT_BUFSIZ, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i64, i64* %12, align 8
  %39 = add i64 %38, 65
  %40 = load i64, i64* %13, align 8
  %41 = add i64 %39, %40
  %42 = trunc i64 %41 to i8
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 %42, i8* %45, align 1
  br label %46

46:                                               ; preds = %37
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %12, align 8
  br label %33

49:                                               ; preds = %33
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* @CRNGT_BUFSIZ, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 (...) @EVP_sha256()
  %55 = call i32 @EVP_Digest(i8* %50, i64 %51, i8* %52, i32* %53, i32 %54, i32* null)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %49, %18
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @TEST_int_lt(i32, i32) #1

declare dso_local i32 @EVP_Digest(i8*, i64, i8*, i32*, i32, i32*) #1

declare dso_local i32 @EVP_sha256(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
