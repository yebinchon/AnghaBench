; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_read_stream_messages_multi.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_read_stream_messages_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_read_stream_messages_multi(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %54, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @read_mbulk_header(i32* %19, i32* %10)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @redis_sock_read(i32* %26, i32* %13)
  store i8* %27, i8** %12, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @read_mbulk_header(i32* %30, i32* %11)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29, %25, %22, %18
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @efree(i8* %37)
  br label %39

39:                                               ; preds = %36, %33
  store i32 -1, i32* %4, align 4
  br label %62

40:                                               ; preds = %29
  %41 = call i32 @array_init(i32* %8)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @redis_read_stream_messages(i32* %42, i32 %43, i32* %8)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %58

47:                                               ; preds = %40
  %48 = load i32*, i32** %7, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @add_assoc_zval_ex(i32* %48, i8* %49, i32 %50, i32* %8)
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @efree(i8* %52)
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %14

57:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %62

58:                                               ; preds = %46
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 @efree(i8* %59)
  %61 = call i32 @zval_dtor(i32* %8)
  store i32 -1, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %57, %39
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @read_mbulk_header(i32*, i32*) #1

declare dso_local i8* @redis_sock_read(i32*, i32*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i64 @redis_read_stream_messages(i32*, i32, i32*) #1

declare dso_local i32 @add_assoc_zval_ex(i32*, i8*, i32, i32*) #1

declare dso_local i32 @zval_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
