; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/extr_php_date.c_date_object_get_properties_for_timezone.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/extr_php_date.c_date_object_get_properties_for_timezone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"timezone_type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"timezone\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @date_object_get_properties_for_timezone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @date_object_get_properties_for_timezone(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %11 [
    i32 131, label %10
    i32 129, label %10
    i32 128, label %10
    i32 130, label %10
    i32 132, label %10
  ]

10:                                               ; preds = %2, %2, %2, %2, %2
  br label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32* @zend_std_get_properties_for(i32* %12, i32 %13)
  store i32* %14, i32** %3, align 8
  br label %39

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.TYPE_4__* @php_timezone_obj_from_obj(i32* %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @zend_std_get_properties(i32* %18)
  %20 = call i32* @zend_array_dup(i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** %3, align 8
  br label %39

27:                                               ; preds = %15
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ZVAL_LONG(i32* %7, i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @zend_hash_str_update(i32* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13, i32* %7)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = call i32 @php_timezone_to_string(%struct.TYPE_4__* %34, i32* %7)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @zend_hash_str_update(i32* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8, i32* %7)
  %38 = load i32*, i32** %6, align 8
  store i32* %38, i32** %3, align 8
  br label %39

39:                                               ; preds = %27, %25, %11
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local i32* @zend_std_get_properties_for(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @php_timezone_obj_from_obj(i32*) #1

declare dso_local i32* @zend_array_dup(i32) #1

declare dso_local i32 @zend_std_get_properties(i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @zend_hash_str_update(i32*, i8*, i32, i32*) #1

declare dso_local i32 @php_timezone_to_string(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
