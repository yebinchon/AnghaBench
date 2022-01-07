; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_struct_declarator.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_struct_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY__STAR = common dso_local global i32 0, align 4
@YY_ID = common dso_local global i32 0, align 4
@YY__LPAREN = common dso_local global i32 0, align 4
@YY__COLON = common dso_local global i32 0, align 4
@YY___ATTRIBUTE = common dso_local global i32 0, align 4
@YY___ATTRIBUTE__ = common dso_local global i32 0, align 4
@YY___DECLSPEC = common dso_local global i32 0, align 4
@YY___CDECL = common dso_local global i32 0, align 4
@YY___STDCALL = common dso_local global i32 0, align 4
@YY___FASTCALL = common dso_local global i32 0, align 4
@YY___THISCALL = common dso_local global i32 0, align 4
@YY___VECTORCALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\00\00\00\00\00\00\F0\0F\00\00\00\00\00\00", align 1
@YY__COMMA = common dso_local global i32 0, align 4
@YY__SEMICOLON = common dso_local global i32 0, align 4
@YY__RBRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"`\00\00\00\00\10\F0\0F\00\00\00\00\00\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @parse_struct_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_struct_declarator(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @YY__STAR, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @YY_ID, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @YY__LPAREN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %95

21:                                               ; preds = %17, %13, %3
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @parse_declarator(i32 %22, i32* %23, i8** %7, i64* %8)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @YY__COLON, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %21
  %29 = call i32 (...) @get_sym()
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @parse_constant_expression(i32 %30, i32* %9)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @YY___ATTRIBUTE, align 4
  %34 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %35 = load i32, i32* @YY___DECLSPEC, align 4
  %36 = load i32, i32* @YY___CDECL, align 4
  %37 = load i32, i32* @YY___STDCALL, align 4
  %38 = load i32, i32* @YY___FASTCALL, align 4
  %39 = load i32, i32* @YY___THISCALL, align 4
  %40 = load i32, i32* @YY___VECTORCALL, align 4
  %41 = call i64 @YY_IN_SET(i32 %32, i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = load i32, i32* %4, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @parse_attributes(i32 %44, i32* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %28
  %48 = load i32*, i32** %5, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @zend_ffi_add_bit_field(i32* %48, i8* %49, i64 %50, i32* %51, i32* %9)
  br label %94

53:                                               ; preds = %21
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @YY___ATTRIBUTE, align 4
  %56 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %57 = load i32, i32* @YY___DECLSPEC, align 4
  %58 = load i32, i32* @YY___CDECL, align 4
  %59 = load i32, i32* @YY___STDCALL, align 4
  %60 = load i32, i32* @YY___FASTCALL, align 4
  %61 = load i32, i32* @YY___THISCALL, align 4
  %62 = load i32, i32* @YY___VECTORCALL, align 4
  %63 = load i32, i32* @YY__COMMA, align 4
  %64 = load i32, i32* @YY__SEMICOLON, align 4
  %65 = load i32, i32* @YY__RBRACE, align 4
  %66 = call i64 @YY_IN_SET(i32 %54, i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %53
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @YY___ATTRIBUTE, align 4
  %71 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %72 = load i32, i32* @YY___DECLSPEC, align 4
  %73 = load i32, i32* @YY___CDECL, align 4
  %74 = load i32, i32* @YY___STDCALL, align 4
  %75 = load i32, i32* @YY___FASTCALL, align 4
  %76 = load i32, i32* @YY___THISCALL, align 4
  %77 = load i32, i32* @YY___VECTORCALL, align 4
  %78 = call i64 @YY_IN_SET(i32 %69, i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %68
  %81 = load i32, i32* %4, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @parse_attributes(i32 %81, i32* %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %68
  %85 = load i32*, i32** %5, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @zend_ffi_add_field(i32* %85, i8* %86, i64 %87, i32* %88)
  br label %93

90:                                               ; preds = %53
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %90, %84
  br label %94

94:                                               ; preds = %93, %47
  br label %110

95:                                               ; preds = %17
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @YY__COLON, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = call i32 (...) @get_sym()
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @parse_constant_expression(i32 %101, i32* %9)
  store i32 %102, i32* %4, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @zend_ffi_add_bit_field(i32* %103, i8* null, i64 0, i32* %104, i32* %9)
  br label %109

106:                                              ; preds = %95
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %106, %99
  br label %110

110:                                              ; preds = %109, %94
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @parse_declarator(i32, i32*, i8**, i64*) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @parse_constant_expression(i32, i32*) #1

declare dso_local i64 @YY_IN_SET(i32, i32, i8*) #1

declare dso_local i32 @parse_attributes(i32, i32*) #1

declare dso_local i32 @zend_ffi_add_bit_field(i32*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @zend_ffi_add_field(i32*, i8*, i64, i32*) #1

declare dso_local i32 @yy_error_sym(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
