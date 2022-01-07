; ModuleID = '/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__property_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__property_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%sProperty [ \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"<dynamic> public $%s\00", align 1
@ZEND_ACC_STATIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"<default> \00", align 1
@ZEND_ACC_PPP_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"public \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"private \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"protected \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"$%s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" ]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*, i8*)* @_property_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_property_string(i32* %0, %struct.TYPE_3__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i32 @smart_str_append_printf(i32* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @smart_str_append_printf(i32* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %66

19:                                               ; preds = %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @smart_str_appends(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ZEND_ACC_PPP_MASK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %44 [
    i32 128, label %35
    i32 130, label %38
    i32 129, label %41
  ]

35:                                               ; preds = %29
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @smart_str_appends(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %44

38:                                               ; preds = %29
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @smart_str_appends(i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %44

41:                                               ; preds = %29
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @smart_str_appends(i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %29, %41, %38, %35
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @smart_str_appends(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i8*, i8** %7, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @zend_unmangle_property_name(i32 %60, i8** %9, i8** %7)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32*, i32** %5, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @smart_str_append_printf(i32* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %62, %15
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @smart_str_appends(i32* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @smart_str_append_printf(i32*, i8*, i8*) #1

declare dso_local i32 @smart_str_appends(i32*, i8*) #1

declare dso_local i32 @zend_unmangle_property_name(i32, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
