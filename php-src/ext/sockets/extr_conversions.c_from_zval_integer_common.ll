; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_from_zval_integer_common.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_from_zval_integer_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [91 x i8] c"expected an integer, but got a non numeric string (possibly from a converted object): '%s'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"expected an integer, either of a PHP integer type or of a convertible type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @from_zval_integer_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @from_zval_integer_common(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = call i32 @ZVAL_NULL(i32* %6)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @Z_TYPE_P(i32* %10)
  %12 = icmp ne i32 %11, 130
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @ZVAL_COPY(i32* %6, i32* %14)
  store i32* %6, i32** %3, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @Z_TYPE_P(i32* %17)
  switch i32 %18, label %52 [
    i32 130, label %19
    i32 131, label %23
    i32 129, label %26
    i32 128, label %26
  ]

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %43, %24, %19
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @Z_LVAL_P(i32* %21)
  store i32 %22, i32* %5, align 4
  br label %55

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %39, %23
  %25 = call i32 @convert_to_long(i32* %6)
  br label %20

26:                                               ; preds = %16, %16
  %27 = call i32 @try_convert_to_string(i32* %6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %55

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @Z_STRVAL(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @Z_STRLEN(i32 %36)
  %38 = call i32 @is_numeric_string(i32 %35, i32 %37, i32* %7, double* %8, i32 0)
  switch i32 %38, label %47 [
    i32 131, label %39
    i32 130, label %43
  ]

39:                                               ; preds = %33
  %40 = call i32 @zval_ptr_dtor_str(i32* %6)
  %41 = load double, double* %8, align 8
  %42 = call i32 @ZVAL_DOUBLE(i32* %6, double %41)
  br label %24

43:                                               ; preds = %33
  %44 = call i32 @zval_ptr_dtor_str(i32* %6)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ZVAL_LONG(i32* %6, i32 %45)
  br label %20

47:                                               ; preds = %33
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = call i8* @Z_STRVAL_P(i32* %49)
  %51 = call i32 @do_from_zval_err(%struct.TYPE_6__* %48, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %55

52:                                               ; preds = %16
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = call i32 @do_from_zval_err(%struct.TYPE_6__* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47, %29, %20
  %56 = call i32 @zval_ptr_dtor(i32* %6)
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32 @convert_to_long(i32*) #1

declare dso_local i32 @try_convert_to_string(i32*) #1

declare dso_local i32 @is_numeric_string(i32, i32, i32*, double*, i32) #1

declare dso_local i32 @Z_STRVAL(i32) #1

declare dso_local i32 @Z_STRLEN(i32) #1

declare dso_local i32 @zval_ptr_dtor_str(i32*) #1

declare dso_local i32 @ZVAL_DOUBLE(i32*, double) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @do_from_zval_err(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
