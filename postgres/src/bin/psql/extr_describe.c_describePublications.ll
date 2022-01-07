; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describePublications.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describePublications.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@pset = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [55 x i8] c"The server (version %s) does not support publications.\00", align 1
@.str.1 = private unnamed_addr constant [118 x i8] c"SELECT oid, pubname,\0A  pg_catalog.pg_get_userbyid(pubowner) AS owner,\0A  puballtables, pubinsert, pubupdate, pubdelete\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c", pubtruncate\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\0AFROM pg_catalog.pg_publication\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"pubname\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ORDER BY 2;\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Did not find any publication named \22%s\22.\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Did not find any publications.\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Publication %s\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Owner\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"All tables\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Inserts\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Updates\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Deletes\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Truncates\00", align 1
@.str.16 = private unnamed_addr constant [217 x i8] c"SELECT n.nspname, c.relname\0AFROM pg_catalog.pg_class c,\0A     pg_catalog.pg_namespace n,\0A     pg_catalog.pg_publication_rel pr\0AWHERE c.relnamespace = n.oid\0A  AND c.oid = pr.prrelid\0A  AND pr.prpubid = '%s'\0AORDER BY 1,2\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Tables:\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"    \22%s.%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @describePublications(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 0), align 4
  %22 = icmp slt i32 %21, 100000
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 0), align 4
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %26 = call i32 @formatPGVersionNumber(i32 %24, i32 0, i8* %25, i32 32)
  %27 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 1, i32* %2, align 4
  br label %212

28:                                               ; preds = %1
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 0), align 4
  %30 = icmp sge i32 %29, 110000
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = call i32 @initPQExpBuffer(%struct.TYPE_10__* %4)
  %33 = call i32 (%struct.TYPE_10__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %28
  %39 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 5), align 4
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @processSQLNamePattern(i32 %40, %struct.TYPE_10__* %4, i8* %41, i32 0, i32 0, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* null, i32* null)
  %43 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @PSQLexec(i32 %45)
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  %50 = call i32 @termPQExpBuffer(%struct.TYPE_10__* %4)
  store i32 0, i32* %2, align 4
  br label %212

51:                                               ; preds = %38
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @PQntuples(i32* %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 4), align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %3, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %62)
  br label %66

64:                                               ; preds = %58
  %65 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  br label %67

67:                                               ; preds = %66, %55
  %68 = call i32 @termPQExpBuffer(%struct.TYPE_10__* %4)
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @PQclear(i32* %69)
  store i32 0, i32* %2, align 4
  br label %212

71:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %205, %71
  %73 = load i32, i32* %5, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @PQntuples(i32* %74)
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %208

