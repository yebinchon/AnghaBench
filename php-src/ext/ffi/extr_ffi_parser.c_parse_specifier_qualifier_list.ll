; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_specifier_qualifier_list.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_specifier_qualifier_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY___EXTENSION__ = common dso_local global i32 0, align 4
@YY_VOID = common dso_local global i32 0, align 4
@YY_CHAR = common dso_local global i32 0, align 4
@YY_SHORT = common dso_local global i32 0, align 4
@YY_INT = common dso_local global i32 0, align 4
@YY_LONG = common dso_local global i32 0, align 4
@YY_FLOAT = common dso_local global i32 0, align 4
@YY_DOUBLE = common dso_local global i32 0, align 4
@YY_SIGNED = common dso_local global i32 0, align 4
@YY_UNSIGNED = common dso_local global i32 0, align 4
@YY__BOOL = common dso_local global i32 0, align 4
@YY__COMPLEX = common dso_local global i32 0, align 4
@YY_COMPLEX = common dso_local global i32 0, align 4
@YY___COMPLEX = common dso_local global i32 0, align 4
@YY___COMPLEX__ = common dso_local global i32 0, align 4
@YY_STRUCT = common dso_local global i32 0, align 4
@YY_UNION = common dso_local global i32 0, align 4
@YY_ENUM = common dso_local global i32 0, align 4
@YY_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\00\00\00\F8\FFG\00\00\00\00\00\02\00\00", align 1
@YY_CONST = common dso_local global i32 0, align 4
@YY___CONST = common dso_local global i32 0, align 4
@YY___CONST__ = common dso_local global i32 0, align 4
@YY_RESTRICT = common dso_local global i32 0, align 4
@YY___RESTRICT = common dso_local global i32 0, align 4
@YY___RESTRICT__ = common dso_local global i32 0, align 4
@YY_VOLATILE = common dso_local global i32 0, align 4
@YY___VOLATILE = common dso_local global i32 0, align 4
@YY___VOLATILE__ = common dso_local global i32 0, align 4
@YY__ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\00\00\FE\07\00\00\00\00\00\00\00\00\00\00", align 1
@YY___ATTRIBUTE = common dso_local global i32 0, align 4
@YY___ATTRIBUTE__ = common dso_local global i32 0, align 4
@YY___DECLSPEC = common dso_local global i32 0, align 4
@YY___CDECL = common dso_local global i32 0, align 4
@YY___STDCALL = common dso_local global i32 0, align 4
@YY___FASTCALL = common dso_local global i32 0, align 4
@YY___THISCALL = common dso_local global i32 0, align 4
@YY___VECTORCALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"\00\00\00\00\00\00\F0\0F\00\00\00\00\00\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\00\00\FE\FF\FFG\F0\0F\00\00\00\02\00\00", align 1
@yy_text = common dso_local global i64 0, align 8
@yy_pos = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @parse_specifier_qualifier_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_specifier_qualifier_list(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @YY___EXTENSION__, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (...) @get_sym()
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %8, %2
  br label %11

11:                                               ; preds = %131, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @YY_VOID, align 4
  %14 = load i32, i32* @YY_CHAR, align 4
  %15 = load i32, i32* @YY_SHORT, align 4
  %16 = load i32, i32* @YY_INT, align 4
  %17 = load i32, i32* @YY_LONG, align 4
  %18 = load i32, i32* @YY_FLOAT, align 4
  %19 = load i32, i32* @YY_DOUBLE, align 4
  %20 = load i32, i32* @YY_SIGNED, align 4
  %21 = load i32, i32* @YY_UNSIGNED, align 4
  %22 = load i32, i32* @YY__BOOL, align 4
  %23 = load i32, i32* @YY__COMPLEX, align 4
  %24 = load i32, i32* @YY_COMPLEX, align 4
  %25 = load i32, i32* @YY___COMPLEX, align 4
  %26 = load i32, i32* @YY___COMPLEX__, align 4
  %27 = load i32, i32* @YY_STRUCT, align 4
  %28 = load i32, i32* @YY_UNION, align 4
  %29 = load i32, i32* @YY_ENUM, align 4
  %30 = load i32, i32* @YY_ID, align 4
  %31 = call i64 @YY_IN_SET(i32 %12, i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %11
  %34 = load i32, i32* %3, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @parse_type_specifier(i32 %34, i32* %35)
  store i32 %36, i32* %3, align 4
  br label %76

37:                                               ; preds = %11
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @YY_CONST, align 4
  %40 = load i32, i32* @YY___CONST, align 4
  %41 = load i32, i32* @YY___CONST__, align 4
  %42 = load i32, i32* @YY_RESTRICT, align 4
  %43 = load i32, i32* @YY___RESTRICT, align 4
  %44 = load i32, i32* @YY___RESTRICT__, align 4
  %45 = load i32, i32* @YY_VOLATILE, align 4
  %46 = load i32, i32* @YY___VOLATILE, align 4
  %47 = load i32, i32* @YY___VOLATILE__, align 4
  %48 = load i32, i32* @YY__ATOMIC, align 4
  %49 = call i64 @YY_IN_SET(i32 %38, i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %37
  %52 = load i32, i32* %3, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @parse_type_qualifier(i32 %52, i32* %53)
  store i32 %54, i32* %3, align 4
  br label %75

55:                                               ; preds = %37
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @YY___ATTRIBUTE, align 4
  %58 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %59 = load i32, i32* @YY___DECLSPEC, align 4
  %60 = load i32, i32* @YY___CDECL, align 4
  %61 = load i32, i32* @YY___STDCALL, align 4
  %62 = load i32, i32* @YY___FASTCALL, align 4
  %63 = load i32, i32* @YY___THISCALL, align 4
  %64 = load i32, i32* @YY___VECTORCALL, align 4
  %65 = call i64 @YY_IN_SET(i32 %56, i32 %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = load i32, i32* %3, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @parse_attributes(i32 %68, i32* %69)
  store i32 %70, i32* %3, align 4
  br label %74

71:                                               ; preds = %55
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %67
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %75, %33
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @YY_VOID, align 4
  %80 = load i32, i32* @YY_CHAR, align 4
  %81 = load i32, i32* @YY_SHORT, align 4
  %82 = load i32, i32* @YY_INT, align 4
  %83 = load i32, i32* @YY_LONG, align 4
  %84 = load i32, i32* @YY_FLOAT, align 4
  %85 = load i32, i32* @YY_DOUBLE, align 4
  %86 = load i32, i32* @YY_SIGNED, align 4
  %87 = load i32, i32* @YY_UNSIGNED, align 4
  %88 = load i32, i32* @YY__BOOL, align 4
  %89 = load i32, i32* @YY__COMPLEX, align 4
  %90 = load i32, i32* @YY_COMPLEX, align 4
  %91 = load i32, i32* @YY___COMPLEX, align 4
  %92 = load i32, i32* @YY___COMPLEX__, align 4
  %93 = load i32, i32* @YY_STRUCT, align 4
  %94 = load i32, i32* @YY_UNION, align 4
  %95 = load i32, i32* @YY_ENUM, align 4
  %96 = load i32, i32* @YY_ID, align 4
  %97 = load i32, i32* @YY_CONST, align 4
  %98 = load i32, i32* @YY___CONST, align 4
  %99 = load i32, i32* @YY___CONST__, align 4
  %100 = load i32, i32* @YY_RESTRICT, align 4
  %101 = load i32, i32* @YY___RESTRICT, align 4
  %102 = load i32, i32* @YY___RESTRICT__, align 4
  %103 = load i32, i32* @YY_VOLATILE, align 4
  %104 = load i32, i32* @YY___VOLATILE, align 4
  %105 = load i32, i32* @YY___VOLATILE__, align 4
  %106 = load i32, i32* @YY__ATOMIC, align 4
  %107 = load i32, i32* @YY___ATTRIBUTE, align 4
  %108 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %109 = load i32, i32* @YY___DECLSPEC, align 4
  %110 = load i32, i32* @YY___CDECL, align 4
  %111 = load i32, i32* @YY___STDCALL, align 4
  %112 = load i32, i32* @YY___FASTCALL, align 4
  %113 = load i32, i32* @YY___THISCALL, align 4
  %114 = load i32, i32* @YY___VECTORCALL, align 4
  %115 = call i64 @YY_IN_SET(i32 %78, i32 %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %77
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @YY_ID, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* @yy_text, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = load i64, i64* @yy_pos, align 8
  %125 = load i64, i64* @yy_text, align 8
  %126 = sub nsw i64 %124, %125
  %127 = call i64 @zend_ffi_is_typedef_name(i8* %123, i64 %126)
  %128 = icmp ne i64 %127, 0
  br label %129

129:                                              ; preds = %121, %117
  %130 = phi i1 [ true, %117 ], [ %128, %121 ]
  br label %131

131:                                              ; preds = %129, %77
  %132 = phi i1 [ false, %77 ], [ %130, %129 ]
  br i1 %132, label %11, label %133

133:                                              ; preds = %131
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @get_sym(...) #1

declare dso_local i64 @YY_IN_SET(i32, i32, i8*) #1

declare dso_local i32 @parse_type_specifier(i32, i32*) #1

declare dso_local i32 @parse_type_qualifier(i32, i32*) #1

declare dso_local i32 @parse_attributes(i32, i32*) #1

declare dso_local i32 @yy_error_sym(i8*, i32) #1

declare dso_local i64 @zend_ffi_is_typedef_name(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
