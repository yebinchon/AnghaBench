; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dump.c_zend_dump_class_fetch_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dump.c_zend_dump_class_fetch_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZEND_FETCH_CLASS_MASK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c" (self)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" (parent)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" (static)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" (auto)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" (interface)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" (trait)\00", align 1
@ZEND_FETCH_CLASS_NO_AUTOLOAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c" (no-autolod)\00", align 1
@ZEND_FETCH_CLASS_SILENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c" (silent)\00", align 1
@ZEND_FETCH_CLASS_EXCEPTION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c" (exception)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @zend_dump_class_fetch_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_dump_class_fetch_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @ZEND_FETCH_CLASS_MASK, align 4
  %5 = and i32 %3, %4
  switch i32 %5, label %24 [
    i32 130, label %6
    i32 131, label %9
    i32 129, label %12
    i32 133, label %15
    i32 132, label %18
    i32 128, label %21
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %24

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %24

24:                                               ; preds = %1, %21, %18, %15, %12, %9, %6
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @ZEND_FETCH_CLASS_NO_AUTOLOAD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @ZEND_FETCH_CLASS_SILENT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @ZEND_FETCH_CLASS_EXCEPTION, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
