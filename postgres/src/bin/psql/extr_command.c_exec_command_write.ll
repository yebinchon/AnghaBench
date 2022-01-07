; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_write.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }

@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@OT_FILEPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"no query buffer\00", align 1
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\\%s: missing required argument\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, %struct.TYPE_4__*, %struct.TYPE_4__*)* @exec_command_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_write(i32 %0, i32 %1, i8* %2, %struct.TYPE_4__* %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %10, align 8
  %16 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %119

19:                                               ; preds = %5
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @OT_FILEPIPE, align 4
  %22 = call i8* @psql_scan_slash_option(i32 %20, i32 %21, i32* null, i32 1)
  store i8* %22, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @PSQL_CMD_ERROR, align 4
  store i32 %27, i32* %11, align 4
  br label %61

28:                                               ; preds = %19
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @PSQL_CMD_ERROR, align 4
  store i32 %34, i32* %11, align 4
  br label %60

35:                                               ; preds = %28
  %36 = call i32 @expand_tilde(i8** %12)
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 124
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  store i32 1, i32* %14, align 4
  %43 = call i32 (...) @disable_sigpipe_trap()
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i32* @popen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %46, i32** %13, align 8
  br label %52

47:                                               ; preds = %35
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @canonicalize_path(i8* %48)
  %50 = load i8*, i8** %12, align 8
  %51 = call i32* @fopen(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %51, i32** %13, align 8
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32*, i32** %13, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* @PSQL_CMD_ERROR, align 4
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %55, %52
  br label %60

60:                                               ; preds = %59, %31
  br label %61

61:                                               ; preds = %60, %25
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %111

64:                                               ; preds = %61
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = icmp ne %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32*, i32** %13, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @fprintf(i32* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  br label %93

78:                                               ; preds = %67, %64
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = icmp ne %struct.TYPE_4__* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32*, i32** %13, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @fprintf(i32* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %86, %81, %78
  br label %93

93:                                               ; preds = %92, %72
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @pclose(i32* %97)
  store i32 %98, i32* %15, align 4
  br label %102

99:                                               ; preds = %93
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @fclose(i32* %100)
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @EOF, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %107)
  %109 = load i32, i32* @PSQL_CMD_ERROR, align 4
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %106, %102
  br label %111

111:                                              ; preds = %110, %61
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 (...) @restore_sigpipe_trap()
  br label %116

116:                                              ; preds = %114, %111
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @free(i8* %117)
  br label %122

119:                                              ; preds = %5
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @ignore_slash_filepipe(i32 %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %11, align 4
  ret i32 %123
}

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @expand_tilde(i8**) #1

declare dso_local i32 @disable_sigpipe_trap(...) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @canonicalize_path(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @restore_sigpipe_trap(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ignore_slash_filepipe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
