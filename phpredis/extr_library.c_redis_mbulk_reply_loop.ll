; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_mbulk_reply_loop.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_mbulk_reply_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNSERIALIZE_ALL = common dso_local global i32 0, align 4
@UNSERIALIZE_KEYS = common dso_local global i32 0, align 4
@UNSERIALIZE_VALS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redis_mbulk_reply_loop(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %69, %4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = call i8* @redis_sock_read(i32* %19, i32* %12)
  store i8* %20, i8** %10, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @add_next_index_bool(i32* %23, i32 0)
  br label %69

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @UNSERIALIZE_ALL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @UNSERIALIZE_KEYS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = srem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @UNSERIALIZE_VALS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = srem i32 %42, 2
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br label %47

47:                                               ; preds = %45, %33, %25
  %48 = phi i1 [ true, %33 ], [ true, %25 ], [ %46, %45 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @redis_unpack(i32* %53, i8* %54, i32 %55, i32* %9)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @add_next_index_zval(i32* %59, i32* %9)
  br label %66

61:                                               ; preds = %52, %47
  %62 = load i32*, i32** %6, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @add_next_index_stringl(i32* %62, i8* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @efree(i8* %67)
  br label %69

69:                                               ; preds = %66, %22
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %14

72:                                               ; preds = %14
  ret void
}

declare dso_local i8* @redis_sock_read(i32*, i32*) #1

declare dso_local i32 @add_next_index_bool(i32*, i32) #1

declare dso_local i64 @redis_unpack(i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_next_index_zval(i32*, i32*) #1

declare dso_local i32 @add_next_index_stringl(i32*, i8*, i32) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
