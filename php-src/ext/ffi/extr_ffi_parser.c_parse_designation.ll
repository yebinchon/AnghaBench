; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_designation.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_designation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY__LBRACK = common dso_local global i32 0, align 4
@YY__RBRACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"']' expected, got\00", align 1
@YY__POINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@YY__EQUAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"'=' expected, got\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @parse_designation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_designation(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %6

6:                                                ; preds = %43, %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @YY__LBRACK, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = call i32 (...) @get_sym()
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @parse_constant_expression(i32 %12, i32* %5)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @YY__RBRACK, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %10
  %21 = call i32 (...) @get_sym()
  store i32 %21, i32* %2, align 4
  br label %34

22:                                               ; preds = %6
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @YY__POINT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i32 (...) @get_sym()
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @parse_ID(i32 %28, i8** %3, i64* %4)
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %33, %20
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @YY__LBRACK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @YY__POINT, align 4
  %42 = icmp eq i32 %40, %41
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i1 [ true, %35 ], [ %42, %39 ]
  br i1 %44, label %6, label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @YY__EQUAL, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = call i32 (...) @get_sym()
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @parse_constant_expression(i32, i32*) #1

declare dso_local i32 @yy_error_sym(i8*, i32) #1

declare dso_local i32 @parse_ID(i32, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
