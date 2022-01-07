; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_asynctest.c_test_ASYNC_init_thread.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_asynctest.c_test_ASYNC_init_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@only_pause = common dso_local global i32 0, align 4
@ASYNC_PAUSE = common dso_local global i64 0, align 8
@ASYNC_NO_JOBS = common dso_local global i64 0, align 8
@ASYNC_FINISH = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"test_ASYNC_init_thread() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_ASYNC_init_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ASYNC_init_thread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %8, align 8
  %9 = call i32 @ASYNC_init_thread(i32 2, i32 0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %65

11:                                               ; preds = %0
  %12 = call i32* (...) @ASYNC_WAIT_CTX_new()
  store i32* %12, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %65, label %14

14:                                               ; preds = %11
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @only_pause, align 4
  %17 = call i64 @ASYNC_start_job(i32** %2, i32* %15, i32* %5, i32 %16, i32* null, i32 0)
  %18 = load i64, i64* @ASYNC_PAUSE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %65, label %20

20:                                               ; preds = %14
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @only_pause, align 4
  %23 = call i64 @ASYNC_start_job(i32** %3, i32* %21, i32* %6, i32 %22, i32* null, i32 0)
  %24 = load i64, i64* @ASYNC_PAUSE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %65, label %26

26:                                               ; preds = %20
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @only_pause, align 4
  %29 = call i64 @ASYNC_start_job(i32** %4, i32* %27, i32* %7, i32 %28, i32* null, i32 0)
  %30 = load i64, i64* @ASYNC_NO_JOBS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %65, label %32

32:                                               ; preds = %26
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @only_pause, align 4
  %35 = call i64 @ASYNC_start_job(i32** %2, i32* %33, i32* %5, i32 %34, i32* null, i32 0)
  %36 = load i64, i64* @ASYNC_FINISH, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %65, label %38

38:                                               ; preds = %32
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @only_pause, align 4
  %41 = call i64 @ASYNC_start_job(i32** %4, i32* %39, i32* %7, i32 %40, i32* null, i32 0)
  %42 = load i64, i64* @ASYNC_PAUSE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %65, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @only_pause, align 4
  %47 = call i64 @ASYNC_start_job(i32** %3, i32* %45, i32* %6, i32 %46, i32* null, i32 0)
  %48 = load i64, i64* @ASYNC_FINISH, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %65, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* @only_pause, align 4
  %53 = call i64 @ASYNC_start_job(i32** %4, i32* %51, i32* %7, i32 %52, i32* null, i32 0)
  %54 = load i64, i64* @ASYNC_FINISH, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %71

65:                                               ; preds = %62, %59, %56, %50, %44, %38, %32, %26, %20, %14, %11, %0
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @ASYNC_WAIT_CTX_free(i32* %68)
  %70 = call i32 (...) @ASYNC_cleanup_thread()
  store i32 0, i32* %1, align 4
  br label %75

71:                                               ; preds = %62
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @ASYNC_WAIT_CTX_free(i32* %72)
  %74 = call i32 (...) @ASYNC_cleanup_thread()
  store i32 1, i32* %1, align 4
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

declare dso_local i32 @ASYNC_init_thread(i32, i32) #1

declare dso_local i32* @ASYNC_WAIT_CTX_new(...) #1

declare dso_local i64 @ASYNC_start_job(i32**, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @ASYNC_WAIT_CTX_free(i32*) #1

declare dso_local i32 @ASYNC_cleanup_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
