; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/transliterator/extr_transliterator_class.c_Transliterator_write_property.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/transliterator/extr_transliterator_class.c_Transliterator_write_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fake_scope = common dso_local global i32 0, align 4
@Transliterator_ce_ptr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"The property \22id\22 is read-only\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8**)* @Transliterator_write_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Transliterator_write_property(i32* %0, i32* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %10 = load i32, i32* @fake_scope, align 4
  %11 = call i32* @EG(i32 %10)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @fake_scope, align 4
  %15 = call i32* @EG(i32 %14)
  store i32* %15, i32** %9, align 8
  br label %18

16:                                               ; preds = %4
  %17 = call i32* (...) @zend_get_executed_scope()
  store i32* %17, i32** %9, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** @Transliterator_ce_ptr, align 8
  %21 = icmp ne i32* %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @ZSTR_VAL(i32* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ZSTR_LEN(i32* %25)
  %27 = call i64 @zend_binary_strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32 %24, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @E_WARNING, align 4
  %31 = call i32 @php_error_docref(i32* null, i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %38

32:                                               ; preds = %22, %18
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i8**, i8*** %8, align 8
  %37 = call i32* @zend_std_write_property(i32* %33, i32* %34, i32* %35, i8** %36)
  store i32* %37, i32** %7, align 8
  br label %38

38:                                               ; preds = %32, %29
  %39 = load i32*, i32** %7, align 8
  ret i32* %39
}

declare dso_local i32* @EG(i32) #1

declare dso_local i32* @zend_get_executed_scope(...) #1

declare dso_local i64 @zend_binary_strcmp(i8*, i32, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32* @zend_std_write_property(i32*, i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
