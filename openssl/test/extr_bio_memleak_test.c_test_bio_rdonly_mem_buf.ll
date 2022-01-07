; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bio_memleak_test.c_test_bio_rdonly_mem_buf.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bio_memleak_test.c_test_bio_rdonly_mem_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@BIO_CLOSE = common dso_local global i32 0, align 4
@BIO_FLAGS_MEM_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" World\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bio_rdonly_mem_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bio_rdonly_mem_buf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [16 x i8], align 16
  store i32 0, i32* %1, align 4
  store i32* null, i32** %3, align 8
  %6 = call i32* @BIO_new_mem_buf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @TEST_ptr(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %77

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %14 = call i32 @BIO_read(i32* %12, i8* %13, i32 5)
  %15 = call i32 @TEST_int_eq(i32 %14, i32 5)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %77

18:                                               ; preds = %11
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %20 = call i32 @TEST_mem_eq(i8* %19, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %77

23:                                               ; preds = %18
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @BIO_get_mem_ptr(i32* %24, i32** %4)
  %26 = call i32 @TEST_int_gt(i32 %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %77

29:                                               ; preds = %23
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @BIO_NOCLOSE, align 4
  %32 = call i32 @BIO_set_close(i32* %30, i32 %31)
  %33 = call i32 (...) @BIO_s_mem()
  %34 = call i32* @BIO_new(i32 %33)
  store i32* %34, i32** %3, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @TEST_ptr(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %77

39:                                               ; preds = %29
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @BIO_CLOSE, align 4
  %43 = call i32 @BIO_set_mem_buf(i32* %40, i32* %41, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @BIO_FLAGS_MEM_RDONLY, align 4
  %46 = call i32 @BIO_set_flags(i32* %44, i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %49 = call i32 @BIO_read(i32* %47, i8* %48, i32 16)
  %50 = call i32 @TEST_int_eq(i32 %49, i32 7)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  br label %77

53:                                               ; preds = %39
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %55 = call i32 @TEST_mem_eq(i8* %54, i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %77

58:                                               ; preds = %53
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @BIO_reset(i32* %59)
  %61 = call i32 @TEST_int_gt(i32 %60, i32 0)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %77

64:                                               ; preds = %58
  %65 = load i32*, i32** %3, align 8
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %67 = call i32 @BIO_read(i32* %65, i8* %66, i32 16)
  %68 = call i32 @TEST_int_eq(i32 %67, i32 7)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %77

71:                                               ; preds = %64
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %73 = call i32 @TEST_mem_eq(i8* %72, i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  br label %77

76:                                               ; preds = %71
  store i32 1, i32* %1, align 4
  br label %77

77:                                               ; preds = %76, %75, %70, %63, %57, %52, %38, %28, %22, %17, %10
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @BIO_free(i32* %78)
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @BIO_free(i32* %80)
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i32* @BIO_new_mem_buf(i8*, i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @BIO_get_mem_ptr(i32*, i32**) #1

declare dso_local i32 @BIO_set_close(i32*, i32) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @BIO_set_mem_buf(i32*, i32*, i32) #1

declare dso_local i32 @BIO_set_flags(i32*, i32) #1

declare dso_local i32 @BIO_reset(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
