; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/extr_intl_error.c_intl_error_set_custom_msg.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/extr_intl_error.c_intl_error_set_custom_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@error_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@use_exceptions = common dso_local global i32 0, align 4
@IntlException_ce_ptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intl_error_set_custom_msg(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %55

10:                                               ; preds = %3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @error_level, align 4
  %15 = call i64 @INTL_G(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* @error_level, align 4
  %19 = call i64 @INTL_G(i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @php_error_docref(i32* null, i64 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %17, %13
  %23 = load i32, i32* @use_exceptions, align 4
  %24 = call i64 @INTL_G(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @IntlException_ce_ptr, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @zend_throw_exception_ex(i32 %27, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %10
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = call %struct.TYPE_5__* (...) @intl_g_error_get()
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %4, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %55

38:                                               ; preds = %34, %31
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = call i32 @intl_free_custom_error_msg(%struct.TYPE_5__* %39)
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i8*, i8** %5, align 8
  %48 = call i8* @estrdup(i8* %47)
  br label %51

49:                                               ; preds = %38
  %50 = load i8*, i8** %5, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i8* [ %48, %46 ], [ %50, %49 ]
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %37, %9
  ret void
}

declare dso_local i64 @INTL_G(i32) #1

declare dso_local i32 @php_error_docref(i32*, i64, i8*, i8*) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @intl_g_error_get(...) #1

declare dso_local i32 @intl_free_custom_error_msg(%struct.TYPE_5__*) #1

declare dso_local i8* @estrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
