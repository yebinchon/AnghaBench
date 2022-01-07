; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_func_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_func_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.ep_func = type { i32, i32 }
%struct.ep_var = type { i32, i32, i32, i32 }

@PARSE_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@EP_VAR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"inout\00", align 1
@EP_VAR_INOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@EP_VAR_OUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@EP_VAR_UNIFORM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"mapping specifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.ep_func*, %struct.ep_var*)* @ep_parse_func_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_func_param(%struct.effect_parser* %0, %struct.ep_func* %1, %struct.ep_var* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.effect_parser*, align 8
  %6 = alloca %struct.ep_func*, align 8
  %7 = alloca %struct.ep_var*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %5, align 8
  store %struct.ep_func* %1, %struct.ep_func** %6, align 8
  store %struct.ep_var* %2, %struct.ep_var** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %11 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %10, i32 0, i32 0
  %12 = call i32 @cf_next_valid_token(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @PARSE_EOF, align 4
  store i32 %15, i32* %4, align 4
  br label %176

16:                                               ; preds = %3
  %17 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %18 = call i32 @ep_check_for_keyword(%struct.effect_parser* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @PARSE_EOF, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @PARSE_EOF, align 4
  store i32 %23, i32* %4, align 4
  br label %176

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @EP_VAR_IN, align 4
  %29 = load %struct.ep_var*, %struct.ep_var** %7, align 8
  %30 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %32
  %36 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %37 = call i32 @ep_check_for_keyword(%struct.effect_parser* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @PARSE_EOF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @PARSE_EOF, align 4
  store i32 %42, i32* %4, align 4
  br label %176

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @EP_VAR_INOUT, align 4
  %48 = load %struct.ep_var*, %struct.ep_var** %7, align 8
  %49 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %43
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %32
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %52
  %56 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %57 = call i32 @ep_check_for_keyword(%struct.effect_parser* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @PARSE_EOF, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @PARSE_EOF, align 4
  store i32 %62, i32* %4, align 4
  br label %176

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* @EP_VAR_OUT, align 4
  %68 = load %struct.ep_var*, %struct.ep_var** %7, align 8
  %69 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %52
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %72
  %76 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %77 = call i32 @ep_check_for_keyword(%struct.effect_parser* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @PARSE_EOF, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @PARSE_EOF, align 4
  store i32 %82, i32* %4, align 4
  br label %176

83:                                               ; preds = %75
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @EP_VAR_UNIFORM, align 4
  %88 = load %struct.ep_var*, %struct.ep_var** %7, align 8
  %89 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %83
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %72
  %93 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %94 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %93, i32 0, i32 0
  %95 = load %struct.ep_var*, %struct.ep_var** %7, align 8
  %96 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %95, i32 0, i32 0
  %97 = call i32 @cf_get_name(i32* %94, i32* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @PARSE_SUCCESS, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %4, align 4
  br label %176

103:                                              ; preds = %92
  %104 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %105 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %104, i32 0, i32 0
  %106 = load %struct.ep_var*, %struct.ep_var** %7, align 8
  %107 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %106, i32 0, i32 2
  %108 = call i32 @cf_next_name(i32* %105, i32* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @PARSE_SUCCESS, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %4, align 4
  br label %176

114:                                              ; preds = %103
  %115 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %116 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %115, i32 0, i32 0
  %117 = call i32 @cf_next_valid_token(i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @PARSE_EOF, align 4
  store i32 %120, i32* %4, align 4
  br label %176

121:                                              ; preds = %114
  %122 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %123 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %122, i32 0, i32 0
  %124 = call i64 @cf_token_is(i32* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %121
  %127 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %128 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %127, i32 0, i32 0
  %129 = load %struct.ep_var*, %struct.ep_var** %7, align 8
  %130 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %129, i32 0, i32 1
  %131 = call i32 @cf_next_name(i32* %128, i32* %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @PARSE_SUCCESS, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %4, align 4
  br label %176

137:                                              ; preds = %126
  %138 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %139 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %138, i32 0, i32 0
  %140 = call i32 @cf_next_valid_token(i32* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @PARSE_EOF, align 4
  store i32 %143, i32* %4, align 4
  br label %176

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144, %121
  %146 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %147 = load %struct.ep_var*, %struct.ep_var** %7, align 8
  %148 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32* @ep_getstruct(%struct.effect_parser* %146, i32 %149)
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load %struct.ep_func*, %struct.ep_func** %6, align 8
  %154 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ep_var*, %struct.ep_var** %7, align 8
  %157 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %156, i32 0, i32 0
  %158 = call i32 @da_push_back(i32 %155, i32* %157)
  br label %174

159:                                              ; preds = %145
  %160 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %161 = load %struct.ep_var*, %struct.ep_var** %7, align 8
  %162 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32* @ep_getsampler(%struct.effect_parser* %160, i32 %163)
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load %struct.ep_func*, %struct.ep_func** %6, align 8
  %168 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ep_var*, %struct.ep_var** %7, align 8
  %171 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %170, i32 0, i32 0
  %172 = call i32 @da_push_back(i32 %169, i32* %171)
  br label %173

173:                                              ; preds = %166, %159
  br label %174

174:                                              ; preds = %173, %152
  %175 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %174, %142, %135, %119, %112, %101, %81, %61, %41, %22, %14
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @cf_next_valid_token(i32*) #1

declare dso_local i32 @ep_check_for_keyword(%struct.effect_parser*, i8*, i32*) #1

declare dso_local i32 @cf_get_name(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @cf_next_name(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @cf_token_is(i32*, i8*) #1

declare dso_local i32* @ep_getstruct(%struct.effect_parser*, i32) #1

declare dso_local i32 @da_push_back(i32, i32*) #1

declare dso_local i32* @ep_getsampler(%struct.effect_parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
