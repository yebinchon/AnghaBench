; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_index_exec.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_index_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@redis_ce = common dso_local global %struct.TYPE_2__* null, align 8
@IS_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_index_exec(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 @ZVAL_STRINGL(i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @redis_ce, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ra_call_user_function(i32* %12, i32* %13, i32* %7, i32* %8, i32 0, i32* null)
  %15 = call i32 @zval_dtor(i32* %7)
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @Z_TYPE(i32 %16)
  %18 = load i64, i64* @IS_ARRAY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  store i32* %8, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @RETVAL_ZVAL(i32* %27, i32 1, i32 0)
  br label %38

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @Z_ARRVAL(i32 %30)
  %32 = call i32* @zend_hash_index_find(i32 %31, i32 0)
  store i32* %32, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @RETVAL_ZVAL(i32* %35, i32 1, i32 0)
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %37, %26
  br label %39

39:                                               ; preds = %38, %20
  br label %40

40:                                               ; preds = %39, %3
  %41 = call i32 @zval_dtor(i32* %8)
  ret void
}

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @ra_call_user_function(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @zval_dtor(i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @RETVAL_ZVAL(i32*, i32, i32) #1

declare dso_local i32* @zend_hash_index_find(i32, i32) #1

declare dso_local i32 @Z_ARRVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
