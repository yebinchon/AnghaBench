; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_parser_identifier.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_parser_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.lexeme = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.lwan_var_descriptor = type { i32 }

@FLAGS_QUOTE = common dso_local global i32 0, align 4
@LEXEME_CLOSE_CURLY_BRACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Expecting closing brace\00", align 1
@LEXEME_RIGHT_META = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown variable: %.*s\00", align 1
@ACTION_VARIABLE = common dso_local global i32 0, align 4
@parser_text = common dso_local global i8* null, align 8
@LEXEME_QUESTION_MARK = common dso_local global i64 0, align 8
@FLAGS_NO_FREE = common dso_local global i32 0, align 4
@FLAGS_NEGATE = common dso_local global i32 0, align 4
@ACTION_IF_VARIABLE_NOT_EMPTY = common dso_local global i32 0, align 4
@parser_right_meta = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, %struct.lexeme*)* @parser_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parser_identifier(%struct.parser* %0, %struct.lexeme* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca %struct.lexeme*, align 8
  %6 = alloca %struct.lexeme*, align 8
  %7 = alloca %struct.lwan_var_descriptor*, align 8
  %8 = alloca %struct.lwan_var_descriptor*, align 8
  %9 = alloca i32, align 4
  store %struct.parser* %0, %struct.parser** %4, align 8
  store %struct.lexeme* %1, %struct.lexeme** %5, align 8
  %10 = load %struct.parser*, %struct.parser** %4, align 8
  %11 = getelementptr inbounds %struct.parser, %struct.parser* %10, i32 0, i32 2
  %12 = call %struct.lexeme* @lex_next(i32* %11)
  store %struct.lexeme* %12, %struct.lexeme** %6, align 8
  %13 = icmp ne %struct.lexeme* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %142

15:                                               ; preds = %2
  %16 = load %struct.parser*, %struct.parser** %4, align 8
  %17 = getelementptr inbounds %struct.parser, %struct.parser* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FLAGS_QUOTE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = load %struct.lexeme*, %struct.lexeme** %6, align 8
  %24 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LEXEME_CLOSE_CURLY_BRACE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %30 = call i8* (%struct.lexeme*, i8*, ...) @error_lexeme(%struct.lexeme* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %3, align 8
  br label %142

31:                                               ; preds = %22
  %32 = load %struct.parser*, %struct.parser** %4, align 8
  %33 = getelementptr inbounds %struct.parser, %struct.parser* %32, i32 0, i32 2
  %34 = call %struct.lexeme* @lex_next(i32* %33)
  store %struct.lexeme* %34, %struct.lexeme** %6, align 8
  %35 = icmp ne %struct.lexeme* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %38 = call i8* @unexpected_lexeme(%struct.lexeme* %37)
  store i8* %38, i8** %3, align 8
  br label %142

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %15
  %41 = load %struct.lexeme*, %struct.lexeme** %6, align 8
  %42 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LEXEME_RIGHT_META, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %92

46:                                               ; preds = %40
  %47 = load %struct.parser*, %struct.parser** %4, align 8
  %48 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %49 = call %struct.lwan_var_descriptor* @symtab_lookup_lexeme(%struct.parser* %47, %struct.lexeme* %48)
  store %struct.lwan_var_descriptor* %49, %struct.lwan_var_descriptor** %7, align 8
  %50 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %7, align 8
  %51 = icmp ne %struct.lwan_var_descriptor* %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %54 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %55 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %60 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* (%struct.lexeme*, i8*, ...) @error_lexeme(%struct.lexeme* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %62)
  store i8* %63, i8** %3, align 8
  br label %142

64:                                               ; preds = %46
  %65 = load %struct.parser*, %struct.parser** %4, align 8
  %66 = load i32, i32* @ACTION_VARIABLE, align 4
  %67 = load %struct.parser*, %struct.parser** %4, align 8
  %68 = getelementptr inbounds %struct.parser, %struct.parser* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %7, align 8
  %71 = call i32 @emit_chunk(%struct.parser* %65, i32 %66, i32 %69, %struct.lwan_var_descriptor* %70)
  %72 = load i32, i32* @FLAGS_QUOTE, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.parser*, %struct.parser** %4, align 8
  %75 = getelementptr inbounds %struct.parser, %struct.parser* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %79 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  %83 = load %struct.parser*, %struct.parser** %4, align 8
  %84 = getelementptr inbounds %struct.parser, %struct.parser* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %82
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  %91 = load i8*, i8** @parser_text, align 8
  store i8* %91, i8** %3, align 8
  br label %142

92:                                               ; preds = %40
  %93 = load %struct.lexeme*, %struct.lexeme** %6, align 8
  %94 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @LEXEME_QUESTION_MARK, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %139

98:                                               ; preds = %92
  %99 = load %struct.parser*, %struct.parser** %4, align 8
  %100 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %101 = call %struct.lwan_var_descriptor* @symtab_lookup_lexeme(%struct.parser* %99, %struct.lexeme* %100)
  store %struct.lwan_var_descriptor* %101, %struct.lwan_var_descriptor** %8, align 8
  %102 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %8, align 8
  %103 = icmp ne %struct.lwan_var_descriptor* %102, null
  br i1 %103, label %116, label %104

104:                                              ; preds = %98
  %105 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %106 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %107 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %112 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i8* (%struct.lexeme*, i8*, ...) @error_lexeme(%struct.lexeme* %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %114)
  store i8* %115, i8** %3, align 8
  br label %142

116:                                              ; preds = %98
  %117 = load i32, i32* @FLAGS_NO_FREE, align 4
  %118 = load %struct.parser*, %struct.parser** %4, align 8
  %119 = getelementptr inbounds %struct.parser, %struct.parser* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @FLAGS_NEGATE, align 4
  %122 = and i32 %120, %121
  %123 = or i32 %117, %122
  store i32 %123, i32* %9, align 4
  %124 = load %struct.parser*, %struct.parser** %4, align 8
  %125 = load i32, i32* @ACTION_IF_VARIABLE_NOT_EMPTY, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %8, align 8
  %128 = call i32 @emit_chunk(%struct.parser* %124, i32 %125, i32 %126, %struct.lwan_var_descriptor* %127)
  %129 = load %struct.parser*, %struct.parser** %4, align 8
  %130 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %131 = call i32 @parser_push_lexeme(%struct.parser* %129, %struct.lexeme* %130)
  %132 = load i32, i32* @FLAGS_NEGATE, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.parser*, %struct.parser** %4, align 8
  %135 = getelementptr inbounds %struct.parser, %struct.parser* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load i8*, i8** @parser_right_meta, align 8
  store i8* %138, i8** %3, align 8
  br label %142

139:                                              ; preds = %92
  %140 = load %struct.lexeme*, %struct.lexeme** %6, align 8
  %141 = call i8* @unexpected_lexeme(%struct.lexeme* %140)
  store i8* %141, i8** %3, align 8
  br label %142

142:                                              ; preds = %139, %116, %104, %64, %52, %36, %28, %14
  %143 = load i8*, i8** %3, align 8
  ret i8* %143
}

declare dso_local %struct.lexeme* @lex_next(i32*) #1

declare dso_local i8* @error_lexeme(%struct.lexeme*, i8*, ...) #1

declare dso_local i8* @unexpected_lexeme(%struct.lexeme*) #1

declare dso_local %struct.lwan_var_descriptor* @symtab_lookup_lexeme(%struct.parser*, %struct.lexeme*) #1

declare dso_local i32 @emit_chunk(%struct.parser*, i32, i32, %struct.lwan_var_descriptor*) #1

declare dso_local i32 @parser_push_lexeme(%struct.parser*, %struct.lexeme*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
