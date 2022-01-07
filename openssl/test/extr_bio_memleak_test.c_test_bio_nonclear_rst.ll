; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bio_memleak_test.c_test_bio_nonclear_rst.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bio_memleak_test.c_test_bio_nonclear_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@BIO_FLAGS_NONCLEAR_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bio_nonclear_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bio_nonclear_rst() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [16 x i8], align 16
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  %4 = call i32 (...) @BIO_s_mem()
  %5 = call i32* @BIO_new(i32 %4)
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @TEST_ptr(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %66

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @BIO_puts(i32* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @TEST_int_eq(i32 %12, i32 12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %66

16:                                               ; preds = %10
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @BIO_FLAGS_NONCLEAR_RST, align 4
  %19 = call i32 @BIO_set_flags(i32* %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %22 = call i32 @BIO_read(i32* %20, i8* %21, i32 16)
  %23 = call i32 @TEST_int_eq(i32 %22, i32 12)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %66

26:                                               ; preds = %16
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %28 = call i32 @TEST_mem_eq(i8* %27, i32 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %66

31:                                               ; preds = %26
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @BIO_reset(i32* %32)
  %34 = call i32 @TEST_int_gt(i32 %33, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %66

37:                                               ; preds = %31
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %40 = call i32 @BIO_read(i32* %38, i8* %39, i32 16)
  %41 = call i32 @TEST_int_eq(i32 %40, i32 12)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %66

44:                                               ; preds = %37
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %46 = call i32 @TEST_mem_eq(i8* %45, i32 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %66

49:                                               ; preds = %44
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* @BIO_FLAGS_NONCLEAR_RST, align 4
  %52 = call i32 @BIO_clear_flags(i32* %50, i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @BIO_reset(i32* %53)
  %55 = call i32 @TEST_int_gt(i32 %54, i32 0)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %66

58:                                               ; preds = %49
  %59 = load i32*, i32** %2, align 8
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %61 = call i32 @BIO_read(i32* %59, i8* %60, i32 16)
  %62 = call i32 @TEST_int_lt(i32 %61, i32 1)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %66

65:                                               ; preds = %58
  store i32 1, i32* %1, align 4
  br label %66

66:                                               ; preds = %65, %64, %57, %48, %43, %36, %30, %25, %15, %9
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @BIO_free(i32* %67)
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @BIO_set_flags(i32*, i32) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @BIO_reset(i32*) #1

declare dso_local i32 @BIO_clear_flags(i32*, i32) #1

declare dso_local i32 @TEST_int_lt(i32, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
