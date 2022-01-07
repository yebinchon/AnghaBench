; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_var.c_php_add_var_hash.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_var.c_php_add_var_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@IS_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @php_add_var_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_add_var_hash(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @Z_ISREF_P(i32* %10)
  store i64 %11, i64* %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @Z_TYPE_P(i32* %19)
  %21 = load i64, i64* @IS_OBJECT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %73

24:                                               ; preds = %18, %2
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @Z_REFVAL_P(i32* %28)
  %30 = call i64 @Z_TYPE_P(i32* %29)
  %31 = load i64, i64* @IS_OBJECT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* @Z_REFVAL_P(i32* %34)
  store i32* %35, i32** %5, align 8
  br label %36

36:                                               ; preds = %33, %27, %24
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @Z_COUNTED_P(i32* %37)
  store i64 %38, i64* %7, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %7, align 8
  %42 = call i32* @zend_hash_index_find(i32* %40, i64 %41)
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @Z_LVAL_P(i32* %54)
  store i32 %55, i32* %3, align 4
  br label %73

56:                                               ; preds = %36
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ZVAL_LONG(i32* %9, i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @zend_hash_index_add_new(i32* %62, i64 %63, i32* %9)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, 1
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @zend_hash_index_add_new(i32* %66, i64 %68, i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @Z_ADDREF_P(i32* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %56, %53, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @Z_ISREF_P(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @Z_REFVAL_P(i32*) #1

declare dso_local i64 @Z_COUNTED_P(i32*) #1

declare dso_local i32* @zend_hash_index_find(i32*, i64) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @zend_hash_index_add_new(i32*, i64, i32*) #1

declare dso_local i32 @Z_ADDREF_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
