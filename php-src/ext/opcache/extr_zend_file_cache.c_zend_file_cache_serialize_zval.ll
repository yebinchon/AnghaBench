; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_serialize_zval.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_serialize_zval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i8*)* @zend_file_cache_serialize_zval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_file_cache_serialize_zval(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @Z_TYPE_P(i32* %12)
  switch i32 %13, label %82 [
    i32 128, label %14
    i32 131, label %24
    i32 129, label %43
    i32 130, label %62
  ]

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.TYPE_14__* @Z_STR_P(i32* %15)
  %17 = call i32 @IS_SERIALIZED(%struct.TYPE_14__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.TYPE_14__* @Z_STR_P(i32* %20)
  %22 = call i32 @SERIALIZE_STR(%struct.TYPE_14__* %21)
  br label %23

23:                                               ; preds = %19, %14
  br label %82

24:                                               ; preds = %4
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.TYPE_14__* @Z_ARR_P(i32* %25)
  %27 = call i32 @IS_SERIALIZED(%struct.TYPE_14__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = call %struct.TYPE_14__* @Z_ARR_P(i32* %30)
  %32 = call i32 @SERIALIZE_PTR(%struct.TYPE_14__* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call %struct.TYPE_14__* @Z_ARR_P(i32* %33)
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %9, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_14__* %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @zend_file_cache_serialize_hash(%struct.TYPE_14__* %37, i32* %38, i32* %39, i8* %40, void (i32*, i32*, i32*, i8*)* @zend_file_cache_serialize_zval)
  br label %42

42:                                               ; preds = %29, %24
  br label %82

43:                                               ; preds = %4
  %44 = load i32*, i32** %5, align 8
  %45 = call %struct.TYPE_14__* @Z_REF_P(i32* %44)
  %46 = call i32 @IS_SERIALIZED(%struct.TYPE_14__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = call %struct.TYPE_14__* @Z_REF_P(i32* %49)
  %51 = call i32 @SERIALIZE_PTR(%struct.TYPE_14__* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call %struct.TYPE_14__* @Z_REF_P(i32* %52)
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %10, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %55 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_14__* %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i8*, i8** %8, align 8
  call void @zend_file_cache_serialize_zval(i32* %57, i32* %58, i32* %59, i8* %60)
  br label %61

61:                                               ; preds = %48, %43
  br label %82

62:                                               ; preds = %4
  %63 = load i32*, i32** %5, align 8
  %64 = call %struct.TYPE_14__* @Z_AST_P(i32* %63)
  %65 = call i32 @IS_SERIALIZED(%struct.TYPE_14__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %62
  %68 = load i32*, i32** %5, align 8
  %69 = call %struct.TYPE_14__* @Z_AST_P(i32* %68)
  %70 = call i32 @SERIALIZE_PTR(%struct.TYPE_14__* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call %struct.TYPE_14__* @Z_AST_P(i32* %71)
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %11, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %74 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_14__* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %76 = call i32 @GC_AST(%struct.TYPE_14__* %75)
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @zend_file_cache_serialize_ast(i32 %76, i32* %77, i32* %78, i8* %79)
  br label %81

81:                                               ; preds = %67, %62
  br label %82

82:                                               ; preds = %4, %81, %61, %42, %23
  ret void
}

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @IS_SERIALIZED(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @Z_STR_P(i32*) #1

declare dso_local i32 @SERIALIZE_STR(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @Z_ARR_P(i32*) #1

declare dso_local i32 @SERIALIZE_PTR(%struct.TYPE_14__*) #1

declare dso_local i32 @UNSERIALIZE_PTR(%struct.TYPE_14__*) #1

declare dso_local i32 @zend_file_cache_serialize_hash(%struct.TYPE_14__*, i32*, i32*, i8*, void (i32*, i32*, i32*, i8*)*) #1

declare dso_local %struct.TYPE_14__* @Z_REF_P(i32*) #1

declare dso_local %struct.TYPE_14__* @Z_AST_P(i32*) #1

declare dso_local i32 @zend_file_cache_serialize_ast(i32, i32*, i32*, i8*) #1

declare dso_local i32 @GC_AST(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
