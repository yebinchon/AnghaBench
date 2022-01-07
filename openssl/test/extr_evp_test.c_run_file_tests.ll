; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_run_file_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_run_file_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@public_keys = common dso_local global i32 0, align 4
@private_keys = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @run_file_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_file_tests(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i8* @test_get_argument(i32 %7)
  store i8* %8, i8** %5, align 8
  %9 = call %struct.TYPE_10__* @OPENSSL_zalloc(i32 24)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  %10 = call i32 @TEST_ptr(%struct.TYPE_10__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @test_start_file(%struct.TYPE_11__* %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @OPENSSL_free(%struct.TYPE_10__* %20)
  store i32 0, i32* %2, align 4
  br label %82

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %57, %38, %22
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BIO_eof(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %58

31:                                               ; preds = %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = call i32 @parse(%struct.TYPE_10__* %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  br label %23

44:                                               ; preds = %31
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = call i32 @run_test(%struct.TYPE_10__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %58

57:                                               ; preds = %47
  br label %23

58:                                               ; preds = %51, %23
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = call i32 @test_end_file(%struct.TYPE_11__* %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = call i32 @clear_test(%struct.TYPE_10__* %62)
  %64 = load i32, i32* @public_keys, align 4
  %65 = call i32 @free_key_list(i32 %64)
  %66 = load i32, i32* @private_keys, align 4
  %67 = call i32 @free_key_list(i32 %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @BIO_free(i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %6, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = call i32 @OPENSSL_free(%struct.TYPE_10__* %77)
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %58, %19, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i8* @test_get_argument(i32) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @test_start_file(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_10__*) #1

declare dso_local i32 @BIO_eof(i32) #1

declare dso_local i32 @parse(%struct.TYPE_10__*) #1

declare dso_local i32 @run_test(%struct.TYPE_10__*) #1

declare dso_local i32 @test_end_file(%struct.TYPE_11__*) #1

declare dso_local i32 @clear_test(%struct.TYPE_10__*) #1

declare dso_local i32 @free_key_list(i32) #1

declare dso_local i32 @BIO_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
