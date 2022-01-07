; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_func_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_func_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { i32 }
%struct.shader_var = type { i32, i32, i32, i32 }

@PARSE_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@SHADER_VAR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"inout\00", align 1
@SHADER_VAR_INOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@SHADER_VAR_OUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@SHADER_VAR_UNIFORM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"mapping specifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shader_parser*, %struct.shader_var*)* @sp_parse_func_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_parse_func_param(%struct.shader_parser* %0, %struct.shader_var* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shader_parser*, align 8
  %5 = alloca %struct.shader_var*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.shader_parser* %0, %struct.shader_parser** %4, align 8
  store %struct.shader_var* %1, %struct.shader_var** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %9 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %8, i32 0, i32 0
  %10 = call i32 @cf_next_valid_token(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @PARSE_EOF, align 4
  store i32 %13, i32* %3, align 4
  br label %145

14:                                               ; preds = %2
  %15 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %16 = call i32 @sp_check_for_keyword(%struct.shader_parser* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PARSE_EOF, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @PARSE_EOF, align 4
  store i32 %21, i32* %3, align 4
  br label %145

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @SHADER_VAR_IN, align 4
  %27 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %28 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %22
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %35 = call i32 @sp_check_for_keyword(%struct.shader_parser* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PARSE_EOF, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @PARSE_EOF, align 4
  store i32 %40, i32* %3, align 4
  br label %145

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @SHADER_VAR_INOUT, align 4
  %46 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %47 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %41
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %50
  %54 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %55 = call i32 @sp_check_for_keyword(%struct.shader_parser* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @PARSE_EOF, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @PARSE_EOF, align 4
  store i32 %60, i32* %3, align 4
  br label %145

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @SHADER_VAR_OUT, align 4
  %66 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %67 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69, %50
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %90, label %73

73:                                               ; preds = %70
  %74 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %75 = call i32 @sp_check_for_keyword(%struct.shader_parser* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @PARSE_EOF, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @PARSE_EOF, align 4
  store i32 %80, i32* %3, align 4
  br label %145

81:                                               ; preds = %73
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* @SHADER_VAR_UNIFORM, align 4
  %86 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %87 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %81
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %70
  %91 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %92 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %91, i32 0, i32 0
  %93 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %94 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %93, i32 0, i32 2
  %95 = call i32 @cf_get_name(i32* %92, i32* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @PARSE_SUCCESS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %145

101:                                              ; preds = %90
  %102 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %103 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %102, i32 0, i32 0
  %104 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %105 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %104, i32 0, i32 1
  %106 = call i32 @cf_next_name(i32* %103, i32* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @PARSE_SUCCESS, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %145

112:                                              ; preds = %101
  %113 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %114 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %113, i32 0, i32 0
  %115 = call i32 @cf_next_valid_token(i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* @PARSE_EOF, align 4
  store i32 %118, i32* %3, align 4
  br label %145

119:                                              ; preds = %112
  %120 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %121 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %120, i32 0, i32 0
  %122 = call i64 @cf_token_is(i32* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %119
  %125 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %126 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %125, i32 0, i32 0
  %127 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %128 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %127, i32 0, i32 0
  %129 = call i32 @cf_next_name(i32* %126, i32* %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @PARSE_SUCCESS, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  br label %145

135:                                              ; preds = %124
  %136 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %137 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %136, i32 0, i32 0
  %138 = call i32 @cf_next_valid_token(i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* @PARSE_EOF, align 4
  store i32 %141, i32* %3, align 4
  br label %145

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %119
  %144 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %140, %133, %117, %110, %99, %79, %59, %39, %20, %12
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @cf_next_valid_token(i32*) #1

declare dso_local i32 @sp_check_for_keyword(%struct.shader_parser*, i8*, i32*) #1

declare dso_local i32 @cf_get_name(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @cf_next_name(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @cf_token_is(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
