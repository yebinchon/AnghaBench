; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cipherlist_test.c_test_default_cipherlist_clear.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cipherlist_test.c_test_default_cipherlist_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@fixture = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"no-such\00", align 1
@SSL_R_NO_CIPHER_MATCH = common dso_local global i32 0, align 4
@result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_default_cipherlist_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_default_cipherlist_clear() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = call i32 (...) @SETUP_CIPHERLIST_TEST_FIXTURE()
  store i32* null, i32** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fixture, align 8
  %5 = icmp eq %struct.TYPE_3__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %51

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fixture, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @SSL_CTX_set_cipher_list(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @TEST_int_eq(i32 %11, i32 0)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %45

15:                                               ; preds = %7
  %16 = call i32 (...) @ERR_get_error()
  %17 = call i32 @ERR_GET_REASON(i32 %16)
  %18 = load i32, i32* @SSL_R_NO_CIPHER_MATCH, align 4
  %19 = call i32 @TEST_int_eq(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %45

22:                                               ; preds = %15
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fixture, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @SSL_new(i32 %25)
  store i32* %26, i32** %2, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @TEST_ptr(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %45

31:                                               ; preds = %22
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @SSL_set_cipher_list(i32* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @TEST_int_eq(i32 %33, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %45

37:                                               ; preds = %31
  %38 = call i32 (...) @ERR_get_error()
  %39 = call i32 @ERR_GET_REASON(i32 %38)
  %40 = load i32, i32* @SSL_R_NO_CIPHER_MATCH, align 4
  %41 = call i32 @TEST_int_eq(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %45

44:                                               ; preds = %37
  store i32 1, i32* @result, align 4
  br label %45

45:                                               ; preds = %44, %43, %36, %30, %21, %14
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @SSL_free(i32* %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fixture, align 8
  %49 = call i32 @tear_down(%struct.TYPE_3__* %48)
  %50 = load i32, i32* @result, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %45, %6
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @SETUP_CIPHERLIST_TEST_FIXTURE(...) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32, i8*) #1

declare dso_local i32 @ERR_GET_REASON(i32) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32* @SSL_new(i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @SSL_set_cipher_list(i32*, i8*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @tear_down(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
