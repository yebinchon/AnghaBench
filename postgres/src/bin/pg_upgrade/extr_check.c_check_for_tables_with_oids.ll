; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_for_tables_with_oids.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_for_tables_with_oids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Checking for tables WITH OIDS\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"tables_with_oids.txt\00", align 1
@.str.2 = private unnamed_addr constant [174 x i8] c"SELECT n.nspname, c.relname FROM\09pg_catalog.pg_class c, \09\09pg_catalog.pg_namespace n WHERE\09c.relnamespace = n.oid AND \09\09c.relhasoids AND       n.nspname NOT IN ('pg_catalog')\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nspname\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"relname\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"could not open file \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"In database: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"  %s.%s\0A\00", align 1
@PG_REPORT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"fatal\0A\00", align 1
@.str.10 = private unnamed_addr constant [222 x i8] c"Your installation contains tables declared WITH OIDS, which is not supported\0Aanymore. Consider removing the oid column using\0A    ALTER TABLE ... SET WITHOUT OIDS;\0AA list of tables with the problem is in the file:\0A    %s\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @check_for_tables_with_oids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_tables_with_oids(%struct.TYPE_8__* %0) #0 {
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
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %16 = load i32, i32* @MAXPGPATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = call i32 @prep_status(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = trunc i64 %17 to i32
  %22 = call i32 @snprintf(i8* %19, i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %93, %1
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %96

30:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %14, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32* @connectToServer(%struct.TYPE_8__* %38, i8* %41)
  store i32* %42, i32** %15, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = call i32* @executeQueryOrDie(i32* %43, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.2, i64 0, i64 0))
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @PQntuples(i32* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @PQfnumber(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %48, i32* %12, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @PQfnumber(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %50, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %85, %30
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = call i32* @fopen_priv(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %59, i32** %4, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @strerror(i32 %62)
  %64 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %19, i32 %63)
  br label %65

65:                                               ; preds = %61, %58, %55
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %72)
  store i32 1, i32* %9, align 4
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i8* @PQgetvalue(i32* %76, i32 %77, i32 %78)
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i8* @PQgetvalue(i32* %80, i32 %81, i32 %82)
  %84 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %79, i8* %83)
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %51

88:                                               ; preds = %51
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @PQclear(i32* %89)
  %91 = load i32*, i32** %15, align 8
  %92 = call i32 @PQfinish(i32* %91)
  br label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %23

96:                                               ; preds = %23
  %97 = load i32*, i32** %4, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @fclose(i32* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @PG_REPORT, align 4
  %107 = call i32 @pg_log(i32 %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %108 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.10, i64 0, i64 0), i8* %19)
  br label %111

109:                                              ; preds = %102
  %110 = call i32 (...) @check_ok()
  br label %111

111:                                              ; preds = %109, %105
  %112 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %112)
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
