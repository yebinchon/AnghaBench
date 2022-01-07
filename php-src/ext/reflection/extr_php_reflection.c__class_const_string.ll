; ModuleID = '/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__class_const_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__class_const_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@IS_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"%sConstant [ %s %s %s ] { Array }\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%sConstant [ %s %s %s ] { %s }\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_3__*, i8*)* @_class_const_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_class_const_string(i32* %0, i8* %1, %struct.TYPE_3__* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @Z_ACCESS_FLAGS(i32 %15)
  %17 = call i8* @zend_visibility_string(i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @zval_update_constant_ex(i32* %19, i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i8* @zend_zval_type_name(i32* %25)
  store i8* %26, i8** %10, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @Z_TYPE(i32 %29)
  %31 = load i64, i64* @IS_ARRAY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %4
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 (i32*, i8*, i8*, i8*, i8*, i8*, ...) @smart_str_append_printf(i32* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36, i8* %37, i8* %38)
  br label %54

40:                                               ; preds = %4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32* @zval_get_tmp_string(i32* %42, i32** %11)
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @ZSTR_VAL(i32* %49)
  %51 = call i32 (i32*, i8*, i8*, i8*, i8*, i8*, ...) @smart_str_append_printf(i32* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %45, i8* %46, i8* %47, i8* %48, i32 %50)
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @zend_tmp_string_release(i32* %52)
  br label %54

54:                                               ; preds = %40, %33
  ret void
}

declare dso_local i8* @zend_visibility_string(i32) #1

declare dso_local i32 @Z_ACCESS_FLAGS(i32) #1

declare dso_local i32 @zval_update_constant_ex(i32*, i32) #1

declare dso_local i8* @zend_zval_type_name(i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @smart_str_append_printf(i32*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32* @zval_get_tmp_string(i32*, i32**) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_tmp_string_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
