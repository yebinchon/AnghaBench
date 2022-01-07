; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_sock_read.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_sock_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@redis_exception_ce = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"protocol error, got '%c' as reply type byte\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @redis_sock_read(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %11 = call i64 @redis_sock_gets(i32* %9, i8* %10, i32 4095, i64* %7)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %60

14:                                               ; preds = %2
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %16 = load i8, i8* %15, align 16
  %17 = sext i8 %16 to i32
  switch i32 %17, label %54 [
    i32 45, label %18
    i32 36, label %26
    i32 42, label %35
    i32 43, label %42
    i32 58, label %42
  ]

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @redis_sock_set_err(i32* %19, i8* %21, i64 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @redis_error_throw(i32* %24)
  store i8* null, i8** %3, align 8
  br label %60

26:                                               ; preds = %14
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = call i32 @atoi(i8* %28)
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @redis_sock_read_bulk_reply(i32* %31, i32 %33)
  store i8* %34, i8** %3, align 8
  br label %60

35:                                               ; preds = %14
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 @memcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i8* null, i8** %3, align 8
  br label %60

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %14, %14, %41
  %43 = load i64, i64* %7, align 8
  %44 = icmp ugt i64 %43, 1
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @estrndup(i8* %49, i32 %51)
  store i8* %52, i8** %3, align 8
  br label %60

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %14, %53
  %55 = load i32, i32* @redis_exception_ce, align 4
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %57 = load i8, i8* %56, align 16
  %58 = call i32 @zend_throw_exception_ex(i32 %55, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8 signext %57)
  br label %59

59:                                               ; preds = %54
  store i8* null, i8** %3, align 8
  br label %60

60:                                               ; preds = %59, %45, %40, %26, %18, %13
  %61 = load i8*, i8** %3, align 8
  ret i8* %61
}

declare dso_local i64 @redis_sock_gets(i32*, i8*, i32, i64*) #1

declare dso_local i32 @redis_sock_set_err(i32*, i8*, i64) #1

declare dso_local i32 @redis_error_throw(i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @redis_sock_read_bulk_reply(i32*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @estrndup(i8*, i32) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
