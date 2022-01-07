; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_function.c_check_loadable_libraries.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_function.c_check_loadable_libraries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@new_cluster = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"template1\00", align 1
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Checking for presence of required libraries\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"loadable_libraries.txt\00", align 1
@os_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@library_name_compare = common dso_local global i32 0, align 4
@old_cluster = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"$libdir/plpython\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"$libdir/plpython2\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"LOAD '\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"could not open file \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"could not load library \22%s\22: %s\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"In database: %s\0A\00", align 1
@PG_REPORT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"fatal\0A\00", align 1
@.str.12 = private unnamed_addr constant [262 x i8] c"Your installation references loadable libraries that are missing from the\0Anew installation.  You can add these libraries to the new installation,\0Aor remove the functions using them from the old installation.  A list of\0Aproblem libraries is in the file:\0A    %s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_loadable_libraries() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = call i32* @connectToServer(i32* @new_cluster, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %1, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load i32, i32* @MAXPGPATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = call i32 @prep_status(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %19 = trunc i64 %15 to i32
  %20 = call i32 @snprintf(i8* %17, i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @os_info, i32 0, i32 1), align 8
  %22 = bitcast %struct.TYPE_8__* %21 to i8*
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @os_info, i32 0, i32 0), align 8
  %24 = load i32, i32* @library_name_compare, align 4
  %25 = call i32 @qsort(i8* %22, i32 %23, i32 4, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %126, %0
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @os_info, i32 0, i32 0), align 8
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %129

30:                                               ; preds = %26
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @os_info, i32 0, i32 1), align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strlen(i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @MAXPGPATH, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 7, %40
  %42 = add nsw i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %10, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %11, align 8
  %46 = load i32, i32* %2, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %30
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @os_info, i32 0, i32 1), align 8
  %51 = load i32, i32* %2, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %49, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %107

59:                                               ; preds = %48, %30
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @old_cluster, i32 0, i32 1), align 8
  %61 = call i32 @GET_MAJOR_VERSION(i32 %60)
  %62 = icmp slt i32 %61, 901
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strlen(i8* %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %67, %63, %59
  %71 = call i32 @strcpy(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32*, i32** %1, align 8
  %73 = call i32 @strlen(i8* %45)
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %45, i64 %74
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @PQescapeStringConn(i32* %72, i8* %75, i8* %76, i32 %77, i32* null)
  %79 = call i32 @strcat(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %80 = load i32*, i32** %1, align 8
  %81 = call i32* @PQexec(i32* %80, i8* %45)
  store i32* %81, i32** %12, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = call i64 @PQresultStatus(i32* %82)
  %84 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %70
  store i32 1, i32* %5, align 4
  store i32 1, i32* %3, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = call i32* @fopen_priv(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %90, i32** %4, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* @errno, align 4
  %94 = call i32 @strerror(i32 %93)
  %95 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %17, i32 %94)
  br label %96

96:                                               ; preds = %92, %89, %86
  %97 = load i32*, i32** %4, align 8
  %98 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %99 = load i8*, i8** %8, align 8
  %100 = load i32*, i32** %1, align 8
  %101 = call i8* @PQerrorMessage(i32* %100)
  %102 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %97, i8* %98, i8* %99, i8* %101)
  br label %104

103:                                              ; preds = %70
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %96
  %105 = load i32*, i32** %12, align 8
  %106 = call i32 @PQclear(i32* %105)
  br label %107

107:                                              ; preds = %104, %48
  %108 = load i32, i32* %3, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = load i32*, i32** %4, align 8
  %112 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @old_cluster, i32 0, i32 0, i32 0), align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @os_info, i32 0, i32 1), align 8
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %111, i8* %112, i8* %122)
  br label %124

124:                                              ; preds = %110, %107
  %125 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %125)
  br label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %2, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %2, align 4
  br label %26

129:                                              ; preds = %26
  %130 = load i32*, i32** %1, align 8
  %131 = call i32 @PQfinish(i32* %130)
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @fclose(i32* %135)
  %137 = load i32, i32* @PG_REPORT, align 4
  %138 = call i32 @pg_log(i32 %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %139 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.12, i64 0, i64 0), i8* %17)
  br label %142

140:                                              ; preds = %129
  %141 = call i32 (...) @check_ok()
  br label %142

142:                                              ; preds = %140, %134
  %143 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %143)
  ret void
}

declare dso_local i32* @connectToServer(i32*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @prep_status(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @PQescapeStringConn(i32*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32* @PQexec(i32*, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32* @fopen_priv(i8*, i8*) #1

declare dso_local i32 @pg_fatal(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @pg_log(i32, i8*) #1

declare dso_local i32 @check_ok(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
