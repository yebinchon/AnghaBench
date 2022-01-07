; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_ef_ev.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_ef_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8* }

@PSQL_CMD_SKIP_LINE = common dso_local global i64 0, align 8
@OT_WHOLE_LINE = common dso_local global i32 0, align 4
@pset = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [66 x i8] c"The server (version %s) does not support editing function source.\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"The server (version %s) does not support editing view definitions.\00", align 1
@PSQL_CMD_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"no query buffer\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@EditableFunction = common dso_local global i32 0, align 4
@EditableView = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [133 x i8] c"CREATE FUNCTION ( )\0A RETURNS \0A LANGUAGE \0A -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER\0AAS $function$\0A\0A$function$\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"CREATE VIEW  AS\0A SELECT \0A  -- something...\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"AS \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"No changes\00", align 1
@PSQL_CMD_NEWEDIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.TYPE_8__*, i32)* @exec_command_ef_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @exec_command_ef_ev(i32 %0, i32 %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i64, i64* @PSQL_CMD_SKIP_LINE, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %162

20:                                               ; preds = %4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @OT_WHOLE_LINE, align 4
  %23 = call i8* @psql_scan_slash_option(i32 %21, i32 %22, i32* null, i32 1)
  store i8* %23, i8** %10, align 8
  store i32 -1, i32* %11, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 0), align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 80400, i32 70400
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %20
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 0), align 4
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %33 = call i32 @formatPGVersionNumber(i32 %31, i32 0, i8* %32, i32 32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %38 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %42

39:                                               ; preds = %30
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %41 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i64, i64* @PSQL_CMD_ERROR, align 8
  store i64 %43, i64* %9, align 8
  br label %134

44:                                               ; preds = %20
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i64, i64* @PSQL_CMD_ERROR, align 8
  store i64 %49, i64* %9, align 8
  br label %133

50:                                               ; preds = %44
  %51 = load i32, i32* @InvalidOid, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @EditableFunction, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @EditableView, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %14, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @strip_lineno_from_objdesc(i8* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i64, i64* @PSQL_CMD_ERROR, align 8
  store i64 %65, i64* %9, align 8
  br label %132

66:                                               ; preds = %58
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %81, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = call i32 @resetPQExpBuffer(%struct.TYPE_8__* %70)
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %75, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i64 0, i64 0))
  br label %80

77:                                               ; preds = %69
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %78, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %74
  br label %131

81:                                               ; preds = %66
  %82 = load i32, i32* %14, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @lookup_object_oid(i32 %82, i8* %83, i32* %13)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = load i64, i64* @PSQL_CMD_ERROR, align 8
  store i64 %87, i64* %9, align 8
  br label %130

88:                                               ; preds = %81
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = call i32 @get_create_object_cmd(i32 %89, i32 %90, %struct.TYPE_8__* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = load i64, i64* @PSQL_CMD_ERROR, align 8
  store i64 %95, i64* %9, align 8
  br label %129

96:                                               ; preds = %88
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %99
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %15, align 8
  br label %106

106:                                              ; preds = %124, %102
  %107 = load i8*, i8** %15, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %106
  %112 = load i8*, i8** %15, align 8
  %113 = call i64 @strncmp(i8* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %127

116:                                              ; preds = %111
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = load i8*, i8** %15, align 8
  %120 = call i8* @strchr(i8* %119, i8 signext 10)
  store i8* %120, i8** %15, align 8
  %121 = load i8*, i8** %15, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  br label %127

124:                                              ; preds = %116
  %125 = load i8*, i8** %15, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %15, align 8
  br label %106

127:                                              ; preds = %123, %115, %106
  br label %128

128:                                              ; preds = %127, %99, %96
  br label %129

129:                                              ; preds = %128, %94
  br label %130

130:                                              ; preds = %129, %86
  br label %131

131:                                              ; preds = %130, %80
  br label %132

132:                                              ; preds = %131, %64
  br label %133

133:                                              ; preds = %132, %47
  br label %134

134:                                              ; preds = %133, %42
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* @PSQL_CMD_ERROR, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %134
  store i32 0, i32* %16, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @do_edit(i32* null, %struct.TYPE_8__* %139, i32 %140, i32* %16)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %138
  %144 = load i64, i64* @PSQL_CMD_ERROR, align 8
  store i64 %144, i64* %9, align 8
  br label %154

145:                                              ; preds = %138
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = call i32 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %150 = call i32 @puts(i32 %149)
  br label %153

151:                                              ; preds = %145
  %152 = load i64, i64* @PSQL_CMD_NEWEDIT, align 8
  store i64 %152, i64* %9, align 8
  br label %153

153:                                              ; preds = %151, %148
  br label %154

154:                                              ; preds = %153, %143
  br label %155

155:                                              ; preds = %154, %134
  %156 = load i8*, i8** %10, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i8*, i8** %10, align 8
  %160 = call i32 @free(i8* %159)
  br label %161

161:                                              ; preds = %158, %155
  br label %165

162:                                              ; preds = %4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @ignore_slash_whole_line(i32 %163)
  br label %165

165:                                              ; preds = %162, %161
  %166 = load i64, i64* %9, align 8
  ret i64 %166
}

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @strip_lineno_from_objdesc(i8*) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @lookup_object_oid(i32, i8*, i32*) #1

declare dso_local i32 @get_create_object_cmd(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @do_edit(i32*, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @puts(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ignore_slash_whole_line(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
