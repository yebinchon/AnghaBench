; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_move_hash.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_move_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"HGETALL\00", align 1
@redis_ce = common dso_local global %struct.TYPE_2__* null, align 8
@IS_ARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"HMSET\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*, i64)* @ra_move_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ra_move_hash(i8* %0, i32 %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @ZVAL_STRINGL(i32* %16, i8* %17, i32 %18)
  %20 = call i32 @ZVAL_STRINGL(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @redis_ce, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %26 = call i32 @ra_call_user_function(i32* %22, i32* %23, i32* %12, i32* %24, i32 1, i32* %25)
  %27 = call i32 @zval_dtor(i32* %12)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @Z_TYPE(i32 %29)
  %31 = load i64, i64* @IS_ARRAY, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %5
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %35 = call i32 @zval_dtor(i32* %34)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %37 = call i32 @zval_dtor(i32* %36)
  store i32 0, i32* %6, align 4
  br label %56

38:                                               ; preds = %5
  %39 = call i32 @ZVAL_STRINGL(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @redis_ce, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %44 = call i32 @ra_call_user_function(i32* %41, i32* %42, i32* %13, i32* %14, i32 2, i32* %43)
  %45 = call i32 @zval_dtor(i32* %13)
  %46 = call i32 @zval_dtor(i32* %14)
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @ra_expire_key(i8* %47, i32 %48, i32* %49, i64 %50)
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %53 = call i32 @zval_dtor(i32* %52)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %55 = call i32 @zval_dtor(i32* %54)
  store i32 1, i32* %6, align 4
  br label %56

56:                                               ; preds = %38, %33
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @ra_call_user_function(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @zval_dtor(i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @ra_expire_key(i8*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
