; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_exdatatest.c_exfree2.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_exdatatest.c_exfree2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@saved_idx2 = common dso_local global i32 0, align 4
@saved_idx3 = common dso_local global i32 0, align 4
@saved_argl = common dso_local global i32 0, align 4
@saved_argp = common dso_local global i32 0, align 4
@gbl_result = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*, i32, i64, i8*)* @exfree2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exfree2(i8* %0, i8* %1, i32* %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32* @CRYPTO_get_ex_data(i32* %14, i32 %15)
  store i32* %16, i32** %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @saved_idx2, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @saved_idx3, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %6
  %25 = phi i1 [ true, %6 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @TEST_true(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* @saved_argl, align 4
  %32 = call i32 @TEST_long_eq(i64 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* @saved_argp, align 4
  %37 = call i32 @TEST_ptr_eq(i8* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @CRYPTO_set_ex_data(i32* %40, i32 %41, i32* null)
  %43 = call i32 @TEST_true(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %34, %29, %24
  store i64 0, i64* @gbl_result, align 8
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @OPENSSL_free(i32* %47)
  ret void
}

declare dso_local i32* @CRYPTO_get_ex_data(i32*, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @TEST_long_eq(i64, i32) #1

declare dso_local i32 @TEST_ptr_eq(i8*, i32) #1

declare dso_local i32 @CRYPTO_set_ex_data(i32*, i32, i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
