; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_create_script_for_cluster_analyze.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_create_script_for_cluster_analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [39 x i8] c"Creating script to analyze new cluster\00", align 1
@os_info = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"-U \00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%sanalyze_new_cluster.%s\00", align 1
@SCRIPT_PREFIX = common dso_local global i32 0, align 4
@SCRIPT_EXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"could not open file \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"#!/bin/sh\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"echo %sThis script will generate minimal optimizer statistics rapidly%s\0A\00", align 1
@ECHO_QUOTE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [74 x i8] c"echo %sso your system is usable, and then gather statistics twice more%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"echo %swith increasing accuracy.  When it is done, your system will%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"echo %shave the default level of optimizer statistics.%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"echo%s\0A\0A\00", align 1
@ECHO_BLANK = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [75 x i8] c"echo %sIf you have used ALTER TABLE to modify the statistics target for%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"echo %sany tables, you might want to remove them and restore them after%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [82 x i8] c"echo %srunning this script because they will delay fast statistics generation.%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [78 x i8] c"echo %sIf you would like default statistics as quickly as possible, cancel%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"echo %sthis script and run:%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"echo %s    \22%s/vacuumdb\22 %s--all %s%s\0A\00", align 1
@new_cluster = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@old_cluster = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"--analyze-only\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"--analyze\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"\22%s/vacuumdb\22 %s--all --analyze-in-stages\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"\22%s/vacuumdb\22 %s--all\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"echo %sDone%s\0A\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [51 x i8] c"could not add execute permission to file \22%s\22: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_script_for_cluster_analyze(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  store i8** %0, i8*** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = call i32 @prep_status(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @initPQExpBuffer(%struct.TYPE_10__* %4)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @os_info, i32 0, i32 1), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @os_info, i32 0, i32 0), align 8
  %12 = call i32 @appendShellString(%struct.TYPE_10__* %4, i32 %11)
  %13 = call i32 @appendPQExpBufferChar(%struct.TYPE_10__* %4, i8 signext 32)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @SCRIPT_PREFIX, align 4
  %16 = load i32, i32* @SCRIPT_EXT, align 4
  %17 = call i8* @psprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i8**, i8*** %2, align 8
  store i8* %17, i8** %18, align 8
  %19 = load i8**, i8*** %2, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i32* @fopen_priv(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %21, i32** %3, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load i8**, i8*** %2, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 @pg_fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %25, i32 %27)
  br label %29

29:                                               ; preds = %23, %14
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = load i8*, i8** @ECHO_QUOTE, align 8
  %34 = load i8*, i8** @ECHO_QUOTE, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i8* %33, i8* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** @ECHO_QUOTE, align 8
  %38 = load i8*, i8** @ECHO_QUOTE, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i8* %37, i8* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i8*, i8** @ECHO_QUOTE, align 8
  %42 = load i8*, i8** @ECHO_QUOTE, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i64 0, i64 0), i8* %41, i8* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i8*, i8** @ECHO_QUOTE, align 8
  %46 = load i8*, i8** @ECHO_QUOTE, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0), i8* %45, i8* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i8*, i8** @ECHO_BLANK, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load i8*, i8** @ECHO_QUOTE, align 8
  %53 = load i8*, i8** @ECHO_QUOTE, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.11, i64 0, i64 0), i8* %52, i8* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i8*, i8** @ECHO_QUOTE, align 8
  %57 = load i8*, i8** @ECHO_QUOTE, align 8
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i64 0, i64 0), i8* %56, i8* %57)
  %59 = load i32*, i32** %3, align 8
  %60 = load i8*, i8** @ECHO_QUOTE, align 8
  %61 = load i8*, i8** @ECHO_QUOTE, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.13, i64 0, i64 0), i8* %60, i8* %61)
  %63 = load i32*, i32** %3, align 8
  %64 = load i8*, i8** @ECHO_BLANK, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load i8*, i8** @ECHO_QUOTE, align 8
  %68 = load i8*, i8** @ECHO_QUOTE, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.14, i64 0, i64 0), i8* %67, i8* %68)
  %70 = load i32*, i32** %3, align 8
  %71 = load i8*, i8** @ECHO_QUOTE, align 8
  %72 = load i8*, i8** @ECHO_QUOTE, align 8
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* %71, i8* %72)
  %74 = load i32*, i32** %3, align 8
  %75 = load i8*, i8** @ECHO_QUOTE, align 8
  %76 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @new_cluster, i32 0, i32 0), align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @old_cluster, i32 0, i32 0), align 4
  %80 = call i32 @GET_MAJOR_VERSION(i32 %79)
  %81 = icmp sge i32 %80, 804
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)
  %84 = load i8*, i8** @ECHO_QUOTE, align 8
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i8* %75, i8* %76, i8* %78, i8* %83, i8* %84)
  %86 = load i32*, i32** %3, align 8
  %87 = load i8*, i8** @ECHO_BLANK, align 8
  %88 = call i32 (i32*, i8*, ...) @fprintf(i32* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %87)
  %89 = load i32*, i32** %3, align 8
  %90 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @new_cluster, i32 0, i32 0), align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0), i8* %90, i8* %92)
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @old_cluster, i32 0, i32 0), align 4
  %95 = call i32 @GET_MAJOR_VERSION(i32 %94)
  %96 = icmp slt i32 %95, 804
  br i1 %96, label %97, label %103

97:                                               ; preds = %29
  %98 = load i32*, i32** %3, align 8
  %99 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @new_cluster, i32 0, i32 0), align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* %99, i8* %101)
  br label %103

103:                                              ; preds = %97, %29
  %104 = load i32*, i32** %3, align 8
  %105 = load i8*, i8** @ECHO_BLANK, align 8
  %106 = call i32 (i32*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %105)
  %107 = load i32*, i32** %3, align 8
  %108 = load i8*, i8** @ECHO_QUOTE, align 8
  %109 = load i8*, i8** @ECHO_QUOTE, align 8
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* %108, i8* %109)
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @fclose(i32* %111)
  %113 = load i8**, i8*** %2, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* @S_IRWXU, align 4
  %116 = call i64 @chmod(i8* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %103
  %119 = load i8**, i8*** %2, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* @errno, align 4
  %122 = call i32 @strerror(i32 %121)
  %123 = call i32 @pg_fatal(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i64 0, i64 0), i8* %120, i32 %122)
  br label %124

124:                                              ; preds = %118, %103
  %125 = call i32 @termPQExpBuffer(%struct.TYPE_10__* %4)
  %126 = call i32 (...) @check_ok()
  ret void
}

declare dso_local i32 @prep_status(i8*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_10__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @appendShellString(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_10__*, i8 signext) #1

declare dso_local i8* @psprintf(i8*, i32, i32) #1

declare dso_local i32* @fopen_priv(i8*, i8*) #1

declare dso_local i32 @pg_fatal(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_10__*) #1

declare dso_local i32 @check_ok(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
