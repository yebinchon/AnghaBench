; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_hexbin.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_hexbin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@to_xml_hexbin.hexconvtab = internal global [17 x i8] c"0123456789ABCDEF\00", align 16
@.str = private unnamed_addr constant [6 x i8] c"BOGUS\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@SOAP_ENCODED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @to_xml_hexbin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_xml_hexbin(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = call i32 @BAD_CAST(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @xmlNewNode(i32* null, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @xmlAddChild(i32 %17, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @FIND_ZVAL_NULL(i32* %20, i32 %21, i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @Z_TYPE_P(i32* %24)
  %26 = load i64, i64* @IS_STRING, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @zval_get_string_func(i32* %29)
  %31 = call i32 @ZVAL_STR(i32* %12, i32 %30)
  store i32* %12, i32** %6, align 8
  br label %32

32:                                               ; preds = %28, %4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @Z_STRLEN_P(i32* %33)
  %35 = mul nsw i32 %34, 2
  %36 = call i64 @safe_emalloc(i32 %35, i32 1, i32 1)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %11, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %38

38:                                               ; preds = %75, %32
  %39 = load i64, i64* %13, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @Z_STRLEN_P(i32* %40)
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  %46 = call i64* @Z_STRVAL_P(i32* %45)
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i8
  %51 = zext i8 %50 to i32
  %52 = ashr i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [17 x i8], [17 x i8]* @to_xml_hexbin.hexconvtab, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %11, align 8
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %14, align 8
  %59 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 %55, i8* %59, align 1
  %60 = load i32*, i32** %6, align 8
  %61 = call i64* @Z_STRVAL_P(i32* %60)
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i8
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 15
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [17 x i8], [17 x i8]* @to_xml_hexbin.hexconvtab, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %11, align 8
  %72 = load i64, i64* %14, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %14, align 8
  %74 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 %70, i8* %74, align 1
  br label %75

75:                                               ; preds = %44
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %13, align 8
  br label %38

78:                                               ; preds = %38
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %14, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %11, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @Z_STRLEN_P(i32* %83)
  %85 = mul nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 1
  %88 = trunc i64 %87 to i32
  %89 = call i32 @xmlNewTextLen(i8* %82, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @xmlAddChild(i32 %90, i32 %91)
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @efree(i8* %93)
  %95 = load i32*, i32** %6, align 8
  %96 = icmp eq i32* %95, %12
  br i1 %96, label %97, label %99

97:                                               ; preds = %78
  %98 = call i32 @zval_ptr_dtor_str(i32* %12)
  br label %99

99:                                               ; preds = %97, %78
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @SOAP_ENCODED, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @set_ns_and_type(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i32, i32* %9, align 4
  ret i32 %108
}

declare dso_local i32 @xmlNewNode(i32*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @xmlAddChild(i32, i32) #1

declare dso_local i32 @FIND_ZVAL_NULL(i32*, i32, i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @ZVAL_STR(i32*, i32) #1

declare dso_local i32 @zval_get_string_func(i32*) #1

declare dso_local i64 @safe_emalloc(i32, i32, i32) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i64* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @xmlNewTextLen(i8*, i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @zval_ptr_dtor_str(i32*) #1

declare dso_local i32 @set_ns_and_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
