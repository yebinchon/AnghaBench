; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_abstract_declarator.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_abstract_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32 }

@ZEND_FFI_DCL_CHAR = common dso_local global i32 0, align 4
@YY__STAR = common dso_local global i32 0, align 4
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
@YY__LBRACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*)* @parse_abstract_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_abstract_declarator(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %8 = load i32, i32* @ZEND_FFI_DCL_CHAR, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @YY__STAR, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = call i32 @parse_pointer(i32 %19, %struct.TYPE_9__* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @YY__LPAREN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @synpred_2(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = call i32 (...) @get_sym()
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
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
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @parse_attributes(i32 %44, %struct.TYPE_9__* %5)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %30
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @parse_abstract_declarator(i32 %47, %struct.TYPE_9__* %5)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @YY__RPAREN, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %46
  %56 = call i32 (...) @get_sym()
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %26, %22
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @YY__LBRACK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @YY__LPAREN, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = call i32 @parse_array_or_function_declarators(i32 %66, %struct.TYPE_9__* %67, %struct.TYPE_9__* %5)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = call i32 @zend_ffi_nested_declaration(%struct.TYPE_9__* %73, %struct.TYPE_9__* %5)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @parse_pointer(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @synpred_2(i32) #1

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
