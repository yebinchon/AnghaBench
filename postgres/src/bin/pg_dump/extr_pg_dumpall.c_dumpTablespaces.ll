; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dumpTablespaces.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dumpTablespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }

@server_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [905 x i8] c"SELECT oid, spcname, pg_catalog.pg_get_userbyid(spcowner) AS spcowner, pg_catalog.pg_tablespace_location(oid), (SELECT array_agg(acl ORDER BY row_n) FROM   (SELECT acl, row_n FROM      unnest(coalesce(spcacl,acldefault('t',spcowner)))      WITH ORDINALITY AS perm(acl,row_n)    WHERE NOT EXISTS (      SELECT 1      FROM unnest(acldefault('t',spcowner))        AS init(init_acl)      WHERE acl = init_acl)) AS spcacls)  AS spcacl, (SELECT array_agg(acl ORDER BY row_n) FROM   (SELECT acl, row_n FROM      unnest(acldefault('t',spcowner))      WITH ORDINALITY AS initp(acl,row_n)    WHERE NOT EXISTS (      SELECT 1      FROM unnest(coalesce(spcacl,acldefault('t',spcowner)))        AS permp(orig_acl)      WHERE acl = orig_acl)) AS rspcacls)  AS rspcacl, array_to_string(spcoptions, ', '),pg_catalog.shobj_description(oid, 'pg_tablespace') FROM pg_catalog.pg_tablespace WHERE spcname !~ '^pg_' ORDER BY 1\00", align 1
@.str.1 = private unnamed_addr constant [284 x i8] c"SELECT oid, spcname, pg_catalog.pg_get_userbyid(spcowner) AS spcowner, pg_catalog.pg_tablespace_location(oid), spcacl, '' as rspcacl, array_to_string(spcoptions, ', '),pg_catalog.shobj_description(oid, 'pg_tablespace') FROM pg_catalog.pg_tablespace WHERE spcname !~ '^pg_' ORDER BY 1\00", align 1
@.str.2 = private unnamed_addr constant [257 x i8] c"SELECT oid, spcname, pg_catalog.pg_get_userbyid(spcowner) AS spcowner, spclocation, spcacl, '' as rspcacl, array_to_string(spcoptions, ', '),pg_catalog.shobj_description(oid, 'pg_tablespace') FROM pg_catalog.pg_tablespace WHERE spcname !~ '^pg_' ORDER BY 1\00", align 1
@.str.3 = private unnamed_addr constant [229 x i8] c"SELECT oid, spcname, pg_catalog.pg_get_userbyid(spcowner) AS spcowner, spclocation, spcacl, '' as rspcacl, null, pg_catalog.shobj_description(oid, 'pg_tablespace') FROM pg_catalog.pg_tablespace WHERE spcname !~ '^pg_' ORDER BY 1\00", align 1
@.str.4 = private unnamed_addr constant [183 x i8] c"SELECT oid, spcname, pg_catalog.pg_get_userbyid(spcowner) AS spcowner, spclocation, spcacl, '' as rspcacl, null, null FROM pg_catalog.pg_tablespace WHERE spcname !~ '^pg_' ORDER BY 1\00", align 1
@OPF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"--\0A-- Tablespaces\0A--\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"CREATE TABLESPACE %s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" OWNER %s\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" LOCATION \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"ALTER TABLESPACE %s SET (%s);\0A\00", align 1
@skip_acls = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"TABLESPACE\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"could not parse ACL list (%s) for tablespace \22%s\22\00", align 1
@no_comments = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"COMMENT ON TABLESPACE %s IS \00", align 1
@no_security_labels = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"pg_tablespace\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dumpTablespaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpTablespaces(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %15 = load i32, i32* @server_version, align 4
  %16 = icmp sge i32 %15, 90600
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** %2, align 8
  %19 = call i32* @executeQuery(i32* %18, i8* getelementptr inbounds ([905 x i8], [905 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %3, align 8
  br label %44

20:                                               ; preds = %1
  %21 = load i32, i32* @server_version, align 4
  %22 = icmp sge i32 %21, 90200
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %2, align 8
  %25 = call i32* @executeQuery(i32* %24, i8* getelementptr inbounds ([284 x i8], [284 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %3, align 8
  br label %43

26:                                               ; preds = %20
  %27 = load i32, i32* @server_version, align 4
  %28 = icmp sge i32 %27, 90000
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %2, align 8
  %31 = call i32* @executeQuery(i32* %30, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.2, i64 0, i64 0))
  store i32* %31, i32** %3, align 8
  br label %42

32:                                               ; preds = %26
  %33 = load i32, i32* @server_version, align 4
  %34 = icmp sge i32 %33, 80200
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %2, align 8
  %37 = call i32* @executeQuery(i32* %36, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.3, i64 0, i64 0))
  store i32* %37, i32** %3, align 8
  br label %41

38:                                               ; preds = %32
  %39 = load i32*, i32** %2, align 8
  %40 = call i32* @executeQuery(i32* %39, i8* getelementptr inbounds ([183 x i8], [183 x i8]* @.str.4, i64 0, i64 0))
  store i32* %40, i32** %3, align 8
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %42, %23
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @PQntuples(i32* %45)
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @OPF, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %44
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %178, %51
  %53 = load i32, i32* %4, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @PQntuples(i32* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %181

57:                                               ; preds = %52
  %58 = call %struct.TYPE_9__* (...) @createPQExpBuffer()
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %5, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i8* @PQgetvalue(i32* %59, i32 %60, i32 0)
  %62 = call i32 @atooid(i8* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i8* @PQgetvalue(i32* %63, i32 %64, i32 1)
  store i8* %65, i8** %7, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i8* @PQgetvalue(i32* %66, i32 %67, i32 2)
  store i8* %68, i8** %8, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i8* @PQgetvalue(i32* %69, i32 %70, i32 3)
  store i8* %71, i8** %9, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i8* @PQgetvalue(i32* %72, i32 %73, i32 4)
  store i8* %74, i8** %10, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i8* @PQgetvalue(i32* %75, i32 %76, i32 5)
  store i8* %77, i8** %11, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i8* @PQgetvalue(i32* %78, i32 %79, i32 6)
  store i8* %80, i8** %12, align 8
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i8* @PQgetvalue(i32* %81, i32 %82, i32 7)
  store i8* %83, i8** %13, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i8* @fmtId(i8* %84)
  %86 = call i8* @pg_strdup(i8* %85)
  store i8* %86, i8** %14, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 (%struct.TYPE_9__*, i8*, i8*, ...) @appendPQExpBuffer(%struct.TYPE_9__* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i8* @fmtId(i8* %91)
  %93 = call i32 (%struct.TYPE_9__*, i8*, i8*, ...) @appendPQExpBuffer(%struct.TYPE_9__* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = call i32 @appendPQExpBufferStr(%struct.TYPE_9__* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @appendStringLiteralConn(%struct.TYPE_9__* %96, i8* %97, i32* %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = call i32 @appendPQExpBufferStr(%struct.TYPE_9__* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %102 = load i8*, i8** %12, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %57
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 (%struct.TYPE_9__*, i8*, i8*, ...) @appendPQExpBuffer(%struct.TYPE_9__* %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %112, i8* %113)
  br label %115

115:                                              ; preds = %110, %104, %57
  %116 = load i32, i32* @skip_acls, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %134, label %118

118:                                              ; preds = %115
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* @server_version, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = call i32 @buildACLCommands(i8* %119, i32* null, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %120, i8* %121, i8* %122, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i32 %123, %struct.TYPE_9__* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %118
  %128 = load i8*, i8** %10, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @pg_log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i8* %128, i8* %129)
  %131 = load i32*, i32** %2, align 8
  %132 = call i32 @PQfinish(i32* %131)
  %133 = call i32 @exit_nicely(i32 1)
  br label %134

134:                                              ; preds = %127, %118, %115
  %135 = load i32, i32* @no_comments, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %156, label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** %13, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %156

140:                                              ; preds = %137
  %141 = load i8*, i8** %13, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %140
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = call i32 (%struct.TYPE_9__*, i8*, i8*, ...) @appendPQExpBuffer(%struct.TYPE_9__* %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %148)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = load i32*, i32** %2, align 8
  %153 = call i32 @appendStringLiteralConn(%struct.TYPE_9__* %150, i8* %151, i32* %152)
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %155 = call i32 @appendPQExpBufferStr(%struct.TYPE_9__* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %156

156:                                              ; preds = %146, %140, %137, %134
  %157 = load i32, i32* @no_security_labels, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @server_version, align 4
  %161 = icmp sge i32 %160, 90200
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i32*, i32** %2, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i8*, i8** %7, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %167 = call i32 @buildShSecLabels(i32* %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %164, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %165, %struct.TYPE_9__* %166)
  br label %168

168:                                              ; preds = %162, %159, %156
  %169 = load i32, i32* @OPF, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %172)
  %174 = load i8*, i8** %14, align 8
  %175 = call i32 @free(i8* %174)
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %177 = call i32 @destroyPQExpBuffer(%struct.TYPE_9__* %176)
  br label %178

178:                                              ; preds = %168
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %4, align 4
  br label %52

181:                                              ; preds = %52
  %182 = load i32*, i32** %3, align 8
  %183 = call i32 @PQclear(i32* %182)
  %184 = load i32, i32* @OPF, align 4
  %185 = call i32 (i32, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  ret void
}

declare dso_local i32* @executeQuery(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @createPQExpBuffer(...) #1

declare dso_local i32 @atooid(i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i8* @fmtId(i8*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_9__*, i8*, i8*, ...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @appendStringLiteralConn(%struct.TYPE_9__*, i8*, i32*) #1

declare dso_local i32 @buildACLCommands(i8*, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @pg_log_error(i8*, i8*, i8*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @exit_nicely(i32) #1

declare dso_local i32 @buildShSecLabels(i32*, i8*, i32, i8*, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
