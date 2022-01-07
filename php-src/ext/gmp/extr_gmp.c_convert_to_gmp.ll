; ModuleID = '/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_convert_to_gmp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_convert_to_gmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Unable to convert variable to GMP - string is not an integer\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to convert variable to GMP - wrong type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @convert_to_gmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_gmp(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @Z_TYPE_P(i32* %11)
  switch i32 %12, label %92 [
    i32 130, label %13
    i32 131, label %13
    i32 128, label %13
    i32 129, label %19
  ]

13:                                               ; preds = %3, %3, %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @zval_get_long(i32* %15)
  %17 = call i32 @mpz_set_si(i32 %14, i32 %16)
  %18 = load i32, i32* @SUCCESS, align 4
  store i32 %18, i32* %4, align 4
  br label %96

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i8* @Z_STRVAL_P(i32* %20)
  store i8* %21, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @Z_STRLEN_P(i32* %22)
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %71

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 48
  br i1 %30, label %31, label %71

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %37, label %50

37:                                               ; preds = %34, %31
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 120
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 88
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %37
  store i32 16, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %70

50:                                               ; preds = %43, %34
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %69

56:                                               ; preds = %53, %50
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 98
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %56
  store i32 2, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %62, %53
  br label %70

70:                                               ; preds = %69, %49
  br label %71

71:                                               ; preds = %70, %25, %19
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  br label %80

78:                                               ; preds = %71
  %79 = load i8*, i8** %8, align 8
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi i8* [ %77, %75 ], [ %79, %78 ]
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @mpz_set_str(i32 %72, i8* %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 -1, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @E_WARNING, align 4
  %88 = call i32 @php_error_docref(i32* null, i32 %87, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %89 = load i32, i32* @FAILURE, align 4
  store i32 %89, i32* %4, align 4
  br label %96

90:                                               ; preds = %80
  %91 = load i32, i32* @SUCCESS, align 4
  store i32 %91, i32* %4, align 4
  br label %96

92:                                               ; preds = %3
  %93 = load i32, i32* @E_WARNING, align 4
  %94 = call i32 @php_error_docref(i32* null, i32 %93, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @FAILURE, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %90, %86, %13
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @mpz_set_si(i32, i32) #1

declare dso_local i32 @zval_get_long(i32*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @mpz_set_str(i32, i8*, i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
