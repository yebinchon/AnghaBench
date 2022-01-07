; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_move_string.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_move_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@redis_ce = common dso_local global %struct.TYPE_2__* null, align 8
@IS_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"SETEX\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*, i64)* @ra_move_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ra_move_string(i8* %0, i32 %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32], align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = call i32 @ZVAL_STRINGL(i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ZVAL_STRINGL(i32* %17, i8* %18, i32 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @redis_ce, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %25 = call i32 @ra_call_user_function(i32* %22, i32* %23, i32* %12, i32* %14, i32 1, i32* %24)
  %26 = call i32 @zval_dtor(i32* %12)
  %27 = load i32, i32* %14, align 4
  %28 = call i64 @Z_TYPE(i32 %27)
  %29 = load i64, i64* @IS_STRING, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %33 = call i32 @zval_dtor(i32* %32)
  %34 = call i32 @zval_dtor(i32* %14)
  store i32 0, i32* %6, align 4
  br label %78

35:                                               ; preds = %5
  %36 = load i64, i64* %11, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = call i32 @ZVAL_STRINGL(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @ZVAL_LONG(i32* %40, i64 %41)
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  %44 = load i32, i32* %14, align 4
  %45 = call i8* @Z_STRVAL(i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @Z_STRLEN(i32 %46)
  %48 = call i32 @ZVAL_STRINGL(i32* %43, i8* %45, i32 %47)
  %49 = call i32 @zval_dtor(i32* %14)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @redis_ce, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %54 = call i32 @ra_call_user_function(i32* %51, i32* %52, i32* %13, i32* %14, i32 3, i32* %53)
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  %56 = call i32 @zval_dtor(i32* %55)
  br label %73

57:                                               ; preds = %35
  %58 = call i32 @ZVAL_STRINGL(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %60 = load i32, i32* %14, align 4
  %61 = call i8* @Z_STRVAL(i32 %60)
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @Z_STRLEN(i32 %62)
  %64 = call i32 @ZVAL_STRINGL(i32* %59, i8* %61, i32 %63)
  %65 = call i32 @zval_dtor(i32* %14)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @redis_ce, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %70 = call i32 @ra_call_user_function(i32* %67, i32* %68, i32* %13, i32* %14, i32 2, i32* %69)
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %72 = call i32 @zval_dtor(i32* %71)
  br label %73

73:                                               ; preds = %57, %38
  %74 = call i32 @zval_dtor(i32* %13)
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %76 = call i32 @zval_dtor(i32* %75)
  %77 = call i32 @zval_dtor(i32* %14)
  store i32 1, i32* %6, align 4
  br label %78

78:                                               ; preds = %73, %31
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @ra_call_user_function(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @zval_dtor(i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @ZVAL_LONG(i32*, i64) #1

declare dso_local i8* @Z_STRVAL(i32) #1

declare dso_local i32 @Z_STRLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
