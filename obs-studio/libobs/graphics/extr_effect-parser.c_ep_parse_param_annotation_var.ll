; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param_annotation_var.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param_annotation_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.ep_param = type { i32, i32 }

@PARSE_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c">\00", align 1
@PARSE_BREAK = common dso_local global i32 0, align 4
@CFTOKEN_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"type name\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"variable name\00", align 1
@PARSE_UNEXPECTED_CONTINUE = common dso_local global i32 0, align 4
@PARSE_UNEXPECTED_BREAK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"= or ;\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"assignment value\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"; or >\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.ep_param*)* @ep_parse_param_annotation_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_param_annotation_var(%struct.effect_parser* %0, %struct.ep_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.ep_param*, align 8
  %6 = alloca i32, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.ep_param* %1, %struct.ep_param** %5, align 8
  %7 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %8 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %7, i32 0, i32 0
  %9 = call i32 @cf_next_valid_token(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @PARSE_EOF, align 4
  store i32 %12, i32* %3, align 4
  br label %156

13:                                               ; preds = %2
  %14 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %15 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %14, i32 0, i32 0
  %16 = call i64 @cf_token_is(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %19, i32* %3, align 4
  br label %156

20:                                               ; preds = %13
  %21 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %22 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %21, i32 0, i32 0
  %23 = call i64 @cf_token_is(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @PARSE_BREAK, align 4
  store i32 %26, i32* %3, align 4
  br label %156

27:                                               ; preds = %20
  %28 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %29 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %28, i32 0, i32 0
  %30 = load i32, i32* @CFTOKEN_NAME, align 4
  %31 = call i32 @cf_token_is_type(i32* %29, i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PARSE_SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %156

37:                                               ; preds = %27
  %38 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %39 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bfree(i32 %40)
  %42 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %43 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %42, i32 0, i32 0
  %44 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %45 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %44, i32 0, i32 1
  %46 = call i32 @cf_copy_token(i32* %43, i32* %45)
  %47 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %48 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %47, i32 0, i32 0
  %49 = call i32 @cf_next_valid_token(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %37
  %52 = load i32, i32* @PARSE_EOF, align 4
  store i32 %52, i32* %3, align 4
  br label %156

53:                                               ; preds = %37
  %54 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %55 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %54, i32 0, i32 0
  %56 = call i64 @cf_token_is(i32* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %60 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %59, i32 0, i32 0
  %61 = call i32 @cf_adderror_expecting(i32* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @PARSE_UNEXPECTED_CONTINUE, align 4
  store i32 %62, i32* %3, align 4
  br label %156

63:                                               ; preds = %53
  %64 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %65 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %64, i32 0, i32 0
  %66 = call i64 @cf_token_is(i32* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %70 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %69, i32 0, i32 0
  %71 = call i32 @cf_adderror_expecting(i32* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @PARSE_UNEXPECTED_BREAK, align 4
  store i32 %72, i32* %3, align 4
  br label %156

73:                                               ; preds = %63
  %74 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %75 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %74, i32 0, i32 0
  %76 = load i32, i32* @CFTOKEN_NAME, align 4
  %77 = call i32 @cf_token_is_type(i32* %75, i32 %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @PARSE_SUCCESS, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %156

83:                                               ; preds = %73
  %84 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %85 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @bfree(i32 %86)
  %88 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %89 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %88, i32 0, i32 0
  %90 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %91 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %90, i32 0, i32 0
  %92 = call i32 @cf_copy_token(i32* %89, i32* %91)
  %93 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %94 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %93, i32 0, i32 0
  %95 = call i32 @cf_next_valid_token(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %83
  %98 = load i32, i32* @PARSE_EOF, align 4
  store i32 %98, i32* %3, align 4
  br label %156

99:                                               ; preds = %83
  %100 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %101 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %100, i32 0, i32 0
  %102 = call i64 @cf_token_is(i32* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %106 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %105, i32 0, i32 0
  %107 = call i32 @cf_adderror_expecting(i32* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* @PARSE_UNEXPECTED_BREAK, align 4
  store i32 %108, i32* %3, align 4
  br label %156

109:                                              ; preds = %99
  %110 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %111 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %110, i32 0, i32 0
  %112 = call i64 @cf_token_is(i32* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %116 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %115, i32 0, i32 0
  %117 = call i32 @cf_adderror_expecting(i32* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* @PARSE_UNEXPECTED_BREAK, align 4
  store i32 %118, i32* %3, align 4
  br label %156

119:                                              ; preds = %109
  %120 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %121 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %120, i32 0, i32 0
  %122 = call i64 @cf_token_is(i32* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %126 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %127 = call i32 @ep_parse_param_assign(%struct.effect_parser* %125, %struct.ep_param* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %131 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %130, i32 0, i32 0
  %132 = call i32 @cf_adderror_expecting(i32* %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %133 = load i32, i32* @PARSE_UNEXPECTED_BREAK, align 4
  store i32 %133, i32* %3, align 4
  br label %156

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134, %119
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %139 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %138, i32 0, i32 0
  %140 = call i64 @cf_token_is(i32* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %154, label %142

142:                                              ; preds = %137
  %143 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %144 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %143, i32 0, i32 0
  %145 = call i32 @cf_go_to_valid_token(i32* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %149 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %148, i32 0, i32 0
  %150 = call i32 @cf_adderror_expecting(i32* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %151 = load i32, i32* @PARSE_EOF, align 4
  store i32 %151, i32* %3, align 4
  br label %156

152:                                              ; preds = %142
  %153 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %153, i32* %3, align 4
  br label %156

154:                                              ; preds = %137
  %155 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %154, %152, %147, %129, %114, %104, %97, %81, %68, %58, %51, %35, %25, %18, %11
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @cf_next_valid_token(i32*) #1

declare dso_local i64 @cf_token_is(i32*, i8*) #1

declare dso_local i32 @cf_token_is_type(i32*, i32, i8*, i8*) #1

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @cf_copy_token(i32*, i32*) #1

declare dso_local i32 @cf_adderror_expecting(i32*, i8*) #1

declare dso_local i32 @ep_parse_param_assign(%struct.effect_parser*, %struct.ep_param*) #1

declare dso_local i32 @cf_go_to_valid_token(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
