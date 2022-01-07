; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_sock_read_single_line.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_sock_read_single_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_LINE = common dso_local global i64 0, align 8
@TYPE_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_sock_read_single_line(i32* %0, i8* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @redis_read_reply_type(i32* %14, i64* %12, i64* %13)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @TYPE_LINE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @TYPE_ERR, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %5
  store i32 -1, i32* %6, align 4
  br label %58

26:                                               ; preds = %21, %17
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = call i64 @redis_sock_gets(i32* %27, i8* %28, i64 %29, i64* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %58

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @TYPE_ERR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @IS_ATOMIC(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @redis_sock_set_err(i32* %46, i8* %47, i64 %49)
  br label %51

51:                                               ; preds = %45, %41
  br label %52

52:                                               ; preds = %51, %37, %34
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @TYPE_LINE, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 -1
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %52, %33, %25
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @redis_read_reply_type(i32*, i64*, i64*) #1

declare dso_local i64 @redis_sock_gets(i32*, i8*, i64, i64*) #1

declare dso_local i64 @IS_ATOMIC(i32*) #1

declare dso_local i32 @redis_sock_set_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
