; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_zval_rehash_callback.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_zval_rehash_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*, i64)* @zval_rehash_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zval_rehash_callback(%struct.TYPE_4__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [2 x i32], align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32* %9, i32** %10, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = call i32 @ZVAL_NULL(i32* %12)
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @ZSTR_VAL(i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @ZSTR_LEN(i32* %17)
  %19 = call i32 @ZVAL_STRINGL(i32* %14, i32 %16, i32 %18)
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @ZVAL_LONG(i32* %20, i64 %21)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 2, i32* %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @zend_call_function(%struct.TYPE_4__* %33, i32* %34)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %37 = call i32 @zval_dtor(i32* %36)
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @zval_dtor(i32* %38)
  ret void
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i64) #1

declare dso_local i32 @zend_call_function(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @zval_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
