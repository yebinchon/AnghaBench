; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_driver.c_process_shared_options.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_driver.c_process_shared_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OPT_EOF = common dso_local global i32 0, align 4
@show_list = common dso_local global i32 0, align 4
@single_iter = common dso_local global i32 0, align 4
@level = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @process_shared_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_shared_options() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 -1, i32* %4, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* null, i8** %7, align 8
  %8 = call i32 (...) @opt_begin()
  br label %9

9:                                                ; preds = %48, %0
  %10 = call i32 (...) @opt_next()
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @OPT_EOF, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  switch i32 %14, label %15 [
    i32 134, label %16
    i32 133, label %18
    i32 130, label %21
    i32 128, label %22
    i32 131, label %25
    i32 132, label %32
    i32 129, label %40
  ]

15:                                               ; preds = %13
  br label %48

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %1, align 4
  br label %59

18:                                               ; preds = %13
  %19 = call i32 (...) @test_get_options()
  %20 = call i32 @opt_help(i32 %19)
  store i32 0, i32* %1, align 4
  br label %59

21:                                               ; preds = %13
  store i32 1, i32* @show_list, align 4
  br label %48

22:                                               ; preds = %13
  %23 = call i8* (...) @opt_flag()
  store i8* %23, i8** %5, align 8
  %24 = call i8* (...) @opt_arg()
  store i8* %24, i8** %7, align 8
  br label %48

25:                                               ; preds = %13
  %26 = call i8* (...) @opt_flag()
  store i8* %26, i8** %6, align 8
  %27 = call i8* (...) @opt_arg()
  %28 = call i32 @opt_int(i8* %27, i32* @single_iter)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %57

31:                                               ; preds = %25
  br label %48

32:                                               ; preds = %13
  %33 = call i8* (...) @opt_arg()
  %34 = call i32 @opt_int(i8* %33, i32* %3)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %57

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 4, %38
  store i32 %39, i32* @level, align 4
  br label %48

40:                                               ; preds = %13
  %41 = call i8* (...) @opt_arg()
  %42 = call i32 @opt_int(i8* %41, i32* %3)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %57

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @set_seed(i32 %46)
  br label %48

48:                                               ; preds = %45, %37, %31, %22, %21, %15
  br label %9

49:                                               ; preds = %9
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @check_single_test_params(i8* %50, i8* %51, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %57

56:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %55, %44, %36, %30
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %1, align 4
  br label %59

59:                                               ; preds = %57, %18, %16
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @opt_begin(...) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @test_get_options(...) #1

declare dso_local i8* @opt_flag(...) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32 @opt_int(i8*, i32*) #1

declare dso_local i32 @set_seed(i32) #1

declare dso_local i32 @check_single_test_params(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
