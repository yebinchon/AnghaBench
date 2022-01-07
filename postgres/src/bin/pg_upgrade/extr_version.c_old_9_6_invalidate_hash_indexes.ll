; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_version.c_old_9_6_invalidate_hash_indexes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_version.c_old_9_6_invalidate_hash_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"reindex_hash.sql\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Checking for hash indexes\00", align 1
@.str.2 = private unnamed_addr constant [233 x i8] c"SELECT n.nspname, c.relname FROM\09pg_catalog.pg_class c, \09\09pg_catalog.pg_index i, \09\09pg_catalog.pg_am a, \09\09pg_catalog.pg_namespace n WHERE\09i.indexrelid = c.oid AND \09\09c.relam = a.oid AND \09\09c.relnamespace = n.oid AND \09\09a.amname = 'hash'\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nspname\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"relname\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"could not open file \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"REINDEX INDEX %s.%s;\0A\00", align 1
@.str.8 = private unnamed_addr constant [232 x i8] c"UPDATE pg_catalog.pg_index i SET\09indisvalid = false FROM\09pg_catalog.pg_class c, \09\09pg_catalog.pg_am a, \09\09pg_catalog.pg_namespace n WHERE\09i.indexrelid = c.oid AND \09\09c.relam = a.oid AND \09\09c.relnamespace = n.oid AND \09\09a.amname = 'hash'\00", align 1
@PG_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.10 = private unnamed_addr constant [236 x i8] c"\0AYour installation contains hash indexes.  These indexes have different\0Ainternal formats between your old and new clusters, so they must be\0Areindexed with the REINDEX command.  After upgrading, you will be given\0AREINDEX instructions.\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [326 x i8] c"\0AYour installation contains hash indexes.  These indexes have different\0Ainternal formats between your old and new clusters, so they must be\0Areindexed with the REINDEX command.  The file\0A    %s\0Awhen executed by psql by the database superuser will recreate all invalid\0Aindexes; until then, none of these indexes will be used.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @old_9_6_invalidate_hash_indexes(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %18 = call i32 @prep_status(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %112, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %115

26:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 %32
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %15, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @connectToServer(%struct.TYPE_13__* %34, i32 %37)
  store i32* %38, i32** %16, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = call i32* @executeQueryOrDie(i32* %39, i8* getelementptr inbounds ([233 x i8], [233 x i8]* @.str.2, i64 0, i64 0))
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @PQntuples(i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @PQfnumber(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %44, i32* %13, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @PQfnumber(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %46, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %94, %26
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %47
  store i32 1, i32* %7, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %93, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** %6, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i8*, i8** %8, align 8
  %59 = call i32* @fopen_priv(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %59, i32** %6, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @strerror(i32 %63)
  %65 = call i32 @pg_fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %62, i32 %64)
  br label %66

66:                                               ; preds = %61, %57, %54
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %66
  %70 = call i32 @initPQExpBuffer(%struct.TYPE_11__* %17)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @appendPsqlMetaConnect(%struct.TYPE_11__* %17, i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @fputs(i32 %76, i32* %77)
  %79 = call i32 @termPQExpBuffer(%struct.TYPE_11__* %17)
  store i32 1, i32* %10, align 4
  br label %80

80:                                               ; preds = %69, %66
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @PQgetvalue(i32* %82, i32 %83, i32 %84)
  %86 = call i8* @quote_identifier(i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @PQgetvalue(i32* %87, i32 %88, i32 %89)
  %91 = call i8* @quote_identifier(i32 %90)
  %92 = call i32 @fprintf(i32* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %86, i8* %91)
  br label %93

93:                                               ; preds = %80, %51
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %47

97:                                               ; preds = %47
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @PQclear(i32* %98)
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32*, i32** %16, align 8
  %107 = call i32* @executeQueryOrDie(i32* %106, i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str.8, i64 0, i64 0))
  %108 = call i32 @PQclear(i32* %107)
  br label %109

109:                                              ; preds = %105, %102, %97
  %110 = load i32*, i32** %16, align 8
  %111 = call i32 @PQfinish(i32* %110)
  br label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %19

115:                                              ; preds = %19
  %116 = load i32*, i32** %6, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @fclose(i32* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load i32, i32* @PG_WARNING, align 4
  %126 = call i32 @report_status(i32 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @PG_WARNING, align 4
  %131 = call i32 (i32, i8*, ...) @pg_log(i32 %130, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.10, i64 0, i64 0))
  br label %136

132:                                              ; preds = %124
  %133 = load i32, i32* @PG_WARNING, align 4
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 (i32, i8*, ...) @pg_log(i32 %133, i8* getelementptr inbounds ([326 x i8], [326 x i8]* @.str.11, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %132, %129
  br label %139

137:                                              ; preds = %121
  %138 = call i32 (...) @check_ok()
  br label %139

139:                                              ; preds = %137, %136
  ret void
}

declare dso_local i32 @prep_status(i8*) #1

declare dso_local i32* @connectToServer(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @executeQueryOrDie(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i32* @fopen_priv(i8*, i8*) #1

declare dso_local i32 @pg_fatal(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_11__*) #1

declare dso_local i32 @appendPsqlMetaConnect(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @fputs(i32, i32*) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_11__*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i8* @quote_identifier(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @report_status(i32, i8*) #1

declare dso_local i32 @pg_log(i32, i8*, ...) #1

declare dso_local i32 @check_ok(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
