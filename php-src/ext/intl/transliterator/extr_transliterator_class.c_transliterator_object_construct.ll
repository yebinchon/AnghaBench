; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/transliterator/extr_transliterator_class.c_transliterator_object_construct.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/transliterator/extr_transliterator_class.c_transliterator_object_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@TRANSLITERATOR_METHOD_FETCH_OBJECT_NO_CHECK = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@Transliterator_ce_ptr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transliterator_object_construct(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @TRANSLITERATOR_METHOD_FETCH_OBJECT_NO_CHECK, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @utrans_getUnicodeID(i32* %23, i64* %9)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @intl_convert_utf16_to_utf8(i32* %25, i32 %27, i32* %28)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @FAILURE, align 4
  store i32 %33, i32* %4, align 4
  br label %43

34:                                               ; preds = %3
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @ZVAL_NEW_STR(i32* %11, i32* %35)
  %37 = load i32, i32* @Transliterator_ce_ptr, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @zend_update_property(i32 %37, i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32* %11)
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @GC_DELREF(i32* %40)
  %42 = load i32, i32* @SUCCESS, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %34, %32
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @utrans_getUnicodeID(i32*, i64*) #1

declare dso_local i32* @intl_convert_utf16_to_utf8(i32*, i32, i32*) #1

declare dso_local i32 @ZVAL_NEW_STR(i32*, i32*) #1

declare dso_local i32 @zend_update_property(i32, i32*, i8*, i32, i32*) #1

declare dso_local i32 @GC_DELREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
