; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_struct_var.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_struct_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.ep_var = type { i32, i32, i32 }

@PARSE_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@PARSE_BREAK = common dso_local global i32 0, align 4
@CFTOKEN_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"type name\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@PARSE_UNEXPECTED_CONTINUE = common dso_local global i32 0, align 4
@PARSE_UNEXPECTED_BREAK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"variable name\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"mapping name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.ep_var*)* @ep_parse_struct_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_struct_var(%struct.effect_parser* %0, %struct.ep_var* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.ep_var*, align 8
  %6 = alloca i32, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.ep_var* %1, %struct.ep_var** %5, align 8
  %7 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %8 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %7, i32 0, i32 0
  %9 = call i32 @cf_next_valid_token(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @PARSE_EOF, align 4
  store i32 %12, i32* %3, align 4
  br label %150

13:                                               ; preds = %2
  %14 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %15 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %14, i32 0, i32 0
  %16 = call i64 @cf_token_is(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %19, i32* %3, align 4
  br label %150

20:                                               ; preds = %13
  %21 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %22 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %21, i32 0, i32 0
  %23 = call i64 @cf_token_is(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @PARSE_BREAK, align 4
  store i32 %26, i32* %3, align 4
  br label %150

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
  br label %150

37:                                               ; preds = %27
  %38 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %39 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %38, i32 0, i32 0
  %40 = load %struct.ep_var*, %struct.ep_var** %5, align 8
  %41 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %40, i32 0, i32 2
  %42 = call i32 @cf_copy_token(i32* %39, i32* %41)
  %43 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %44 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %43, i32 0, i32 0
  %45 = call i32 @cf_next_valid_token(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @PARSE_EOF, align 4
  store i32 %48, i32* %3, align 4
  br label %150

49:                                               ; preds = %37
  %50 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %51 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %50, i32 0, i32 0
  %52 = call i64 @cf_token_is(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @PARSE_UNEXPECTED_CONTINUE, align 4
  store i32 %55, i32* %3, align 4
  br label %150

56:                                               ; preds = %49
  %57 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %58 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %57, i32 0, i32 0
  %59 = call i64 @cf_token_is(i32* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @PARSE_UNEXPECTED_BREAK, align 4
  store i32 %62, i32* %3, align 4
  br label %150

63:                                               ; preds = %56
  %64 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %65 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %64, i32 0, i32 0
  %66 = load i32, i32* @CFTOKEN_NAME, align 4
  %67 = call i32 @cf_token_is_type(i32* %65, i32 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PARSE_SUCCESS, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %150

73:                                               ; preds = %63
  %74 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %75 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %74, i32 0, i32 0
  %76 = load %struct.ep_var*, %struct.ep_var** %5, align 8
  %77 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %76, i32 0, i32 1
  %78 = call i32 @cf_copy_token(i32* %75, i32* %77)
  %79 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %80 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %79, i32 0, i32 0
  %81 = call i32 @cf_next_valid_token(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %73
  %84 = load i32, i32* @PARSE_EOF, align 4
  store i32 %84, i32* %3, align 4
  br label %150

85:                                               ; preds = %73
  %86 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %87 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %86, i32 0, i32 0
  %88 = call i64 @cf_token_is(i32* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %134

90:                                               ; preds = %85
  %91 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %92 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %91, i32 0, i32 0
  %93 = call i32 @cf_next_valid_token(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @PARSE_EOF, align 4
  store i32 %96, i32* %3, align 4
  br label %150

97:                                               ; preds = %90
  %98 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %99 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %98, i32 0, i32 0
  %100 = call i64 @cf_token_is(i32* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @PARSE_UNEXPECTED_CONTINUE, align 4
  store i32 %103, i32* %3, align 4
  br label %150

104:                                              ; preds = %97
  %105 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %106 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %105, i32 0, i32 0
  %107 = call i64 @cf_token_is(i32* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @PARSE_UNEXPECTED_BREAK, align 4
  store i32 %110, i32* %3, align 4
  br label %150

111:                                              ; preds = %104
  %112 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %113 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %112, i32 0, i32 0
  %114 = load i32, i32* @CFTOKEN_NAME, align 4
  %115 = call i32 @cf_token_is_type(i32* %113, i32 %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @PARSE_SUCCESS, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %150

121:                                              ; preds = %111
  %122 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %123 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %122, i32 0, i32 0
  %124 = load %struct.ep_var*, %struct.ep_var** %5, align 8
  %125 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %124, i32 0, i32 0
  %126 = call i32 @cf_copy_token(i32* %123, i32* %125)
  %127 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %128 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %127, i32 0, i32 0
  %129 = call i32 @cf_next_valid_token(i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %121
  %132 = load i32, i32* @PARSE_EOF, align 4
  store i32 %132, i32* %3, align 4
  br label %150

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133, %85
  %135 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %136 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %135, i32 0, i32 0
  %137 = call i64 @cf_token_is(i32* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %134
  %140 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %141 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %140, i32 0, i32 0
  %142 = call i32 @cf_go_to_valid_token(i32* %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* @PARSE_EOF, align 4
  store i32 %145, i32* %3, align 4
  br label %150

146:                                              ; preds = %139
  %147 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %147, i32* %3, align 4
  br label %150

148:                                              ; preds = %134
  %149 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %146, %144, %131, %119, %109, %102, %95, %83, %71, %61, %54, %47, %35, %25, %18, %11
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @cf_next_valid_token(i32*) #1

declare dso_local i64 @cf_token_is(i32*, i8*) #1

declare dso_local i32 @cf_token_is_type(i32*, i32, i8*, i8*) #1

declare dso_local i32 @cf_copy_token(i32*, i32*) #1

declare dso_local i32 @cf_go_to_valid_token(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
