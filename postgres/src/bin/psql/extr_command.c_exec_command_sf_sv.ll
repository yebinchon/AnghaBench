; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_sf_sv.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_sf_sv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@EditableFunction = common dso_local global i32 0, align 4
@EditableView = common dso_local global i32 0, align 4
@OT_WHOLE_LINE = common dso_local global i32 0, align 4
@pset = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [66 x i8] c"The server (version %s) does not support showing function source.\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"The server (version %s) does not support showing view definitions.\00", align 1
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"function name is required\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"view name is required\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"AS \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @exec_command_sf_sv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_sf_sv(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %136

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32* @strchr(i8* %23, i8 signext 43)
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @InvalidOid, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @EditableFunction, align 4
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @EditableView, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %14, align 4
  %36 = call %struct.TYPE_9__* (...) @createPQExpBuffer()
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %11, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @OT_WHOLE_LINE, align 4
  %39 = call i8* @psql_scan_slash_option(i32 %37, i32 %38, i32* null, i32 1)
  store i8* %39, i8** %12, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pset, i32 0, i32 0), align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 80400, i32 70400
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %34
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pset, i32 0, i32 0), align 8
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %49 = call i32 @formatPGVersionNumber(i32 %47, i32 0, i8* %48, i32 32)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %54 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %58

55:                                               ; preds = %46
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %57 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* @PSQL_CMD_ERROR, align 4
  store i32 %59, i32* %9, align 4
  br label %127

60:                                               ; preds = %34
  %61 = load i8*, i8** %12, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %70

68:                                               ; preds = %63
  %69 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %66
  %71 = load i32, i32* @PSQL_CMD_ERROR, align 4
  store i32 %71, i32* %9, align 4
  br label %126

72:                                               ; preds = %60
  %73 = load i32, i32* %14, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @lookup_object_oid(i32 %73, i8* %74, i32* %13)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @PSQL_CMD_ERROR, align 4
  store i32 %78, i32* %9, align 4
  br label %125

79:                                               ; preds = %72
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %83 = call i32 @get_create_object_cmd(i32 %80, i32 %81, %struct.TYPE_9__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @PSQL_CMD_ERROR, align 4
  store i32 %86, i32* %9, align 4
  br label %124

87:                                               ; preds = %79
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pset, i32 0, i32 1), align 8
  %89 = load i32*, i32** @stdout, align 8
  %90 = icmp eq i32* %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %93 = call i32 @count_lines_in_buf(%struct.TYPE_9__* %92)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = call i32* @PageOutput(i32 %94, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pset, i32 0, i32 2, i32 0))
  store i32* %95, i32** %16, align 8
  store i32 1, i32* %17, align 4
  br label %98

96:                                               ; preds = %87
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pset, i32 0, i32 1), align 8
  store i32* %97, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32*, i32** %16, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* null
  %110 = call i32 @print_with_linenumbers(i32* %102, i32 %105, i8* %109)
  br label %117

111:                                              ; preds = %98
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %16, align 8
  %116 = call i32 @fputs(i32 %114, i32* %115)
  br label %117

117:                                              ; preds = %111, %101
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32*, i32** %16, align 8
  %122 = call i32 @ClosePager(i32* %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %85
  br label %125

125:                                              ; preds = %124, %77
  br label %126

126:                                              ; preds = %125, %70
  br label %127

127:                                              ; preds = %126, %58
  %128 = load i8*, i8** %12, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i8*, i8** %12, align 8
  %132 = call i32 @free(i8* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %135 = call i32 @destroyPQExpBuffer(%struct.TYPE_9__* %134)
  br label %139

136:                                              ; preds = %4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @ignore_slash_whole_line(i32 %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* %9, align 4
  ret i32 %140
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_9__* @createPQExpBuffer(...) #1

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @lookup_object_oid(i32, i8*, i32*) #1

declare dso_local i32 @get_create_object_cmd(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @count_lines_in_buf(%struct.TYPE_9__*) #1

declare dso_local i32* @PageOutput(i32, i32*) #1

declare dso_local i32 @print_with_linenumbers(i32*, i32, i8*) #1

declare dso_local i32 @fputs(i32, i32*) #1

declare dso_local i32 @ClosePager(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @ignore_slash_whole_line(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
