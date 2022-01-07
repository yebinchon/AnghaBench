; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_read_variant_line.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_read_variant_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32*)* @redis_read_variant_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_read_variant_line(i32* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %14 = call i64 @redis_sock_gets(i32* %12, i8* %13, i32 4096, i64* %11)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %43

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @TYPE_ERR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @redis_sock_set_err(i32* %22, i8* %23, i64 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @redis_error_throw(i32* %26)
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @ZVAL_FALSE(i32* %28)
  br label %42

30:                                               ; preds = %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @ZVAL_STRINGL(i32* %34, i8* %35, i64 %36)
  br label %41

38:                                               ; preds = %30
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @ZVAL_TRUE(i32* %39)
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41, %21
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %16
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @redis_sock_gets(i32*, i8*, i32, i64*) #1

declare dso_local i32 @redis_sock_set_err(i32*, i8*, i64) #1

declare dso_local i32 @redis_error_throw(i32*) #1

declare dso_local i32 @ZVAL_FALSE(i32*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i64) #1

declare dso_local i32 @ZVAL_TRUE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
