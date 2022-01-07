; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_log.c_textlog_chat.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_log.c_textlog_chat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"cfg.user\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Type '/help' for commands:\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"[%s]> \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"/help\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"/quit           quit the chat (same as ^D)\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"/name <nick>    set cfg.user name\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"/log            show full log\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"/clear          clear text log messages\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"/name \00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"* '%s' is now known as '%s'\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"/log\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"/clear\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"T-\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"/quit\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Unknown command: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"[%s] %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @textlog_chat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @textlog_chat(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [2048 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @r_config_get(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %7, align 8
  %13 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %14, i32 63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %18 = call i32 @r_line_set_prompt(i8* %17)
  br label %19

19:                                               ; preds = %114, %36, %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @r_core_log_list(%struct.TYPE_8__* %20, i32 %21, i32 0, i32 0)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %29 = call i64 @r_cons_fgets(i8* %28, i32 1023, i32 0, i32* null)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %115

32:                                               ; preds = %19
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %19

37:                                               ; preds = %32
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %114

46:                                               ; preds = %37
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %48 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %54 = getelementptr inbounds i8, i8* %53, i64 6
  %55 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %51, i32 2047, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %52, i8* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %58 = call i32 @r_core_log_add(%struct.TYPE_8__* %56, i8* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %63 = getelementptr inbounds i8, i8* %62, i64 6
  %64 = call i32 @r_config_set(i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @r_config_get(i32 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %68, i8** %7, align 8
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %69, i32 63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %73 = call i32 @r_line_set_prompt(i8* %72)
  store i32 0, i32* %2, align 4
  br label %115

74:                                               ; preds = %46
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = call i32 @r_core_log_list(%struct.TYPE_8__* %79, i32 0, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %115

81:                                               ; preds = %74
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = call i32 @r_core_cmd0(%struct.TYPE_8__* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %115

88:                                               ; preds = %81
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %115

93:                                               ; preds = %88
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %95 = load i8, i8* %94, align 16
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 47
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %100 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %99)
  br label %109

101:                                              ; preds = %93
  %102 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %105 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %102, i32 2048, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* %103, i8* %104)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %108 = call i32 @r_core_log_add(%struct.TYPE_8__* %106, i8* %107)
  br label %109

109:                                              ; preds = %101, %98
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %41
  br label %19

115:                                              ; preds = %92, %85, %78, %50, %31
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @r_line_set_prompt(i8*) #1

declare dso_local i32 @r_core_log_list(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i64 @r_cons_fgets(i8*, i32, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @r_core_log_add(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @r_config_set(i32, i8*, i8*) #1

declare dso_local i32 @r_core_cmd0(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
