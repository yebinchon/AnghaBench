; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_check_magic_method_attr.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_check_magic_method_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZEND_ACC_PUBLIC = common dso_local global i32 0, align 4
@ZEND_ACC_STATIC = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"The magic method %s() must have public visibility and be static\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"The magic method %s() must have public visibility and cannot be static\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64)* @zend_check_magic_method_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_check_magic_method_attr(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ZEND_ACC_PUBLIC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14, %9
  %20 = load i32, i32* @E_WARNING, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @zend_error(i32 %20, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %14
  br label %39

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ZEND_ACC_PUBLIC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29, %24
  %35 = load i32, i32* @E_WARNING, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @zend_error(i32 %35, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %34, %29
  br label %39

39:                                               ; preds = %38, %23
  ret void
}

declare dso_local i32 @zend_error(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
