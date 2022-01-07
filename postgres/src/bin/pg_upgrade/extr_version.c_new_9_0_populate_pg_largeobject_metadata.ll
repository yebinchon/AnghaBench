; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_version.c_new_9_0_populate_pg_largeobject_metadata.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_version.c_new_9_0_populate_pg_largeobject_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Checking for large objects\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pg_largeobject.sql\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"SELECT count(*) FROM\09pg_catalog.pg_largeobject \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"could not open file \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [102 x i8] c"SELECT pg_catalog.lo_create(t.loid)\0AFROM (SELECT DISTINCT loid FROM pg_catalog.pg_largeobject) AS t;\0A\00", align 1
@PG_WARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.8 = private unnamed_addr constant [230 x i8] c"\0AYour installation contains large objects.  The new database has an\0Aadditional large object permission table.  After upgrading, you will be\0Agiven a command to populate the pg_largeobject_metadata table with\0Adefault permissions.\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [273 x i8] c"\0AYour installation contains large objects.  The new database has an\0Aadditional large object permission table, so default permissions must be\0Adefined for all large objects.  The file\0A    %s\0Awhen executed by psql by the database superuser will set the default\0Apermissions.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @new_9_0_populate_pg_largeobject_metadata(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @MAXPGPATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = call i32 @prep_status(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = trunc i64 %16 to i32
  %21 = call i32 @snprintf(i8* %18, i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %83, %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %86

29:                                               ; preds = %22
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 %35
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %12, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @connectToServer(%struct.TYPE_13__* %37, i32 %40)
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32* @executeQueryOrDie(i32* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @PQfnumber(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @PQgetvalue(i32* %46, i32 0, i32 %47)
  %49 = call i64 @atoi(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** %6, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = call i32* @fopen_priv(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %58, i32** %6, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @strerror(i32 %61)
  %63 = call i32 @pg_fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %18, i32 %62)
  br label %64

64:                                               ; preds = %60, %57, %54
  %65 = call i32 @initPQExpBuffer(%struct.TYPE_11__* %14)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @appendPsqlMetaConnect(%struct.TYPE_11__* %14, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @fputs(i32 %71, i32* %72)
  %74 = call i32 @termPQExpBuffer(%struct.TYPE_11__* %14)
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @fprintf(i32* %75, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %64, %51
  br label %78

78:                                               ; preds = %77, %29
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @PQclear(i32* %79)
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @PQfinish(i32* %81)
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %22

86:                                               ; preds = %22
  %87 = load i32*, i32** %6, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @fclose(i32* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* @PG_WARNING, align 4
  %97 = call i32 @report_status(i32 %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @PG_WARNING, align 4
  %102 = call i32 (i32, i8*, ...) @pg_log(i32 %101, i8* getelementptr inbounds ([230 x i8], [230 x i8]* @.str.8, i64 0, i64 0))
  br label %106

103:                                              ; preds = %95
  %104 = load i32, i32* @PG_WARNING, align 4
  %105 = call i32 (i32, i8*, ...) @pg_log(i32 %104, i8* getelementptr inbounds ([273 x i8], [273 x i8]* @.str.9, i64 0, i64 0), i8* %18)
  br label %106

106:                                              ; preds = %103, %100
  br label %109

107:                                              ; preds = %92
  %108 = call i32 (...) @check_ok()
  br label %109

109:                                              ; preds = %107, %106
  %110 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %110)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @prep_status(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i32* @connectToServer(%struct.TYPE_13__*, i32) #2

declare dso_local i32* @executeQueryOrDie(i32*, i8*) #2

declare dso_local i32 @PQfnumber(i32*, i8*) #2

declare dso_local i64 @atoi(i32) #2

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #2

declare dso_local i32* @fopen_priv(i8*, i8*) #2

declare dso_local i32 @pg_fatal(i8*, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_11__*) #2

declare dso_local i32 @appendPsqlMetaConnect(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @fputs(i32, i32*) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_11__*) #2

declare dso_local i32 @fprintf(i32*, i8*) #2

declare dso_local i32 @PQclear(i32*) #2

declare dso_local i32 @PQfinish(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @report_status(i32, i8*) #2

declare dso_local i32 @pg_log(i32, i8*, ...) #2

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
