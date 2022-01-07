; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bio_memleak_test.c_test_bio_new_mem_buf.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bio_memleak_test.c_test_bio_new_mem_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" World\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bio_new_mem_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bio_new_mem_buf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [16 x i8], align 16
  store i32 0, i32* %1, align 4
  %5 = call i32* @BIO_new_mem_buf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @TEST_ptr(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %65

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %13 = call i32 @BIO_read(i32* %11, i8* %12, i32 5)
  %14 = call i32 @TEST_int_eq(i32 %13, i32 5)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %65

17:                                               ; preds = %10
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %19 = call i32 @TEST_mem_eq(i8* %18, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %65

22:                                               ; preds = %17
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @BIO_get_mem_ptr(i32* %23, i32** %3)
  %25 = call i32 @TEST_int_gt(i32 %24, i32 0)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %65

28:                                               ; preds = %22
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @BIO_write(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %31 = call i32 @TEST_int_lt(i32 %30, i32 0)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %65

34:                                               ; preds = %28
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %37 = call i32 @BIO_read(i32* %35, i8* %36, i32 16)
  %38 = call i32 @TEST_int_eq(i32 %37, i32 7)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %65

41:                                               ; preds = %34
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %43 = call i32 @TEST_mem_eq(i8* %42, i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %65

46:                                               ; preds = %41
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @BIO_reset(i32* %47)
  %49 = call i32 @TEST_int_gt(i32 %48, i32 0)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %65

52:                                               ; preds = %46
  %53 = load i32*, i32** %2, align 8
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %55 = call i32 @BIO_read(i32* %53, i8* %54, i32 16)
  %56 = call i32 @TEST_int_eq(i32 %55, i32 12)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %65

59:                                               ; preds = %52
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %61 = call i32 @TEST_mem_eq(i8* %60, i32 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %65

64:                                               ; preds = %59
  store i32 1, i32* %1, align 4
  br label %65

65:                                               ; preds = %64, %63, %58, %51, %45, %40, %33, %27, %21, %16, %9
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @BIO_free(i32* %66)
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local i32* @BIO_new_mem_buf(i8*, i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @BIO_get_mem_ptr(i32*, i32**) #1

declare dso_local i32 @TEST_int_lt(i32, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @BIO_reset(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