77:                                               ; preds = %72
  store i8 108, i8* %9, align 1
  store i32 5, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i8* @PQgetvalue(i32* %78, i32 %79, i32 0)
  store i8* %80, i8** %14, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i8* @PQgetvalue(i32* %81, i32 %82, i32 1)
  store i8* %83, i8** %15, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i8* @PQgetvalue(i32* %84, i32 %85, i32 3)
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 3, i32 0), align 4
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %93, %77
  %97 = call i32 @initPQExpBuffer(%struct.TYPE_10__* %18)
  %98 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load i8*, i8** %15, align 8
  %102 = call i32 (%struct.TYPE_10__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_10__* %18, i8* %100, i8* %101)
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @printTableInit(i32* %20, i32* %19, i32 %104, i32 %105, i32 %106)
  %108 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %109 = call i32 @printTableAddHeader(i32* %20, i32 %108, i32 1, i8 signext 108)
  %110 = call i32 @gettext_noop(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %111 = call i32 @printTableAddHeader(i32* %20, i32 %110, i32 1, i8 signext 108)
  %112 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %113 = call i32 @printTableAddHeader(i32* %20, i32 %112, i32 1, i8 signext 108)
  %114 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %115 = call i32 @printTableAddHeader(i32* %20, i32 %114, i32 1, i8 signext 108)
  %116 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %117 = call i32 @printTableAddHeader(i32* %20, i32 %116, i32 1, i8 signext 108)
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %96
  %121 = call i32 @gettext_noop(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %122 = call i32 @printTableAddHeader(i32* %20, i32 %121, i32 1, i8 signext 108)
  br label %123

123:                                              ; preds = %120, %96
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i8* @PQgetvalue(i32* %124, i32 %125, i32 2)
  %127 = call i32 @printTableAddCell(i32* %20, i8* %126, i32 0, i32 0)
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i8* @PQgetvalue(i32* %128, i32 %129, i32 3)
  %131 = call i32 @printTableAddCell(i32* %20, i8* %130, i32 0, i32 0)
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i8* @PQgetvalue(i32* %132, i32 %133, i32 4)
  %135 = call i32 @printTableAddCell(i32* %20, i8* %134, i32 0, i32 0)
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i8* @PQgetvalue(i32* %136, i32 %137, i32 5)
  %139 = call i32 @printTableAddCell(i32* %20, i8* %138, i32 0, i32 0)
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i8* @PQgetvalue(i32* %140, i32 %141, i32 6)
  %143 = call i32 @printTableAddCell(i32* %20, i8* %142, i32 0, i32 0)
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %123
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i8* @PQgetvalue(i32* %147, i32 %148, i32 7)
  %150 = call i32 @printTableAddCell(i32* %20, i8* %149, i32 0, i32 0)
  br label %151

151:                                              ; preds = %146, %123
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %199, label %154

154:                                              ; preds = %151
  %155 = load i8*, i8** %14, align 8
  %156 = call i32 (%struct.TYPE_10__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([217 x i8], [217 x i8]* @.str.16, i64 0, i64 0), i8* %155)
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32* @PSQLexec(i32 %158)
  store i32* %159, i32** %13, align 8
  %160 = load i32*, i32** %13, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %168, label %162

162:                                              ; preds = %154
  %163 = call i32 @printTableCleanup(i32* %20)
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @PQclear(i32* %164)
  %166 = call i32 @termPQExpBuffer(%struct.TYPE_10__* %4)
  %167 = call i32 @termPQExpBuffer(%struct.TYPE_10__* %18)
  store i32 0, i32* %2, align 4
  br label %212

168:                                              ; preds = %154
  %169 = load i32*, i32** %13, align 8
  %170 = call i32 @PQntuples(i32* %169)
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %12, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %176 = call i32 @printTableAddFooter(i32* %20, i32 %175)
  br label %177

177:                                              ; preds = %174, %171
  store i32 0, i32* %17, align 4
  br label %178

178:                                              ; preds = %193, %177
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %178
  %183 = load i32*, i32** %13, align 8
  %184 = load i32, i32* %17, align 4
  %185 = call i8* @PQgetvalue(i32* %183, i32 %184, i32 0)
  %186 = load i32*, i32** %13, align 8
  %187 = load i32, i32* %17, align 4
  %188 = call i8* @PQgetvalue(i32* %186, i32 %187, i32 1)
  %189 = call i32 (%struct.TYPE_10__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %185, i8* %188)
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @printTableAddFooter(i32* %20, i32 %191)
  br label %193

193:                                              ; preds = %182
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %17, align 4
  br label %178

196:                                              ; preds = %178
  %197 = load i32*, i32** %13, align 8
  %198 = call i32 @PQclear(i32* %197)
  br label %199

199:                                              ; preds = %196, %151
  %200 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 2), align 4
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 1), align 4
  %202 = call i32 @printTable(i32* %20, i32 %200, i32 0, i32 %201)
  %203 = call i32 @printTableCleanup(i32* %20)
  %204 = call i32 @termPQExpBuffer(%struct.TYPE_10__* %18)
  br label %205

205:                                              ; preds = %199
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %5, align 4
  br label %72

208:                                              ; preds = %72
  %209 = call i32 @termPQExpBuffer(%struct.TYPE_10__* %4)
  %210 = load i32*, i32** %6, align 8
  %211 = call i32 @PQclear(i32* %210)
  store i32 1, i32* %2, align 4
  br label %212

212:                                              ; preds = %208, %162, %67, %49, %23
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_10__*) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_10__*, i8*, i32, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @PSQLexec(i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_10__*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @printTableInit(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @printTableAddHeader(i32*, i32, i32, i8 signext) #1

declare dso_local i32 @gettext_noop(i8*) #1

declare dso_local i32 @printTableAddCell(i32*, i8*, i32, i32) #1

declare dso_local i32 @printTableCleanup(i32*) #1

declare dso_local i32 @printTableAddFooter(i32*, i32) #1

declare dso_local i32 @printTable(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
