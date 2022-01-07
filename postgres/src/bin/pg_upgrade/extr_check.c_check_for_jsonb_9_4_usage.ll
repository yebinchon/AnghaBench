; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_for_jsonb_9_4_usage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_for_jsonb_9_4_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Checking for incompatible \22jsonb\22 data type\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"tables_using_jsonb.txt\00", align 1
@.str.2 = private unnamed_addr constant [352 x i8] c"SELECT n.nspname, c.relname, a.attname FROM\09pg_catalog.pg_class c, \09\09pg_catalog.pg_namespace n, \09\09pg_catalog.pg_attribute a WHERE\09c.oid = a.attrelid AND \09\09NOT a.attisdropped AND \09\09a.atttypid = 'pg_catalog.jsonb'::pg_catalog.regtype AND \09\09c.relnamespace = n.oid AND \09\09n.nspname !~ '^pg_temp_' AND \09\09n.nspname NOT IN ('pg_catalog', 'information_schema')\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nspname\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"relname\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"attname\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"could not open file \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"In database: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"  %s.%s.%s\0A\00", align 1
@PG_REPORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"fatal\0A\00", align 1
@.str.11 = private unnamed_addr constant [282 x i8] c"Your installation contains the \22jsonb\22 data type in user tables.\0AThe internal format of \22jsonb\22 changed during 9.4 beta so this cluster cannot currently\0Abe upgraded.  You can remove the problem tables and restart the upgrade.  A list\0Aof the problem columns is in the file:\0A    %s\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @check_for_jsonb_9_4_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_jsonb_9_4_usage(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %17 = load i32, i32* @MAXPGPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = call i32 @prep_status(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %22 = trunc i64 %18 to i32
  %23 = call i32 @snprintf(i8* %20, i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %100, %1
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %103

31:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %15, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32* @connectToServer(%struct.TYPE_8__* %39, i8* %42)
  store i32* %43, i32** %16, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = call i32* @executeQueryOrDie(i32* %44, i8* getelementptr inbounds ([352 x i8], [352 x i8]* @.str.2, i64 0, i64 0))
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @PQntuples(i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @PQfnumber(i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %49, i32* %12, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @PQfnumber(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %51, i32* %13, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @PQfnumber(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 %53, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %92, %31
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %95

58:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = call i32* @fopen_priv(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %62, i32** %4, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @strerror(i32 %65)
  %67 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %20, i32 %66)
  br label %68

68:                                               ; preds = %64, %61, %58
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %75)
  store i32 1, i32* %9, align 4
  br label %77

77:                                               ; preds = %71, %68
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i8* @PQgetvalue(i32* %79, i32 %80, i32 %81)
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i8* @PQgetvalue(i32* %83, i32 %84, i32 %85)
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i8* @PQgetvalue(i32* %87, i32 %88, i32 %89)
  %91 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %82, i8* %86, i8* %90)
  br label %92

92:                                               ; preds = %77
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %54

95:                                               ; preds = %54
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @PQclear(i32* %96)
  %98 = load i32*, i32** %16, align 8
  %99 = call i32 @PQfinish(i32* %98)
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %24

103:                                              ; preds = %24
  %104 = load i32*, i32** %4, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @fclose(i32* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* @PG_REPORT, align 4
  %114 = call i32 @pg_log(i32 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %115 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([282 x i8], [282 x i8]* @.str.11, i64 0, i64 0), i8* %20)
  br label %118

116:                                              ; preds = %109
  %117 = call i32 (...) @check_ok()
  br label %118

118:                                              ; preds = %116, %112
  %119 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %119)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @prep_status(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i32* @connectToServer(%struct.TYPE_8__*, i8*) #2

declare dso_local i32* @executeQueryOrDie(i32*, i8*) #2

declare dso_local i32 @PQntuples(i32*) #2

declare dso_local i32 @PQfnumber(i32*, i8*) #2

declare dso_local i32* @fopen_priv(i8*, i8*) #2

declare dso_local i32 @pg_fatal(i8*, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #2

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #2

declare dso_local i32 @PQclear(i32*) #2

declare dso_local i32 @PQfinish(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @pg_log(i32, i8*) #2

declare dso_local i32 @check_ok(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
