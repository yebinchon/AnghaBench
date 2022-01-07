; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_read_multibulk_recursive.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_read_multibulk_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@redis_exception_ce = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"protocol error, couldn't parse MULTI-BULK response\0A\00", align 1
@FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_read_multibulk_recursive(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  br label %13

13:                                               ; preds = %53, %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %13
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @redis_read_reply_type(i32* %17, i32* %11, i64* %10)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @redis_exception_ce, align 4
  %22 = call i32 @zend_throw_exception_ex(i32 %21, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @FAILURE, align 4
  store i32 %23, i32* %5, align 4
  br label %57

24:                                               ; preds = %16
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %52 [
    i32 131, label %26
    i32 129, label %26
    i32 130, label %33
    i32 132, label %37
    i32 128, label %43
  ]

26:                                               ; preds = %24, %24
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @redis_read_variant_line(i32* %27, i32 %28, i32 %29, i32* %12)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @add_next_index_zval(i32* %31, i32* %12)
  br label %53

33:                                               ; preds = %24
  %34 = load i32*, i32** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @add_next_index_long(i32* %34, i64 %35)
  br label %53

37:                                               ; preds = %24
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @redis_read_variant_bulk(i32* %38, i64 %39, i32* %12)
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @add_next_index_zval(i32* %41, i32* %12)
  br label %53

43:                                               ; preds = %24
  %44 = call i32 @array_init(i32* %12)
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @add_next_index_zval(i32* %45, i32* %12)
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %10, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @redis_read_multibulk_recursive(i32* %47, i32 %49, i32 %50, i32* %12)
  br label %53

52:                                               ; preds = %24
  br label %53

53:                                               ; preds = %52, %43, %37, %33, %26
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  br label %13

56:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %20
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @redis_read_reply_type(i32*, i32*, i64*) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*) #1

declare dso_local i32 @redis_read_variant_line(i32*, i32, i32, i32*) #1

declare dso_local i32 @add_next_index_zval(i32*, i32*) #1

declare dso_local i32 @add_next_index_long(i32*, i64) #1

declare dso_local i32 @redis_read_variant_bulk(i32*, i64, i32*) #1

declare dso_local i32 @array_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
