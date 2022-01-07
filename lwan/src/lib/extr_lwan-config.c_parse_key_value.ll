; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_parse_key_value.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_parse_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32, i32, i32, i32 }
%struct.config_line = type { i32, i32, i32 }
%struct.lexeme = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@CONFIG_LINE_TYPE_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Variable '$%.*s' not defined in environment\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Default value for variable '$%.*s' not given\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Wrong format for default value\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Using default value of '%.*s' for variable '${%.*s}'\00", align 1
@parse_config = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Unexpected token while parsing key-value: %s\00", align 1
@lexeme_type_str = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"EOF while parsing key-value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*)* @parse_key_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_key_value(%struct.parser* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.parser*, align 8
  %4 = alloca %struct.config_line, align 4
  %5 = alloca %struct.lexeme*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lexeme*, align 8
  store %struct.parser* %0, %struct.parser** %3, align 8
  %9 = getelementptr inbounds %struct.config_line, %struct.config_line* %4, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.config_line, %struct.config_line* %4, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.config_line, %struct.config_line* %4, i32 0, i32 2
  %12 = load i32, i32* @CONFIG_LINE_TYPE_LINE, align 4
  store i32 %12, i32* %11, align 4
  br label %13

13:                                               ; preds = %38, %1
  %14 = load %struct.parser*, %struct.parser** %3, align 8
  %15 = getelementptr inbounds %struct.parser, %struct.parser* %14, i32 0, i32 3
  %16 = call %struct.lexeme* @lexeme_ring_buffer_get_ptr_or_null(i32* %15)
  store %struct.lexeme* %16, %struct.lexeme** %5, align 8
  %17 = icmp ne %struct.lexeme* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load %struct.parser*, %struct.parser** %3, align 8
  %20 = getelementptr inbounds %struct.parser, %struct.parser* %19, i32 0, i32 1
  %21 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %22 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %26 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @lwan_strbuf_append_str(i32* %20, i32 %24, i64 %28)
  %30 = load %struct.parser*, %struct.parser** %3, align 8
  %31 = getelementptr inbounds %struct.parser, %struct.parser* %30, i32 0, i32 3
  %32 = call i32 @lexeme_ring_buffer_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %18
  %35 = load %struct.parser*, %struct.parser** %3, align 8
  %36 = getelementptr inbounds %struct.parser, %struct.parser* %35, i32 0, i32 1
  %37 = call i32 @lwan_strbuf_append_char(i32* %36, i8 signext 95)
  br label %38

38:                                               ; preds = %34, %18
  br label %13

39:                                               ; preds = %13
  %40 = load %struct.parser*, %struct.parser** %3, align 8
  %41 = getelementptr inbounds %struct.parser, %struct.parser* %40, i32 0, i32 1
  %42 = call i64 @lwan_strbuf_get_length(i32* %41)
  store i64 %42, i64* %6, align 8
  %43 = load %struct.parser*, %struct.parser** %3, align 8
  %44 = getelementptr inbounds %struct.parser, %struct.parser* %43, i32 0, i32 1
  %45 = call i32 @lwan_strbuf_append_char(i32* %44, i8 signext 0)
  br label %46

46:                                               ; preds = %205, %39
  %47 = load %struct.parser*, %struct.parser** %3, align 8
  %48 = getelementptr inbounds %struct.parser, %struct.parser* %47, i32 0, i32 2
  %49 = call %struct.lexeme* @lex_next(i32* %48)
  store %struct.lexeme* %49, %struct.lexeme** %5, align 8
  %50 = icmp ne %struct.lexeme* %49, null
  br i1 %50, label %51, label %206

51:                                               ; preds = %46
  %52 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %53 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %196 [
    i32 128, label %55
    i32 129, label %55
    i32 132, label %154
    i32 130, label %158
    i32 133, label %170
    i32 131, label %174
  ]

55:                                               ; preds = %51, %51
  %56 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %57 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %61 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @secure_getenv_len(i32 %59, i64 %63)
  store i8* %64, i8** %7, align 8
  %65 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %66 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 129
  br i1 %68, label %69, label %89

69:                                               ; preds = %55
  %70 = load i8*, i8** %7, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %83, label %72

72:                                               ; preds = %69
  %73 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %74 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %79 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, ...) @lwan_status_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %81)
  store i8* null, i8** %2, align 8
  br label %208

83:                                               ; preds = %69
  %84 = load %struct.parser*, %struct.parser** %3, align 8
  %85 = getelementptr inbounds %struct.parser, %struct.parser* %84, i32 0, i32 1
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @lwan_strbuf_append_strz(i32* %85, i8* %86)
  br label %88

88:                                               ; preds = %83
  br label %153

89:                                               ; preds = %55
  %90 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  store %struct.lexeme* %90, %struct.lexeme** %8, align 8
  %91 = load %struct.parser*, %struct.parser** %3, align 8
  %92 = getelementptr inbounds %struct.parser, %struct.parser* %91, i32 0, i32 2
  %93 = call %struct.lexeme* @lex_next(i32* %92)
  store %struct.lexeme* %93, %struct.lexeme** %5, align 8
  %94 = icmp ne %struct.lexeme* %93, null
  br i1 %94, label %106, label %95

