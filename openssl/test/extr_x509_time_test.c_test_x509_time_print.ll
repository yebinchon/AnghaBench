; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_x509_time_test.c_test_x509_time_print.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_x509_time_test.c_test_x509_time_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@x509_print_tests = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"Bad time value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_x509_time_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_x509_time_print(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %8 = call i32 (...) @BIO_s_mem()
  %9 = call i32* @BIO_new(i32 %8)
  store i32* %9, i32** %3, align 8
  %10 = call i32 @TEST_ptr(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %54

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @x509_print_tests, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @ASN1_TIME_print(i32* %14, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @x509_print_tests, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %13
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @TEST_str_eq(i8* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %54

34:                                               ; preds = %29, %13
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @BIO_get_mem_data(i32* %35, i8** %6)
  store i32 %36, i32* %5, align 4
  %37 = call i32 @TEST_int_ne(i32 %36, i32 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = trunc i64 %42 to i32
  %44 = call i32 @TEST_int_eq(i32 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @TEST_strn_eq(i8* %47, i8* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46, %39, %34
  br label %54

53:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %52, %33, %12
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @BIO_free(i32* %55)
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @ASN1_TIME_print(i32*, i32*) #1

declare dso_local i32 @TEST_str_eq(i8*, i8*) #1

declare dso_local i32 @TEST_int_ne(i32, i32) #1

declare dso_local i32 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @TEST_strn_eq(i8*, i8*, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
