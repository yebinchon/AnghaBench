; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_attributes.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY__LPAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"'(' expected, got\00", align 1
@YY__COMMA = common dso_local global i32 0, align 4
@YY__RPAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"')' expected, got\00", align 1
@YY_ID = common dso_local global i32 0, align 4
@ZEND_FFI_ABI_CDECL = common dso_local global i32 0, align 4
@ZEND_FFI_ABI_STDCALL = common dso_local global i32 0, align 4
@ZEND_FFI_ABI_FASTCALL = common dso_local global i32 0, align 4
@ZEND_FFI_ABI_THISCALL = common dso_local global i32 0, align 4
@ZEND_FFI_ABI_VECTORCALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\00\00\00\00\00\00\F0\0F\00\00\00\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @parse_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_attributes(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  br label %8

8:                                                ; preds = %132, %2
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %128 [
    i32 135, label %10
    i32 134, label %10
    i32 132, label %57
    i32 133, label %103
    i32 130, label %108
    i32 131, label %113
    i32 129, label %118
    i32 128, label %123
  ]

10:                                               ; preds = %8, %8
  %11 = call i32 (...) @get_sym()
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @YY__LPAREN, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = call i32 (...) @get_sym()
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @YY__LPAREN, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = call i32 (...) @get_sym()
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @parse_attrib(i32 %28, i32* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %35, %26
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @YY__COMMA, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call i32 (...) @get_sym()
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @parse_attrib(i32 %37, i32* %38)
  store i32 %39, i32* %3, align 4
  br label %31

40:                                               ; preds = %31
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @YY__RPAREN, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = call i32 (...) @get_sym()
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @YY__RPAREN, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = call i32 (...) @get_sym()
  store i32 %56, i32* %3, align 4
  br label %131

57:                                               ; preds = %8
  %58 = call i32 (...) @get_sym()
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @YY__LPAREN, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = call i32 (...) @get_sym()
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %90, %65
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @parse_ID(i32 %68, i8** %5, i64* %6)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @YY__LPAREN, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = call i32 (...) @get_sym()
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @parse_assignment_expression(i32 %75, i32* %7)
  store i32 %76, i32* %3, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @zend_ffi_add_msvc_attribute_value(i32* %77, i8* %78, i64 %79, i32* %7)
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @YY__RPAREN, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %73
  %88 = call i32 (...) @get_sym()
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %67
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @YY_ID, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %67, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @YY__RPAREN, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %98, %94
  %102 = call i32 (...) @get_sym()
  store i32 %102, i32* %3, align 4
  br label %131

103:                                              ; preds = %8
  %104 = call i32 (...) @get_sym()
  store i32 %104, i32* %3, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* @ZEND_FFI_ABI_CDECL, align 4
  %107 = call i32 @zend_ffi_set_abi(i32* %105, i32 %106)
  br label %131

108:                                              ; preds = %8
  %109 = call i32 (...) @get_sym()
  store i32 %109, i32* %3, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* @ZEND_FFI_ABI_STDCALL, align 4
  %112 = call i32 @zend_ffi_set_abi(i32* %110, i32 %111)
  br label %131

113:                                              ; preds = %8
  %114 = call i32 (...) @get_sym()
  store i32 %114, i32* %3, align 4
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* @ZEND_FFI_ABI_FASTCALL, align 4
  %117 = call i32 @zend_ffi_set_abi(i32* %115, i32 %116)
  br label %131

118:                                              ; preds = %8
  %119 = call i32 (...) @get_sym()
  store i32 %119, i32* %3, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* @ZEND_FFI_ABI_THISCALL, align 4
  %122 = call i32 @zend_ffi_set_abi(i32* %120, i32 %121)
  br label %131

123:                                              ; preds = %8
  %124 = call i32 (...) @get_sym()
  store i32 %124, i32* %3, align 4
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* @ZEND_FFI_ABI_VECTORCALL, align 4
  %127 = call i32 @zend_ffi_set_abi(i32* %125, i32 %126)
  br label %131

128:                                              ; preds = %8
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %128, %123, %118, %113, %108, %103, %101, %55
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %3, align 4
  %134 = call i64 @YY_IN_SET(i32 %133, i32 128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %8, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @yy_error_sym(i8*, i32) #1

declare dso_local i32 @parse_attrib(i32, i32*) #1

declare dso_local i32 @parse_ID(i32, i8**, i64*) #1

declare dso_local i32 @parse_assignment_expression(i32, i32*) #1

declare dso_local i32 @zend_ffi_add_msvc_attribute_value(i32*, i8*, i64, i32*) #1

declare dso_local i32 @zend_ffi_set_abi(i32*, i32) #1

declare dso_local i64 @YY_IN_SET(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