95:                                               ; preds = %89
  %96 = load %struct.lexeme*, %struct.lexeme** %8, align 8
  %97 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load %struct.lexeme*, %struct.lexeme** %8, align 8
  %102 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, ...) @lwan_status_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %104)
  store i8* null, i8** %2, align 8
  br label %208

106:                                              ; preds = %89
  %107 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %108 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 130
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 (i8*, ...) @lwan_status_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %208

113:                                              ; preds = %106
  %114 = load i8*, i8** %7, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %147, label %116

116:                                              ; preds = %113
  %117 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %118 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %123 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.lexeme*, %struct.lexeme** %8, align 8
  %127 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = load %struct.lexeme*, %struct.lexeme** %8, align 8
  %132 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @lwan_status_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %125, i32 %130, i32 %134)
  %136 = load %struct.parser*, %struct.parser** %3, align 8
  %137 = getelementptr inbounds %struct.parser, %struct.parser* %136, i32 0, i32 1
  %138 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %139 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %143 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @lwan_strbuf_append_str(i32* %137, i32 %141, i64 %145)
  br label %152

147:                                              ; preds = %113
  %148 = load %struct.parser*, %struct.parser** %3, align 8
  %149 = getelementptr inbounds %struct.parser, %struct.parser* %148, i32 0, i32 1
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @lwan_strbuf_append_strz(i32* %149, i8* %150)
  br label %152

152:                                              ; preds = %147, %116
  br label %153

153:                                              ; preds = %152, %88
  br label %205

154:                                              ; preds = %51
  %155 = load %struct.parser*, %struct.parser** %3, align 8
  %156 = getelementptr inbounds %struct.parser, %struct.parser* %155, i32 0, i32 1
  %157 = call i32 @lwan_strbuf_append_char(i32* %156, i8 signext 61)
  br label %205

158:                                              ; preds = %51
  %159 = load %struct.parser*, %struct.parser** %3, align 8
  %160 = getelementptr inbounds %struct.parser, %struct.parser* %159, i32 0, i32 1
  %161 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %162 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %166 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @lwan_strbuf_append_str(i32* %160, i32 %164, i64 %168)
  br label %205

170:                                              ; preds = %51
  %171 = load %struct.parser*, %struct.parser** %3, align 8
  %172 = getelementptr inbounds %struct.parser, %struct.parser* %171, i32 0, i32 2
  %173 = call i32 @backup(i32* %172)
  br label %174

174:                                              ; preds = %51, %170
  %175 = load %struct.parser*, %struct.parser** %3, align 8
  %176 = getelementptr inbounds %struct.parser, %struct.parser* %175, i32 0, i32 1
  %177 = call i32 @lwan_strbuf_get_buffer(i32* %176)
  %178 = getelementptr inbounds %struct.config_line, %struct.config_line* %4, i32 0, i32 0
  store i32 %177, i32* %178, align 4
  %179 = getelementptr inbounds %struct.config_line, %struct.config_line* %4, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %6, align 8
  %183 = add i64 %181, %182
  %184 = add i64 %183, 1
  %185 = trunc i64 %184 to i32
  %186 = getelementptr inbounds %struct.config_line, %struct.config_line* %4, i32 0, i32 1
  store i32 %185, i32* %186, align 4
  %187 = load %struct.parser*, %struct.parser** %3, align 8
  %188 = getelementptr inbounds %struct.parser, %struct.parser* %187, i32 0, i32 0
  %189 = call i32 @config_ring_buffer_try_put(i32* %188, %struct.config_line* %4)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %174
  %192 = load i8*, i8** @parse_config, align 8
  br label %194

193:                                              ; preds = %174
  br label %194

194:                                              ; preds = %193, %191
  %195 = phi i8* [ %192, %191 ], [ null, %193 ]
  store i8* %195, i8** %2, align 8
  br label %208

196:                                              ; preds = %51
  %197 = load i32*, i32** @lexeme_type_str, align 8
  %198 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %199 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %197, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i8*, ...) @lwan_status_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %203)
  store i8* null, i8** %2, align 8
  br label %208

205:                                              ; preds = %158, %154, %153
  br label %46

206:                                              ; preds = %46
  %207 = call i32 (i8*, ...) @lwan_status_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %208

208:                                              ; preds = %206, %196, %194, %111, %95, %72
  %209 = load i8*, i8** %2, align 8
  ret i8* %209
}

declare dso_local %struct.lexeme* @lexeme_ring_buffer_get_ptr_or_null(i32*) #1

declare dso_local i32 @lwan_strbuf_append_str(i32*, i32, i64) #1

declare dso_local i32 @lexeme_ring_buffer_empty(i32*) #1

declare dso_local i32 @lwan_strbuf_append_char(i32*, i8 signext) #1

declare dso_local i64 @lwan_strbuf_get_length(i32*) #1

declare dso_local %struct.lexeme* @lex_next(i32*) #1

declare dso_local i8* @secure_getenv_len(i32, i64) #1

declare dso_local i32 @lwan_status_error(i8*, ...) #1

declare dso_local i32 @lwan_strbuf_append_strz(i32*, i8*) #1

declare dso_local i32 @lwan_status_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @backup(i32*) #1

declare dso_local i32 @lwan_strbuf_get_buffer(i32*) #1

declare dso_local i32 @config_ring_buffer_try_put(i32*, %struct.config_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
