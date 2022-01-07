; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_struct_contents.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_struct_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY__LBRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"'{' expected, got\00", align 1
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
@YY___ATTRIBUTE = common dso_local global i32 0, align 4
@YY___ATTRIBUTE__ = common dso_local global i32 0, align 4
@YY___DECLSPEC = common dso_local global i32 0, align 4
@YY___CDECL = common dso_local global i32 0, align 4
@YY___STDCALL = common dso_local global i32 0, align 4
@YY___FASTCALL = common dso_local global i32 0, align 4
@YY___THISCALL = common dso_local global i32 0, align 4
@YY___VECTORCALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\02\00\FE\FF\FFG\F0\0F\00\00\00\02\00\00", align 1
@yy_pos = common dso_local global i8* null, align 8
@yy_text = common dso_local global i8* null, align 8
@yy_line = common dso_local global i32 0, align 4
@YY__SEMICOLON = common dso_local global i32 0, align 4
@YY__RBRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"'}' expected, got\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\00\00\00\00\00\00\F0\0F\00\00\00\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @parse_struct_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_struct_contents(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @YY__LBRACE, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = call i32 (...) @get_sym()
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @YY___EXTENSION__, align 4
  %20 = load i32, i32* @YY_VOID, align 4
  %21 = load i32, i32* @YY_CHAR, align 4
  %22 = load i32, i32* @YY_SHORT, align 4
  %23 = load i32, i32* @YY_INT, align 4
  %24 = load i32, i32* @YY_LONG, align 4
  %25 = load i32, i32* @YY_FLOAT, align 4
  %26 = load i32, i32* @YY_DOUBLE, align 4
  %27 = load i32, i32* @YY_SIGNED, align 4
  %28 = load i32, i32* @YY_UNSIGNED, align 4
  %29 = load i32, i32* @YY__BOOL, align 4
  %30 = load i32, i32* @YY__COMPLEX, align 4
  %31 = load i32, i32* @YY_COMPLEX, align 4
  %32 = load i32, i32* @YY___COMPLEX, align 4
  %33 = load i32, i32* @YY___COMPLEX__, align 4
  %34 = load i32, i32* @YY_STRUCT, align 4
  %35 = load i32, i32* @YY_UNION, align 4
  %36 = load i32, i32* @YY_ENUM, align 4
  %37 = load i32, i32* @YY_ID, align 4
  %38 = load i32, i32* @YY_CONST, align 4
  %39 = load i32, i32* @YY___CONST, align 4
  %40 = load i32, i32* @YY___CONST__, align 4
  %41 = load i32, i32* @YY_RESTRICT, align 4
  %42 = load i32, i32* @YY___RESTRICT, align 4
  %43 = load i32, i32* @YY___RESTRICT__, align 4
  %44 = load i32, i32* @YY_VOLATILE, align 4
  %45 = load i32, i32* @YY___VOLATILE, align 4
  %46 = load i32, i32* @YY___VOLATILE__, align 4
  %47 = load i32, i32* @YY__ATOMIC, align 4
  %48 = load i32, i32* @YY___ATTRIBUTE, align 4
  %49 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %50 = load i32, i32* @YY___DECLSPEC, align 4
  %51 = load i32, i32* @YY___CDECL, align 4
  %52 = load i32, i32* @YY___STDCALL, align 4
  %53 = load i32, i32* @YY___FASTCALL, align 4
  %54 = load i32, i32* @YY___THISCALL, align 4
  %55 = load i32, i32* @YY___VECTORCALL, align 4
  %56 = call i64 @YY_IN_SET(i32 %18, i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %152

58:                                               ; preds = %16
  %59 = load i32, i32* %3, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @parse_struct_declaration(i32 %59, i32* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %141
  %63 = load i8*, i8** @yy_pos, align 8
  store i8* %63, i8** %6, align 8
  %64 = load i8*, i8** @yy_text, align 8
  store i8* %64, i8** %7, align 8
  %65 = load i32, i32* @yy_line, align 4
  store i32 %65, i32* %8, align 4
  store i32 -2, i32* %9, align 4
  %66 = load i32, i32* %3, align 4
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @YY__SEMICOLON, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 (...) @get_sym()
  store i32 %71, i32* %5, align 4
  br label %82

72:                                               ; preds = %62
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @YY__RBRACE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 6, i32* %9, align 4
  br label %134

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %70
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @YY___EXTENSION__, align 4
  %85 = load i32, i32* @YY_VOID, align 4
  %86 = load i32, i32* @YY_CHAR, align 4
  %87 = load i32, i32* @YY_SHORT, align 4
  %88 = load i32, i32* @YY_INT, align 4
  %89 = load i32, i32* @YY_LONG, align 4
  %90 = load i32, i32* @YY_FLOAT, align 4
  %91 = load i32, i32* @YY_DOUBLE, align 4
  %92 = load i32, i32* @YY_SIGNED, align 4
  %93 = load i32, i32* @YY_UNSIGNED, align 4
  %94 = load i32, i32* @YY__BOOL, align 4
  %95 = load i32, i32* @YY__COMPLEX, align 4
  %96 = load i32, i32* @YY_COMPLEX, align 4
  %97 = load i32, i32* @YY___COMPLEX, align 4
  %98 = load i32, i32* @YY___COMPLEX__, align 4
  %99 = load i32, i32* @YY_STRUCT, align 4
  %100 = load i32, i32* @YY_UNION, align 4
  %101 = load i32, i32* @YY_ENUM, align 4
  %102 = load i32, i32* @YY_ID, align 4
  %103 = load i32, i32* @YY_CONST, align 4
  %104 = load i32, i32* @YY___CONST, align 4
  %105 = load i32, i32* @YY___CONST__, align 4
  %106 = load i32, i32* @YY_RESTRICT, align 4
  %107 = load i32, i32* @YY___RESTRICT, align 4
  %108 = load i32, i32* @YY___RESTRICT__, align 4
  %109 = load i32, i32* @YY_VOLATILE, align 4
  %110 = load i32, i32* @YY___VOLATILE, align 4
  %111 = load i32, i32* @YY___VOLATILE__, align 4
  %112 = load i32, i32* @YY__ATOMIC, align 4
  %113 = load i32, i32* @YY___ATTRIBUTE, align 4
  %114 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %115 = load i32, i32* @YY___DECLSPEC, align 4
  %116 = load i32, i32* @YY___CDECL, align 4
  %117 = load i32, i32* @YY___STDCALL, align 4
  %118 = load i32, i32* @YY___FASTCALL, align 4
  %119 = load i32, i32* @YY___THISCALL, align 4
  %120 = load i32, i32* @YY___VECTORCALL, align 4
  %121 = call i64 @YY_IN_SET(i32 %83, i32 %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %82
  store i32 3, i32* %9, align 4
  br label %134

124:                                              ; preds = %82
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @YY__RBRACE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 5, i32* %9, align 4
  br label %134

129:                                              ; preds = %124
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133, %128, %123, %76
  %135 = load i8*, i8** %6, align 8
  store i8* %135, i8** @yy_pos, align 8
  %136 = load i8*, i8** %7, align 8
  store i8* %136, i8** @yy_text, align 8
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* @yy_line, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 3
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %146

141:                                              ; preds = %134
  %142 = call i32 (...) @get_sym()
  store i32 %142, i32* %3, align 4
  %143 = load i32, i32* %3, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @parse_struct_declaration(i32 %143, i32* %144)
  store i32 %145, i32* %3, align 4
  br label %62

146:                                              ; preds = %140
  %147 = load i32, i32* %9, align 4
  %148 = icmp eq i32 %147, 5
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = call i32 (...) @get_sym()
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %146
  br label %152

152:                                              ; preds = %151, %16
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @YY__RBRACE, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %156, %152
  %160 = call i32 (...) @get_sym()
  store i32 %160, i32* %3, align 4
  %161 = load i32, i32* %3, align 4
  %162 = load i32, i32* @YY___ATTRIBUTE, align 4
  %163 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %164 = load i32, i32* @YY___DECLSPEC, align 4
  %165 = load i32, i32* @YY___CDECL, align 4
  %166 = load i32, i32* @YY___STDCALL, align 4
  %167 = load i32, i32* @YY___FASTCALL, align 4
  %168 = load i32, i32* @YY___THISCALL, align 4
  %169 = load i32, i32* @YY___VECTORCALL, align 4
  %170 = call i64 @YY_IN_SET(i32 %161, i32 %169, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %159
  %173 = load i32, i32* %3, align 4
  %174 = load i32*, i32** %4, align 8
  %175 = call i32 @parse_attributes(i32 %173, i32* %174)
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %172, %159
  %177 = load i32*, i32** %4, align 8
  %178 = call i32 @zend_ffi_adjust_struct_size(i32* %177)
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @yy_error_sym(i8*, i32) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i64 @YY_IN_SET(i32, i32, i8*) #1

declare dso_local i32 @parse_struct_declaration(i32, i32*) #1

declare dso_local i32 @parse_attributes(i32, i32*) #1

declare dso_local i32 @zend_ffi_adjust_struct_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
