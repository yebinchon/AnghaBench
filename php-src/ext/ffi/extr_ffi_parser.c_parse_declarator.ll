; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_declarator.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32 }

@ZEND_FFI_DCL_CHAR = common dso_local global i32 0, align 4
@YY__STAR = common dso_local global i32 0, align 4
@YY_ID = common dso_local global i32 0, align 4
@YY__LPAREN = common dso_local global i32 0, align 4
@YY___ATTRIBUTE = common dso_local global i32 0, align 4
@YY___ATTRIBUTE__ = common dso_local global i32 0, align 4
@YY___DECLSPEC = common dso_local global i32 0, align 4
@YY___CDECL = common dso_local global i32 0, align 4
@YY___STDCALL = common dso_local global i32 0, align 4
@YY___FASTCALL = common dso_local global i32 0, align 4
@YY___THISCALL = common dso_local global i32 0, align 4
@YY___VECTORCALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\00\00\00\00\00\00\F0\0F\00\00\00\00\00\00", align 1
@YY__RPAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"')' expected, got\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@YY__LBRACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, i8**, i64*)* @parse_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_declarator(i32 %0, %struct.TYPE_9__* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %12 = load i32, i32* @ZEND_FFI_DCL_CHAR, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @YY__STAR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = call i32 @parse_pointer(i32 %23, %struct.TYPE_9__* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @YY_ID, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i8**, i8*** %7, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = call i32 @parse_ID(i32 %31, i8** %32, i64* %33)
  store i32 %34, i32* %5, align 4
  br label %72

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @YY__LPAREN, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %35
  %40 = call i32 (...) @get_sym()
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @YY___ATTRIBUTE, align 4
  %43 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %44 = load i32, i32* @YY___DECLSPEC, align 4
  %45 = load i32, i32* @YY___CDECL, align 4
  %46 = load i32, i32* @YY___STDCALL, align 4
  %47 = load i32, i32* @YY___FASTCALL, align 4
  %48 = load i32, i32* @YY___THISCALL, align 4
  %49 = load i32, i32* @YY___VECTORCALL, align 4
  %50 = call i64 @YY_IN_SET(i32 %41, i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @parse_attributes(i32 %53, %struct.TYPE_9__* %9)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %39
  %56 = load i32, i32* %5, align 4
  %57 = load i8**, i8*** %7, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = call i32 @parse_declarator(i32 %56, %struct.TYPE_9__* %9, i8** %57, i64* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @YY__RPAREN, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %55
  %67 = call i32 (...) @get_sym()
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %10, align 4
  br label %71

68:                                               ; preds = %35
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %66
  br label %72

72:                                               ; preds = %71, %30
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @YY__LBRACK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @YY__LPAREN, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = call i32 @parse_array_or_function_declarators(i32 %81, %struct.TYPE_9__* %82, %struct.TYPE_9__* %9)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = call i32 @zend_ffi_nested_declaration(%struct.TYPE_9__* %88, %struct.TYPE_9__* %9)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @parse_pointer(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @parse_ID(i32, i8**, i64*) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i64 @YY_IN_SET(i32, i32, i8*) #1

declare dso_local i32 @parse_attributes(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @yy_error_sym(i8*, i32) #1

declare dso_local i32 @parse_array_or_function_declarators(i32, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @zend_ffi_nested_declaration(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
