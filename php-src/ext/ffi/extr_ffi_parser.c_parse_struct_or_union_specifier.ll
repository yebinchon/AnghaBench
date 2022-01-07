; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_struct_or_union_specifier.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_struct_or_union_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@YY_STRUCT = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_STRUCT = common dso_local global i32 0, align 4
@YY_UNION = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_UNION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@YY___ATTRIBUTE = common dso_local global i32 0, align 4
@YY___ATTRIBUTE__ = common dso_local global i32 0, align 4
@YY___DECLSPEC = common dso_local global i32 0, align 4
@YY___CDECL = common dso_local global i32 0, align 4
@YY___STDCALL = common dso_local global i32 0, align 4
@YY___FASTCALL = common dso_local global i32 0, align 4
@YY___THISCALL = common dso_local global i32 0, align 4
@YY___VECTORCALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\00\00\00\00\00\00\F0\0F\00\00\00\00\00\00", align 1
@YY_ID = common dso_local global i32 0, align 4
@YY__LBRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*)* @parse_struct_or_union_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_struct_or_union_specifier(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @YY_STRUCT, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = call i32 (...) @get_sym()
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @ZEND_FFI_DCL_STRUCT, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @YY_UNION, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = call i32 (...) @get_sym()
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @ZEND_FFI_DCL_UNION, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %31

28:                                               ; preds = %17
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %21
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @YY___ATTRIBUTE, align 4
  %35 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %36 = load i32, i32* @YY___DECLSPEC, align 4
  %37 = load i32, i32* @YY___CDECL, align 4
  %38 = load i32, i32* @YY___STDCALL, align 4
  %39 = load i32, i32* @YY___FASTCALL, align 4
  %40 = load i32, i32* @YY___THISCALL, align 4
  %41 = load i32, i32* @YY___VECTORCALL, align 4
  %42 = call i64 @YY_IN_SET(i32 %33, i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = call i32 @parse_attributes(i32 %45, %struct.TYPE_7__* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %32
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @YY_ID, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @parse_ID(i32 %53, i8** %5, i64* %6)
  store i32 %54, i32* %3, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = call i32 @zend_ffi_declare_tag(i8* %55, i64 %56, %struct.TYPE_7__* %57, i32 1)
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @YY__LBRACE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = call i32 @parse_struct_contents(i32 %63, %struct.TYPE_7__* %64)
  store i32 %65, i32* %3, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = call i32 @zend_ffi_declare_tag(i8* %66, i64 %67, %struct.TYPE_7__* %68, i32 0)
  br label %70

70:                                               ; preds = %62, %52
  br label %85

71:                                               ; preds = %48
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @YY__LBRACE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = call i32 @zend_ffi_make_struct_type(%struct.TYPE_7__* %76)
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = call i32 @parse_struct_contents(i32 %78, %struct.TYPE_7__* %79)
  store i32 %80, i32* %3, align 4
  br label %84

81:                                               ; preds = %71
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %75
  br label %85

85:                                               ; preds = %84, %70
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @yy_error_sym(i8*, i32) #1

declare dso_local i64 @YY_IN_SET(i32, i32, i8*) #1

declare dso_local i32 @parse_attributes(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @parse_ID(i32, i8**, i64*) #1

declare dso_local i32 @zend_ffi_declare_tag(i8*, i64, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @parse_struct_contents(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @zend_ffi_make_struct_type(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
