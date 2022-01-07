; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_enum_specifier.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_enum_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@YY_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"'enum' expected, got\00", align 1
@ZEND_FFI_DCL_ENUM = common dso_local global i32 0, align 4
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
@YY__RBRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"'}' expected, got\00", align 1
@YY_TYPEDEF = common dso_local global i32 0, align 4
@YY_EXTERN = common dso_local global i32 0, align 4
@YY_STATIC = common dso_local global i32 0, align 4
@YY_AUTO = common dso_local global i32 0, align 4
@YY_REGISTER = common dso_local global i32 0, align 4
@YY_INLINE = common dso_local global i32 0, align 4
@YY___INLINE = common dso_local global i32 0, align 4
@YY___INLINE__ = common dso_local global i32 0, align 4
@YY__NORETURN = common dso_local global i32 0, align 4
@YY__ALIGNAS = common dso_local global i32 0, align 4
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
@YY__STAR = common dso_local global i32 0, align 4
@YY__LPAREN = common dso_local global i32 0, align 4
@YY__SEMICOLON = common dso_local global i32 0, align 4
@YY__COLON = common dso_local global i32 0, align 4
@YY__LBRACK = common dso_local global i32 0, align 4
@YY__COMMA = common dso_local global i32 0, align 4
@YY__RPAREN = common dso_local global i32 0, align 4
@YY_EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"\F9\FF\FF\FF\FFw\F3\0F\00\00\00\02\00\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*)* @parse_enum_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_enum_specifier(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @YY_ENUM, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @yy_error_sym(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = call i32 (...) @get_sym()
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @ZEND_FFI_DCL_ENUM, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @YY___ATTRIBUTE, align 4
  %22 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %23 = load i32, i32* @YY___DECLSPEC, align 4
  %24 = load i32, i32* @YY___CDECL, align 4
  %25 = load i32, i32* @YY___STDCALL, align 4
  %26 = load i32, i32* @YY___FASTCALL, align 4
  %27 = load i32, i32* @YY___THISCALL, align 4
  %28 = load i32, i32* @YY___VECTORCALL, align 4
  %29 = call i64 @YY_IN_SET(i32 %20, i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %13
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = call i32 @parse_attributes(i32 %32, %struct.TYPE_7__* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %13
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @YY_ID, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %147

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @parse_ID(i32 %40, i8** %5, i64* %6)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @YY__LBRACE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = call i32 @zend_ffi_declare_tag(i8* %46, i64 %47, %struct.TYPE_7__* %48, i32 0)
  %50 = call i32 (...) @get_sym()
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = call i32 @parse_enumerator_list(i32 %51, %struct.TYPE_7__* %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @YY__RBRACE, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %45
  %61 = call i32 (...) @get_sym()
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @YY___ATTRIBUTE, align 4
  %64 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %65 = load i32, i32* @YY___DECLSPEC, align 4
  %66 = load i32, i32* @YY___CDECL, align 4
  %67 = load i32, i32* @YY___STDCALL, align 4
  %68 = load i32, i32* @YY___FASTCALL, align 4
  %69 = load i32, i32* @YY___THISCALL, align 4
  %70 = load i32, i32* @YY___VECTORCALL, align 4
  %71 = call i64 @YY_IN_SET(i32 %62, i32 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = call i32 @parse_attributes(i32 %74, %struct.TYPE_7__* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %60
  br label %146

78:                                               ; preds = %39
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @YY_TYPEDEF, align 4
  %81 = load i32, i32* @YY_EXTERN, align 4
  %82 = load i32, i32* @YY_STATIC, align 4
  %83 = load i32, i32* @YY_AUTO, align 4
  %84 = load i32, i32* @YY_REGISTER, align 4
  %85 = load i32, i32* @YY_INLINE, align 4
  %86 = load i32, i32* @YY___INLINE, align 4
  %87 = load i32, i32* @YY___INLINE__, align 4
  %88 = load i32, i32* @YY__NORETURN, align 4
  %89 = load i32, i32* @YY__ALIGNAS, align 4
  %90 = load i32, i32* @YY___ATTRIBUTE, align 4
  %91 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %92 = load i32, i32* @YY___DECLSPEC, align 4
  %93 = load i32, i32* @YY___CDECL, align 4
  %94 = load i32, i32* @YY___STDCALL, align 4
  %95 = load i32, i32* @YY___FASTCALL, align 4
  %96 = load i32, i32* @YY___THISCALL, align 4
  %97 = load i32, i32* @YY___VECTORCALL, align 4
  %98 = load i32, i32* @YY_CONST, align 4
  %99 = load i32, i32* @YY___CONST, align 4
  %100 = load i32, i32* @YY___CONST__, align 4
  %101 = load i32, i32* @YY_RESTRICT, align 4
  %102 = load i32, i32* @YY___RESTRICT, align 4
  %103 = load i32, i32* @YY___RESTRICT__, align 4
  %104 = load i32, i32* @YY_VOLATILE, align 4
  %105 = load i32, i32* @YY___VOLATILE, align 4
  %106 = load i32, i32* @YY___VOLATILE__, align 4
  %107 = load i32, i32* @YY__ATOMIC, align 4
  %108 = load i32, i32* @YY_VOID, align 4
  %109 = load i32, i32* @YY_CHAR, align 4
  %110 = load i32, i32* @YY_SHORT, align 4
  %111 = load i32, i32* @YY_INT, align 4
  %112 = load i32, i32* @YY_LONG, align 4
  %113 = load i32, i32* @YY_FLOAT, align 4
  %114 = load i32, i32* @YY_DOUBLE, align 4
  %115 = load i32, i32* @YY_SIGNED, align 4
  %116 = load i32, i32* @YY_UNSIGNED, align 4
  %117 = load i32, i32* @YY__BOOL, align 4
  %118 = load i32, i32* @YY__COMPLEX, align 4
  %119 = load i32, i32* @YY_COMPLEX, align 4
  %120 = load i32, i32* @YY___COMPLEX, align 4
  %121 = load i32, i32* @YY___COMPLEX__, align 4
  %122 = load i32, i32* @YY_STRUCT, align 4
  %123 = load i32, i32* @YY_UNION, align 4
  %124 = load i32, i32* @YY_ENUM, align 4
  %125 = load i32, i32* @YY_ID, align 4
  %126 = load i32, i32* @YY__STAR, align 4
  %127 = load i32, i32* @YY__LPAREN, align 4
  %128 = load i32, i32* @YY__SEMICOLON, align 4
  %129 = load i32, i32* @YY__COLON, align 4
  %130 = load i32, i32* @YY__LBRACK, align 4
  %131 = load i32, i32* @YY__RBRACE, align 4
  %132 = load i32, i32* @YY__COMMA, align 4
  %133 = load i32, i32* @YY__RPAREN, align 4
  %134 = load i32, i32* @YY_EOF, align 4
  %135 = call i64 @YY_IN_SET(i32 %79, i32 %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %78
  %138 = load i8*, i8** %5, align 8
  %139 = load i64, i64* %6, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = call i32 @zend_ffi_declare_tag(i8* %138, i64 %139, %struct.TYPE_7__* %140, i32 1)
  br label %145

142:                                              ; preds = %78
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %142, %137
  br label %146

146:                                              ; preds = %145, %77
  br label %186

147:                                              ; preds = %35
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @YY__LBRACE, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %182

151:                                              ; preds = %147
  %152 = call i32 (...) @get_sym()
  store i32 %152, i32* %3, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = call i32 @zend_ffi_make_enum_type(%struct.TYPE_7__* %153)
  %155 = load i32, i32* %3, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = call i32 @parse_enumerator_list(i32 %155, %struct.TYPE_7__* %156)
  store i32 %157, i32* %3, align 4
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* @YY__RBRACE, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %151
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %161, %151
  %165 = call i32 (...) @get_sym()
  store i32 %165, i32* %3, align 4
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @YY___ATTRIBUTE, align 4
  %168 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %169 = load i32, i32* @YY___DECLSPEC, align 4
  %170 = load i32, i32* @YY___CDECL, align 4
  %171 = load i32, i32* @YY___STDCALL, align 4
  %172 = load i32, i32* @YY___FASTCALL, align 4
  %173 = load i32, i32* @YY___THISCALL, align 4
  %174 = load i32, i32* @YY___VECTORCALL, align 4
  %175 = call i64 @YY_IN_SET(i32 %166, i32 %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %164
  %178 = load i32, i32* %3, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %180 = call i32 @parse_attributes(i32 %178, %struct.TYPE_7__* %179)
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %177, %164
  br label %185

182:                                              ; preds = %147
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %182, %181
  br label %186

186:                                              ; preds = %185, %146
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @yy_error_sym(i8*, i32) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i64 @YY_IN_SET(i32, i32, i8*) #1

declare dso_local i32 @parse_attributes(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @parse_ID(i32, i8**, i64*) #1

declare dso_local i32 @zend_ffi_declare_tag(i8*, i64, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @parse_enumerator_list(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @zend_ffi_make_enum_type(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
