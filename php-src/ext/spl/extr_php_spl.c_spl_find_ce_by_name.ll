; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_php_spl.c_spl_find_ce_by_name.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_php_spl.c_spl_find_ce_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@class_table = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Class %s does not exist%s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c" and could not be loaded\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64)* @spl_find_ce_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @spl_find_ce_by_name(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @zend_string_tolower(i32* %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* @class_table, align 4
  %14 = call i32 @EG(i32 %13)
  %15 = load i32*, i32** %7, align 8
  %16 = call i32* @zend_hash_find_ptr(i32 %14, i32* %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @zend_string_release(i32* %17)
  br label %22

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @zend_lookup_class(i32* %20)
  store i32* %21, i32** %6, align 8
  br label %22

22:                                               ; preds = %19, %10
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* @E_WARNING, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @ZSTR_VAL(i32* %27)
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @php_error_docref(i32* null, i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %32)
  store i32* null, i32** %3, align 8
  br label %36

34:                                               ; preds = %22
  %35 = load i32*, i32** %6, align 8
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %34, %25
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

declare dso_local i32* @zend_string_tolower(i32*) #1

declare dso_local i32* @zend_hash_find_ptr(i32, i32*) #1

declare dso_local i32 @EG(i32) #1

declare dso_local i32 @zend_string_release(i32*) #1

declare dso_local i32* @zend_lookup_class(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32, i8*) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
