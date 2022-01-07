; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_strfilter_convert_create.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_strfilter_convert_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_ARRAY = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"stream filter (%s): invalid filter parameter\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"base64-encode\00", align 1
@PHP_CONV_BASE64_ENCODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"base64-decode\00", align 1
@PHP_CONV_BASE64_DECODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"quoted-printable-encode\00", align 1
@PHP_CONV_QPRINT_ENCODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"quoted-printable-decode\00", align 1
@PHP_CONV_QPRINT_DECODE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@strfilter_convert_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32)* @strfilter_convert_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @strfilter_convert_create(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @Z_TYPE_P(i32* %15)
  %17 = load i64, i64* @IS_ARRAY, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @E_WARNING, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @php_error_docref(i32* null, i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32* null, i32** %4, align 8
  br label %89

23:                                               ; preds = %14, %3
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 46)
  store i8* %25, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  br label %89

28:                                               ; preds = %23
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32* @pemalloc(i32 4, i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @strcasecmp(i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @PHP_CONV_BASE64_ENCODE, align 4
  store i32 %37, i32* %11, align 4
  br label %59

38:                                               ; preds = %28
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @strcasecmp(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @PHP_CONV_BASE64_DECODE, align 4
  store i32 %43, i32* %11, align 4
  br label %58

44:                                               ; preds = %38
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @strcasecmp(i8* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @PHP_CONV_QPRINT_ENCODE, align 4
  store i32 %49, i32* %11, align 4
  br label %57

50:                                               ; preds = %44
  %51 = load i8*, i8** %10, align 8
  %52 = call i64 @strcasecmp(i8* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @PHP_CONV_QPRINT_DECODE, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %54, %50
  br label %57

57:                                               ; preds = %56, %48
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32*, i32** %6, align 8
  %66 = call i32* @Z_ARRVAL_P(i32* %65)
  br label %68

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32* [ %66, %64 ], [ null, %67 ]
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @php_convert_filter_ctor(i32* %60, i32 %61, i32* %69, i8* %70, i32 %71)
  %73 = load i64, i64* @SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %80

76:                                               ; preds = %68
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32* @php_stream_filter_alloc(i32* @strfilter_convert_ops, i32* %77, i32 %78)
  store i32* %79, i32** %9, align 8
  br label %80

80:                                               ; preds = %76, %75
  %81 = load i32*, i32** %9, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @pefree(i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %80
  %88 = load i32*, i32** %9, align 8
  store i32* %88, i32** %4, align 8
  br label %89

89:                                               ; preds = %87, %27, %19
  %90 = load i32*, i32** %4, align 8
  ret i32* %90
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @pemalloc(i32, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @php_convert_filter_ctor(i32*, i32, i32*, i8*, i32) #1

declare dso_local i32* @Z_ARRVAL_P(i32*) #1

declare dso_local i32* @php_stream_filter_alloc(i32*, i32*, i32) #1

declare dso_local i32 @pefree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
