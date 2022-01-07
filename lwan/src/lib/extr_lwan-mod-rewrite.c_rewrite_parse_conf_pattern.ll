; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-rewrite.c_rewrite_parse_conf_pattern.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-rewrite.c_rewrite_parse_conf_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.private_data = type { i32 }
%struct.config = type { i32 }
%struct.config_line = type { i32, i32, i32 }
%struct.pattern = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"redirect_to\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"rewrite_as\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"expand_with_lua\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Unexpected key: %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Unexpected section: %s\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"`redirect to` and `rewrite as` are mutually exclusive\00", align 1
@PATTERN_HANDLE_REDIRECT = common dso_local global i32 0, align 4
@PATTERN_HANDLE_REWRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"either `redirect to` or `rewrite as` are required\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"Lwan has been built without Lua. `expand_with_lua` is not available\00", align 1
@PATTERN_EXPAND_LWAN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"Could not copy pattern\00", align 1
@PATTERN_EXPAND_LUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.private_data*, %struct.config*, %struct.config_line*)* @rewrite_parse_conf_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rewrite_parse_conf_pattern(%struct.private_data* %0, %struct.config* %1, %struct.config_line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.private_data*, align 8
  %6 = alloca %struct.config*, align 8
  %7 = alloca %struct.config_line*, align 8
  %8 = alloca %struct.pattern*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.private_data* %0, %struct.private_data** %5, align 8
  store %struct.config* %1, %struct.config** %6, align 8
  store %struct.config_line* %2, %struct.config_line** %7, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.private_data*, %struct.private_data** %5, align 8
  %13 = getelementptr inbounds %struct.private_data, %struct.private_data* %12, i32 0, i32 0
  %14 = call %struct.pattern* @pattern_array_append0(i32* %13)
  store %struct.pattern* %14, %struct.pattern** %8, align 8
  %15 = load %struct.pattern*, %struct.pattern** %8, align 8
  %16 = icmp ne %struct.pattern* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %160

18:                                               ; preds = %3
  %19 = load %struct.config_line*, %struct.config_line** %7, align 8
  %20 = getelementptr inbounds %struct.config_line, %struct.config_line* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @strdup(i32 %21)
  %23 = load %struct.pattern*, %struct.pattern** %8, align 8
  %24 = getelementptr inbounds %struct.pattern, %struct.pattern* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.pattern*, %struct.pattern** %8, align 8
  %26 = getelementptr inbounds %struct.pattern, %struct.pattern* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %151

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %149, %30
  %32 = load %struct.config*, %struct.config** %6, align 8
  %33 = call %struct.config_line* @config_read_line(%struct.config* %32)
  store %struct.config_line* %33, %struct.config_line** %7, align 8
  %34 = icmp ne %struct.config_line* %33, null
  br i1 %34, label %35, label %150

35:                                               ; preds = %31
  %36 = load %struct.config_line*, %struct.config_line** %7, align 8
  %37 = getelementptr inbounds %struct.config_line, %struct.config_line* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %149 [
    i32 130, label %39
    i32 129, label %93
    i32 128, label %99
  ]

39:                                               ; preds = %35
  %40 = load %struct.config_line*, %struct.config_line** %7, align 8
  %41 = getelementptr inbounds %struct.config_line, %struct.config_line* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @streq(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load %struct.config_line*, %struct.config_line** %7, align 8
  %49 = getelementptr inbounds %struct.config_line, %struct.config_line* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @strdup(i32 %50)
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %151

55:                                               ; preds = %45
  br label %92

56:                                               ; preds = %39
  %57 = load %struct.config_line*, %struct.config_line** %7, align 8
  %58 = getelementptr inbounds %struct.config_line, %struct.config_line* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @streq(i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load %struct.config_line*, %struct.config_line** %7, align 8
  %66 = getelementptr inbounds %struct.config_line, %struct.config_line* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @strdup(i32 %67)
  store i8* %68, i8** %10, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %151

72:                                               ; preds = %62
  br label %91

73:                                               ; preds = %56
  %74 = load %struct.config_line*, %struct.config_line** %7, align 8
  %75 = getelementptr inbounds %struct.config_line, %struct.config_line* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @streq(i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.config_line*, %struct.config_line** %7, align 8
  %81 = getelementptr inbounds %struct.config_line, %struct.config_line* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @parse_bool(i32 %82, i32 0)
  store i32 %83, i32* %11, align 4
  br label %90

84:                                               ; preds = %73
  %85 = load %struct.config*, %struct.config** %6, align 8
  %86 = load %struct.config_line*, %struct.config_line** %7, align 8
  %87 = getelementptr inbounds %struct.config_line, %struct.config_line* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %151

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %72
  br label %92

92:                                               ; preds = %91, %55
  br label %149

93:                                               ; preds = %35
  %94 = load %struct.config*, %struct.config** %6, align 8
  %95 = load %struct.config_line*, %struct.config_line** %7, align 8
  %96 = getelementptr inbounds %struct.config_line, %struct.config_line* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %149

99:                                               ; preds = %35
  %100 = load i8*, i8** %9, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i8*, i8** %10, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.config*, %struct.config** %6, align 8
  %107 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %106, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  br label %151

108:                                              ; preds = %102, %99
  %109 = load i8*, i8** %9, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8
  %113 = load %struct.pattern*, %struct.pattern** %8, align 8
  %114 = getelementptr inbounds %struct.pattern, %struct.pattern* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @PATTERN_HANDLE_REDIRECT, align 4
  %116 = load %struct.pattern*, %struct.pattern** %8, align 8
  %117 = getelementptr inbounds %struct.pattern, %struct.pattern* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %136

120:                                              ; preds = %108
  %121 = load i8*, i8** %10, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i8*, i8** %10, align 8
  %125 = load %struct.pattern*, %struct.pattern** %8, align 8
  %126 = getelementptr inbounds %struct.pattern, %struct.pattern* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* @PATTERN_HANDLE_REWRITE, align 4
  %128 = load %struct.pattern*, %struct.pattern** %8, align 8
  %129 = getelementptr inbounds %struct.pattern, %struct.pattern* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %135

132:                                              ; preds = %120
  %133 = load %struct.config*, %struct.config** %6, align 8
  %134 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %133, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %151

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %135, %111
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.config*, %struct.config** %6, align 8
  %141 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %140, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0))
  br label %151

142:                                              ; preds = %136
  %143 = load i32, i32* @PATTERN_EXPAND_LWAN, align 4
  %144 = load %struct.pattern*, %struct.pattern** %8, align 8
  %145 = getelementptr inbounds %struct.pattern, %struct.pattern* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142
  store i32 1, i32* %4, align 4
  br label %163

149:                                              ; preds = %35, %93, %92
  br label %31

150:                                              ; preds = %31
  br label %151

151:                                              ; preds = %150, %139, %132, %105, %84, %71, %54, %29
  %152 = load %struct.pattern*, %struct.pattern** %8, align 8
  %153 = getelementptr inbounds %struct.pattern, %struct.pattern* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i8*, i8** %9, align 8
  %157 = call i32 @free(i8* %156)
  %158 = load i8*, i8** %10, align 8
  %159 = call i32 @free(i8* %158)
  br label %160

160:                                              ; preds = %151, %17
  %161 = load %struct.config*, %struct.config** %6, align 8
  %162 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %160, %148
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.pattern* @pattern_array_append0(i32*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local %struct.config_line* @config_read_line(%struct.config*) #1

declare dso_local i32 @streq(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @parse_bool(i32, i32) #1

declare dso_local i32 @config_error(%struct.config*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
