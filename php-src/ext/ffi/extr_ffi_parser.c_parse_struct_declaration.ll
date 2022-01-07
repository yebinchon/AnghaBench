; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_struct_declaration.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_struct_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZEND_FFI_ATTR_INIT = common dso_local global i32 0, align 4
@YY__SEMICOLON = common dso_local global i32 0, align 4
@YY__RBRACE = common dso_local global i32 0, align 4
@YY__STAR = common dso_local global i32 0, align 4
@YY_ID = common dso_local global i32 0, align 4
@YY__LPAREN = common dso_local global i32 0, align 4
@YY__COLON = common dso_local global i32 0, align 4
@YY__COMMA = common dso_local global i32 0, align 4
@YY___ATTRIBUTE = common dso_local global i32 0, align 4
@YY___ATTRIBUTE__ = common dso_local global i32 0, align 4
@YY___DECLSPEC = common dso_local global i32 0, align 4
@YY___CDECL = common dso_local global i32 0, align 4
@YY___STDCALL = common dso_local global i32 0, align 4
@YY___FASTCALL = common dso_local global i32 0, align 4
@YY___THISCALL = common dso_local global i32 0, align 4
@YY___VECTORCALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\00\00\00\00\00\00\F0\0F\00\00\00\00\00\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @parse_struct_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_struct_declaration(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @ZEND_FFI_ATTR_INIT, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @parse_specifier_qualifier_list(i32 %8, i32* %5)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @YY__SEMICOLON, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @YY__RBRACE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @zend_ffi_add_anonymous_field(i32* %18, i32* %5)
  br label %70

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @YY__STAR, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @YY_ID, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @YY__LPAREN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @YY__COLON, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %32, %28, %24, %20
  %37 = load i32, i32* %3, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @parse_struct_declarator(i32 %37, i32* %38, i32* %5)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %61, %36
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @YY__COMMA, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = call i32 (...) @get_sym()
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @YY___ATTRIBUTE, align 4
  %49 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %50 = load i32, i32* @YY___DECLSPEC, align 4
  %51 = load i32, i32* @YY___CDECL, align 4
  %52 = load i32, i32* @YY___STDCALL, align 4
  %53 = load i32, i32* @YY___FASTCALL, align 4
  %54 = load i32, i32* @YY___THISCALL, align 4
  %55 = load i32, i32* @YY___VECTORCALL, align 4
  %56 = call i64 @YY_IN_SET(i32 %47, i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @parse_attributes(i32 %59, i32* %6)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %44
  %62 = load i32, i32* %3, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @parse_struct_declarator(i32 %62, i32* %63, i32* %6)
  store i32 %64, i32* %3, align 4
  br label %40

65:                                               ; preds = %40
  br label %69

66:                                               ; preds = %32
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %65
  br label %70

70:                                               ; preds = %69, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @parse_specifier_qualifier_list(i32, i32*) #1

declare dso_local i32 @zend_ffi_add_anonymous_field(i32*, i32*) #1

declare dso_local i32 @parse_struct_declarator(i32, i32*, i32*) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i64 @YY_IN_SET(i32, i32, i8*) #1

declare dso_local i32 @parse_attributes(i32, i32*) #1

declare dso_local i32 @yy_error_sym(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
