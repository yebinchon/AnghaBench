; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_unserialize_zval.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_unserialize_zval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ZVAL_PTR_DTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @zend_file_cache_unserialize_zval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_file_cache_unserialize_zval(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @Z_TYPE_P(i32* %9)
  switch i32 %10, label %71 [
    i32 128, label %11
    i32 131, label %21
    i32 129, label %39
    i32 130, label %56
  ]

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @Z_STR_P(i32* %12)
  %14 = call i32 @IS_UNSERIALIZED(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = call i8* @Z_STR_P(i32* %17)
  %19 = call i32 @UNSERIALIZE_STR(i8* %18)
  br label %20

20:                                               ; preds = %16, %11
  br label %71

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @Z_ARR_P(i32* %22)
  %24 = call i32 @IS_UNSERIALIZED(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @Z_ARR_P(i32* %27)
  %29 = call i32 @UNSERIALIZE_PTR(i8* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i8* @Z_ARR_P(i32* %30)
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @ZVAL_PTR_DTOR, align 4
  %37 = call i32 @zend_file_cache_unserialize_hash(i32* %33, i32* %34, i8* %35, void (i32*, i32*, i8*)* @zend_file_cache_unserialize_zval, i32 %36)
  br label %38

38:                                               ; preds = %26, %21
  br label %71

39:                                               ; preds = %3
  %40 = load i32*, i32** %4, align 8
  %41 = call i8* @Z_REF_P(i32* %40)
  %42 = call i32 @IS_UNSERIALIZED(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = call i8* @Z_REF_P(i32* %45)
  %47 = call i32 @UNSERIALIZE_PTR(i8* %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i8* @Z_REF_P(i32* %48)
  %50 = bitcast i8* %49 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %50, %struct.TYPE_2__** %8, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** %6, align 8
  call void @zend_file_cache_unserialize_zval(i32* %52, i32* %53, i8* %54)
  br label %55

55:                                               ; preds = %44, %39
  br label %71

56:                                               ; preds = %3
  %57 = load i32*, i32** %4, align 8
  %58 = call i8* @Z_AST_P(i32* %57)
  %59 = call i32 @IS_UNSERIALIZED(i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %56
  %62 = load i32*, i32** %4, align 8
  %63 = call i8* @Z_AST_P(i32* %62)
  %64 = call i32 @UNSERIALIZE_PTR(i8* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @Z_ASTVAL_P(i32* %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @zend_file_cache_unserialize_ast(i32 %66, i32* %67, i8* %68)
  br label %70

70:                                               ; preds = %61, %56
  br label %71

71:                                               ; preds = %3, %70, %55, %38, %20
  ret void
}

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @IS_UNSERIALIZED(i8*) #1

declare dso_local i8* @Z_STR_P(i32*) #1

declare dso_local i32 @UNSERIALIZE_STR(i8*) #1

declare dso_local i8* @Z_ARR_P(i32*) #1

declare dso_local i32 @UNSERIALIZE_PTR(i8*) #1

declare dso_local i32 @zend_file_cache_unserialize_hash(i32*, i32*, i8*, void (i32*, i32*, i8*)*, i32) #1

declare dso_local i8* @Z_REF_P(i32*) #1

declare dso_local i8* @Z_AST_P(i32*) #1

declare dso_local i32 @zend_file_cache_unserialize_ast(i32, i32*, i8*) #1

declare dso_local i32 @Z_ASTVAL_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
