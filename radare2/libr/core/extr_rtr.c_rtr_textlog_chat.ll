; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_rtr.c_rtr_textlog_chat.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_rtr.c_rtr_textlog_chat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"cfg.user\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Type '/help' for commands and ^D to quit:\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"[%s]> \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"T %d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"Tl\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"/help\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"/quit           quit the chat (same as ^D)\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"/nick <nick>    set cfg.user nick name\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"/log            show full log\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"/clear          clear text log messages\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"/nick \00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"* '%s' is now known as '%s'\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"/log\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"/clear\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"T-\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"/quit\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Unknown command: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"T [%s] %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @rtr_textlog_chat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtr_textlog_chat(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @r_config_get(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %8, align 8
  %18 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %19 = call %struct.TYPE_6__* (...) @r_line_singleton()
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @strdup(i32 %21)
  store i8* %22, i8** %11, align 8
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %23, i32 63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %27 = call i32 @r_line_set_prompt(i8* %26)
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %30 = call i8* @rtrcmd(i32 %28, i8* %29)
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %155, %64, %2
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %35, i32 1023, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  br label %41

38:                                               ; preds = %31
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %40 = call i32 @strcpy(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %4, align 4
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %44 = call i8* @rtrcmd(i32 %42, i8* %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @r_cons_println(i8* %45)
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i8* @rtrcmd(i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @atoi(i8* %51)
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @free(i8* %54)
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %57 = call i64 @r_cons_fgets(i8* %56, i32 1023, i32 0, i32* null)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %41
  br label %156

60:                                               ; preds = %41
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %62 = load i8, i8* %61, align 16
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  br label %31

65:                                               ; preds = %60
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %71 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %73 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  br label %155

74:                                               ; preds = %65
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %76 = call i32 @strncmp(i8* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 6)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %104, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %82 = getelementptr inbounds i8, i8* %81, i64 6
  %83 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %79, i32 1023, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* %80, i8* %82)
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %85 = call i32 @r_cons_println(i8* %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %88 = call i32 @r_core_log_add(%struct.TYPE_5__* %86, i8* %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %93 = getelementptr inbounds i8, i8* %92, i64 6
  %94 = call i32 @r_config_set(i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @r_config_get(i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %98, i8** %8, align 8
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %99, i32 63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %100)
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %103 = call i32 @r_line_set_prompt(i8* %102)
  br label %154

104:                                              ; preds = %74
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %106 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %4, align 4
  %110 = call i8* @rtrcmd(i32 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %110, i8** %12, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 @r_cons_println(i8* %114)
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @free(i8* %116)
  br label %118

118:                                              ; preds = %113, %108
  br label %153

119:                                              ; preds = %104
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %4, align 4
  %125 = call i8* @rtrcmd(i32 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %126 = call i32 @free(i8* %125)
  br label %152

127:                                              ; preds = %119
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  br label %156

132:                                              ; preds = %127
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %134 = load i8, i8* %133, align 16
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 47
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %139 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %138)
  br label %150

140:                                              ; preds = %132
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %143 = call i8* @r_str_newf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* %141, i8* %142)
  store i8* %143, i8** %13, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i8*, i8** %13, align 8
  %146 = call i8* @rtrcmd(i32 %144, i8* %145)
  %147 = call i32 @free(i8* %146)
  %148 = load i8*, i8** %13, align 8
  %149 = call i32 @free(i8* %148)
  br label %150

150:                                              ; preds = %140, %137
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151, %123
  br label %153

153:                                              ; preds = %152, %118
  br label %154

154:                                              ; preds = %153, %78
  br label %155

155:                                              ; preds = %154, %69
  br label %31

156:                                              ; preds = %131, %59
  %157 = load i8*, i8** %11, align 8
  %158 = call i32 @r_line_set_prompt(i8* %157)
  %159 = load i8*, i8** %11, align 8
  %160 = call i32 @free(i8* %159)
  ret void
}

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local %struct.TYPE_6__* @r_line_singleton(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @r_line_set_prompt(i8*) #1

declare dso_local i8* @rtrcmd(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @r_cons_println(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @r_cons_fgets(i8*, i32, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @r_core_log_add(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @r_config_set(i32, i8*, i8*) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
