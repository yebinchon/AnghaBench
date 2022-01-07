; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_initializer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_initializer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY__EQUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"'=' expected, got\00", align 1
@YY__LPAREN = common dso_local global i32 0, align 4
@YY_ID = common dso_local global i32 0, align 4
@YY_OCTNUMBER = common dso_local global i32 0, align 4
@YY_DECNUMBER = common dso_local global i32 0, align 4
@YY_HEXNUMBER = common dso_local global i32 0, align 4
@YY_FLOATNUMBER = common dso_local global i32 0, align 4
@YY_STRING = common dso_local global i32 0, align 4
@YY_CHARACTER = common dso_local global i32 0, align 4
@YY__PLUS_PLUS = common dso_local global i32 0, align 4
@YY__MINUS_MINUS = common dso_local global i32 0, align 4
@YY__AND = common dso_local global i32 0, align 4
@YY__STAR = common dso_local global i32 0, align 4
@YY__PLUS = common dso_local global i32 0, align 4
@YY__MINUS = common dso_local global i32 0, align 4
@YY__TILDE = common dso_local global i32 0, align 4
@YY__BANG = common dso_local global i32 0, align 4
@YY_SIZEOF = common dso_local global i32 0, align 4
@YY__ALIGNOF = common dso_local global i32 0, align 4
@YY___ALIGNOF = common dso_local global i32 0, align 4
@YY___ALIGNOF__ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\08\00\00\00\00\00\01\00\04\18\FF\FE\00\00", align 1
@YY__LBRACE = common dso_local global i32 0, align 4
@YY__LBRACK = common dso_local global i32 0, align 4
@YY__POINT = common dso_local global i32 0, align 4
@yy_pos = common dso_local global i8* null, align 8
@yy_text = common dso_local global i8* null, align 8
@yy_line = common dso_local global i32 0, align 4
@YY__COMMA = common dso_local global i32 0, align 4
@YY__RBRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"'}' expected, got\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @parse_initializer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_initializer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @YY__EQUAL, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = call i32 (...) @get_sym()
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @YY__LPAREN, align 4
  %19 = load i32, i32* @YY_ID, align 4
  %20 = load i32, i32* @YY_OCTNUMBER, align 4
  %21 = load i32, i32* @YY_DECNUMBER, align 4
  %22 = load i32, i32* @YY_HEXNUMBER, align 4
  %23 = load i32, i32* @YY_FLOATNUMBER, align 4
  %24 = load i32, i32* @YY_STRING, align 4
  %25 = load i32, i32* @YY_CHARACTER, align 4
  %26 = load i32, i32* @YY__PLUS_PLUS, align 4
  %27 = load i32, i32* @YY__MINUS_MINUS, align 4
  %28 = load i32, i32* @YY__AND, align 4
  %29 = load i32, i32* @YY__STAR, align 4
  %30 = load i32, i32* @YY__PLUS, align 4
  %31 = load i32, i32* @YY__MINUS, align 4
  %32 = load i32, i32* @YY__TILDE, align 4
  %33 = load i32, i32* @YY__BANG, align 4
  %34 = load i32, i32* @YY_SIZEOF, align 4
  %35 = load i32, i32* @YY__ALIGNOF, align 4
  %36 = load i32, i32* @YY___ALIGNOF, align 4
  %37 = load i32, i32* @YY___ALIGNOF__, align 4
  %38 = call i64 @YY_IN_SET(i32 %17, i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %15
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @parse_assignment_expression(i32 %41, i32* %8)
  store i32 %42, i32* %2, align 4
  br label %145

43:                                               ; preds = %15
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @YY__LBRACE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %141

47:                                               ; preds = %43
  %48 = call i32 (...) @get_sym()
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @YY__LBRACK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @YY__POINT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @parse_designation(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @parse_initializer(i32 %60)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %124
  %63 = load i8*, i8** @yy_pos, align 8
  store i8* %63, i8** %4, align 8
  %64 = load i8*, i8** @yy_text, align 8
  store i8* %64, i8** %5, align 8
  %65 = load i32, i32* @yy_line, align 4
  store i32 %65, i32* %6, align 4
  store i32 -2, i32* %7, align 4
  %66 = load i32, i32* %2, align 4
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @YY__COMMA, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 (...) @get_sym()
  store i32 %71, i32* %3, align 4
  br label %82

72:                                               ; preds = %62
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @YY__RBRACE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 348, i32* %7, align 4
  br label %105

77:                                               ; preds = %72
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %70
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @YY__LBRACK, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @YY__POINT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @YY__EQUAL, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %86, %82
  store i32 344, i32* %7, align 4
  br label %105

95:                                               ; preds = %90
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @YY__RBRACE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 347, i32* %7, align 4
  br label %105

100:                                              ; preds = %95
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %99, %94, %76
  %106 = load i8*, i8** %4, align 8
  store i8* %106, i8** @yy_pos, align 8
  %107 = load i8*, i8** %5, align 8
  store i8* %107, i8** @yy_text, align 8
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* @yy_line, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 344
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %127

112:                                              ; preds = %105
  %113 = call i32 (...) @get_sym()
  store i32 %113, i32* %2, align 4
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* @YY__LBRACK, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* @YY__POINT, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117, %112
  %122 = load i32, i32* %2, align 4
  %123 = call i32 @parse_designation(i32 %122)
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %121, %117
  %125 = load i32, i32* %2, align 4
  %126 = call i32 @parse_initializer(i32 %125)
  store i32 %126, i32* %2, align 4
  br label %62

127:                                              ; preds = %111
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %128, 347
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i32 (...) @get_sym()
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %127
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* @YY__RBRACE, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %2, align 4
  %138 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %136, %132
  %140 = call i32 (...) @get_sym()
  store i32 %140, i32* %2, align 4
  br label %144

141:                                              ; preds = %43
  %142 = load i32, i32* %2, align 4
  %143 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %141, %139
  br label %145

145:                                              ; preds = %144, %40
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @yy_error_sym(i8*, i32) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i64 @YY_IN_SET(i32, i32, i8*) #1

declare dso_local i32 @parse_assignment_expression(i32, i32*) #1

declare dso_local i32 @parse_designation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
