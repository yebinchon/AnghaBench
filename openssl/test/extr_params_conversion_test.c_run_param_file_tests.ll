; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_params_conversion_test.c_run_param_file_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_params_conversion_test.c_run_param_file_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @run_param_file_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_param_file_tests(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i8* @test_get_argument(i32 %8)
  store i8* %9, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = call %struct.TYPE_10__* @OPENSSL_zalloc(i32 16)
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  %11 = call i32 @TEST_ptr(%struct.TYPE_10__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @test_start_file(%struct.TYPE_10__* %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @OPENSSL_free(%struct.TYPE_10__* %20)
  store i32 0, i32* %2, align 4
  br label %62

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %52, %22
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BIO_eof(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %55

30:                                               ; preds = %23
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = call i32 @test_readstanza(%struct.TYPE_10__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %56

35:                                               ; preds = %30
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = call i32 @param_conversion_load_stanza(i32* %5, %struct.TYPE_10__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @param_conversion_test(i32* %5, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44, %40
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %44
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = call i32 @test_clearstanza(%struct.TYPE_10__* %53)
  br label %23

55:                                               ; preds = %23
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = call i32 @test_end_file(%struct.TYPE_10__* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = call i32 @OPENSSL_free(%struct.TYPE_10__* %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %19, %13
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i8* @test_get_argument(i32) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @test_start_file(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_10__*) #1

declare dso_local i32 @BIO_eof(i32) #1

declare dso_local i32 @test_readstanza(%struct.TYPE_10__*) #1

declare dso_local i32 @param_conversion_load_stanza(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @param_conversion_test(i32*, i32) #1

declare dso_local i32 @test_clearstanza(%struct.TYPE_10__*) #1

declare dso_local i32 @test_end_file(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
