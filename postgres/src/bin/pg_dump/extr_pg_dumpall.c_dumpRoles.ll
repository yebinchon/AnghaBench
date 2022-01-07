; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dumpRoles.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dumpRoles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }

@server_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [296 x i8] c"SELECT oid, rolname, rolsuper, rolinherit, rolcreaterole, rolcreatedb, rolcanlogin, rolconnlimit, rolpassword, rolvaliduntil, rolreplication, rolbypassrls, pg_catalog.shobj_description(oid, '%s') as rolcomment, rolname = current_user AS is_current_user FROM %s WHERE rolname !~ '^pg_' ORDER BY 2\00", align 1
@role_catalog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [272 x i8] c"SELECT oid, rolname, rolsuper, rolinherit, rolcreaterole, rolcreatedb, rolcanlogin, rolconnlimit, rolpassword, rolvaliduntil, rolreplication, rolbypassrls, pg_catalog.shobj_description(oid, '%s') as rolcomment, rolname = current_user AS is_current_user FROM %s ORDER BY 2\00", align 1
@.str.2 = private unnamed_addr constant [281 x i8] c"SELECT oid, rolname, rolsuper, rolinherit, rolcreaterole, rolcreatedb, rolcanlogin, rolconnlimit, rolpassword, rolvaliduntil, rolreplication, false as rolbypassrls, pg_catalog.shobj_description(oid, '%s') as rolcomment, rolname = current_user AS is_current_user FROM %s ORDER BY 2\00", align 1
@.str.3 = private unnamed_addr constant [290 x i8] c"SELECT oid, rolname, rolsuper, rolinherit, rolcreaterole, rolcreatedb, rolcanlogin, rolconnlimit, rolpassword, rolvaliduntil, false as rolreplication, false as rolbypassrls, pg_catalog.shobj_description(oid, '%s') as rolcomment, rolname = current_user AS is_current_user FROM %s ORDER BY 2\00", align 1
@.str.4 = private unnamed_addr constant [255 x i8] c"SELECT oid, rolname, rolsuper, rolinherit, rolcreaterole, rolcreatedb, rolcanlogin, rolconnlimit, rolpassword, rolvaliduntil, false as rolreplication, false as rolbypassrls, null as rolcomment, rolname = current_user AS is_current_user FROM %s ORDER BY 2\00", align 1
@.str.5 = private unnamed_addr constant [773 x i8] c"SELECT 0 as oid, usename as rolname, usesuper as rolsuper, true as rolinherit, usesuper as rolcreaterole, usecreatedb as rolcreatedb, true as rolcanlogin, -1 as rolconnlimit, passwd as rolpassword, valuntil as rolvaliduntil, false as rolreplication, false as rolbypassrls, null as rolcomment, usename = current_user AS is_current_user FROM pg_shadow UNION ALL SELECT 0 as oid, groname as rolname, false as rolsuper, true as rolinherit, false as rolcreaterole, false as rolcreatedb, false as rolcanlogin, -1 as rolconnlimit, null::text as rolpassword, null::timestamptz as rolvaliduntil, false as rolreplication, false as rolbypassrls, null as rolcomment, false AS is_current_user FROM pg_group WHERE NOT EXISTS (SELECT 1 FROM pg_shadow  WHERE usename = groname) ORDER BY 2\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"rolsuper\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"rolinherit\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"rolcreaterole\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"rolcreatedb\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"rolcanlogin\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"rolconnlimit\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"rolpassword\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"rolvaliduntil\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"rolreplication\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"rolbypassrls\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"rolcomment\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"is_current_user\00", align 1
@OPF = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [17 x i8] c"--\0A-- Roles\0A--\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"pg_\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"role name starting with \22pg_\22 skipped (%s)\00", align 1
@binary_upgrade = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [53 x i8] c"\0A-- For binary upgrade, must preserve pg_authid.oid\0A\00", align 1
@.str.24 = private unnamed_addr constant [81 x i8] c"SELECT pg_catalog.binary_upgrade_set_next_pg_authid_oid('%u'::pg_catalog.oid);\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"CREATE ROLE %s;\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"ALTER ROLE %s WITH\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c" SUPERUSER\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c" NOSUPERUSER\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c" INHERIT\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c" NOINHERIT\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c" CREATEROLE\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c" NOCREATEROLE\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c" CREATEDB\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" NOCREATEDB\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c" LOGIN\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c" NOLOGIN\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c" REPLICATION\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c" NOREPLICATION\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c" BYPASSRLS\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c" NOBYPASSRLS\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c" CONNECTION LIMIT %s\00", align 1
@no_role_passwords = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [11 x i8] c" PASSWORD \00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c" VALID UNTIL '%s'\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@no_comments = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [23 x i8] c"COMMENT ON ROLE %s IS \00", align 1
@no_security_labels = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [10 x i8] c"pg_authid\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"ROLE\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dumpRoles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpRoles(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %22 = call %struct.TYPE_10__* (...) @createPQExpBuffer()
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %3, align 8
  %23 = load i32, i32* @server_version, align 4
  %24 = icmp sge i32 %23, 90600
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = load i32, i32* @role_catalog, align 4
  %28 = load i32, i32* @role_catalog, align 4
  %29 = call i32 (%struct.TYPE_10__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_10__* %26, i8* getelementptr inbounds ([296 x i8], [296 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  br label %68

30:                                               ; preds = %1
  %31 = load i32, i32* @server_version, align 4
  %32 = icmp sge i32 %31, 90500
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = load i32, i32* @role_catalog, align 4
  %36 = load i32, i32* @role_catalog, align 4
  %37 = call i32 (%struct.TYPE_10__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_10__* %34, i8* getelementptr inbounds ([272 x i8], [272 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  br label %67

38:                                               ; preds = %30
  %39 = load i32, i32* @server_version, align 4
  %40 = icmp sge i32 %39, 90100
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = load i32, i32* @role_catalog, align 4
  %44 = load i32, i32* @role_catalog, align 4
  %45 = call i32 (%struct.TYPE_10__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_10__* %42, i8* getelementptr inbounds ([281 x i8], [281 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  br label %66

46:                                               ; preds = %38
  %47 = load i32, i32* @server_version, align 4
  %48 = icmp sge i32 %47, 80200
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = load i32, i32* @role_catalog, align 4
  %52 = load i32, i32* @role_catalog, align 4
  %53 = call i32 (%struct.TYPE_10__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_10__* %50, i8* getelementptr inbounds ([290 x i8], [290 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %52)
  br label %65

54:                                               ; preds = %46
  %55 = load i32, i32* @server_version, align 4
  %56 = icmp sge i32 %55, 80100
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = load i32, i32* @role_catalog, align 4
  %60 = call i32 (%struct.TYPE_10__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_10__* %58, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %64

61:                                               ; preds = %54
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = call i32 (%struct.TYPE_10__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_10__* %62, i8* getelementptr inbounds ([773 x i8], [773 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %57
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66, %33
  br label %68

68:                                               ; preds = %67, %25
  %69 = load i32*, i32** %2, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32* @executeQuery(i32* %69, i8* %72)
  store i32* %73, i32** %4, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @PQfnumber(i32* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 %75, i32* %5, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @PQfnumber(i32* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 %77, i32* %6, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @PQfnumber(i32* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %79, i32* %7, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @PQfnumber(i32* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i32 %81, i32* %8, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @PQfnumber(i32* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i32 %83, i32* %9, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @PQfnumber(i32* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  store i32 %85, i32* %10, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @PQfnumber(i32* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i32 %87, i32* %11, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @PQfnumber(i32* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  store i32 %89, i32* %12, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @PQfnumber(i32* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  store i32 %91, i32* %13, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @PQfnumber(i32* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  store i32 %93, i32* %14, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @PQfnumber(i32* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i32 %95, i32* %15, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @PQfnumber(i32* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  store i32 %97, i32* %16, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @PQfnumber(i32* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  store i32 %99, i32* %17, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @PQfnumber(i32* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  store i32 %101, i32* %18, align 4
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @PQntuples(i32* %102)
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %68
  %106 = load i32, i32* @OPF, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %68
  store i32 0, i32* %19, align 4
  br label %109

109:                                              ; preds = %340, %108
  %110 = load i32, i32* %19, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @PQntuples(i32* %111)
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %343

114:                                              ; preds = %109
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i8* @PQgetvalue(i32* %115, i32 %116, i32 %117)
  %119 = call i8* @atooid(i8* %118)
  store i8* %119, i8** %21, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i8* @PQgetvalue(i32* %120, i32 %121, i32 %122)
  store i8* %123, i8** %20, align 8
  %124 = load i8*, i8** %20, align 8
  %125 = call i64 @strncmp(i8* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 3)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %114
  %128 = load i8*, i8** %20, align 8
  %129 = call i32 @pg_log_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i8* %128)
  br label %340

130:                                              ; preds = %114
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %132 = call i32 @resetPQExpBuffer(%struct.TYPE_10__* %131)
  %133 = load i64, i64* @binary_upgrade, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %136, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i64 0, i64 0))
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %139 = load i8*, i8** %21, align 8
  %140 = call i32 @appendPQExpBuffer(%struct.TYPE_10__* %138, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.24, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %135, %130
  %142 = load i64, i64* @binary_upgrade, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %18, align 4
  %148 = call i8* @PQgetvalue(i32* %145, i32 %146, i32 %147)
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144, %141
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = load i8*, i8** %20, align 8
  %154 = call i8* @fmtId(i8* %153)
  %155 = call i32 @appendPQExpBuffer(%struct.TYPE_10__* %152, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* %154)
  br label %156

156:                                              ; preds = %151, %144
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %158 = load i8*, i8** %20, align 8
  %159 = call i8* @fmtId(i8* %158)
  %160 = call i32 @appendPQExpBuffer(%struct.TYPE_10__* %157, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i8* %159)
  %161 = load i32*, i32** %4, align 8
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i8* @PQgetvalue(i32* %161, i32 %162, i32 %163)
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %156
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %169 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0))
  br label %173

170:                                              ; preds = %156
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %172 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %171, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32*, i32** %4, align 8
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i8* @PQgetvalue(i32* %174, i32 %175, i32 %176)
  %178 = call i64 @strcmp(i8* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %182 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %181, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0))
  br label %186

183:                                              ; preds = %173
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %185 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %184, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i32*, i32** %4, align 8
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* %9, align 4
  %190 = call i8* @PQgetvalue(i32* %187, i32 %188, i32 %189)
  %191 = call i64 @strcmp(i8* %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %195 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0))
  br label %199

196:                                              ; preds = %186
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %198 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %197, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0))
  br label %199

199:                                              ; preds = %196, %193
  %200 = load i32*, i32** %4, align 8
  %201 = load i32, i32* %19, align 4
  %202 = load i32, i32* %10, align 4
  %203 = call i8* @PQgetvalue(i32* %200, i32 %201, i32 %202)
  %204 = call i64 @strcmp(i8* %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %208 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %207, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0))
  br label %212

209:                                              ; preds = %199
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %211 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %210, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %206
  %213 = load i32*, i32** %4, align 8
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* %11, align 4
  %216 = call i8* @PQgetvalue(i32* %213, i32 %214, i32 %215)
  %217 = call i64 @strcmp(i8* %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %212
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %221 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %220, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0))
  br label %225

222:                                              ; preds = %212
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %224 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32*, i32** %4, align 8
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %15, align 4
  %229 = call i8* @PQgetvalue(i32* %226, i32 %227, i32 %228)
  %230 = call i64 @strcmp(i8* %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %234 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %233, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0))
  br label %238

235:                                              ; preds = %225
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %237 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %236, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %232
  %239 = load i32*, i32** %4, align 8
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* %16, align 4
  %242 = call i8* @PQgetvalue(i32* %239, i32 %240, i32 %241)
  %243 = call i64 @strcmp(i8* %242, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %238
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %247 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %246, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0))
  br label %251

248:                                              ; preds = %238
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %250 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %249, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0))
  br label %251

251:                                              ; preds = %248, %245
  %252 = load i32*, i32** %4, align 8
  %253 = load i32, i32* %19, align 4
  %254 = load i32, i32* %12, align 4
  %255 = call i8* @PQgetvalue(i32* %252, i32 %253, i32 %254)
  %256 = call i64 @strcmp(i8* %255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0))
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %251
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %260 = load i32*, i32** %4, align 8
  %261 = load i32, i32* %19, align 4
  %262 = load i32, i32* %12, align 4
  %263 = call i8* @PQgetvalue(i32* %260, i32 %261, i32 %262)
  %264 = call i32 @appendPQExpBuffer(%struct.TYPE_10__* %259, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i64 0, i64 0), i8* %263)
  br label %265

265:                                              ; preds = %258, %251
  %266 = load i32*, i32** %4, align 8
  %267 = load i32, i32* %19, align 4
  %268 = load i32, i32* %13, align 4
  %269 = call i32 @PQgetisnull(i32* %266, i32 %267, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %284, label %271

271:                                              ; preds = %265
  %272 = load i32, i32* @no_role_passwords, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %284, label %274

274:                                              ; preds = %271
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %276 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %275, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0))
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %278 = load i32*, i32** %4, align 8
  %279 = load i32, i32* %19, align 4
  %280 = load i32, i32* %13, align 4
  %281 = call i8* @PQgetvalue(i32* %278, i32 %279, i32 %280)
  %282 = load i32*, i32** %2, align 8
  %283 = call i32 @appendStringLiteralConn(%struct.TYPE_10__* %277, i8* %281, i32* %282)
  br label %284

284:                                              ; preds = %274, %271, %265
  %285 = load i32*, i32** %4, align 8
  %286 = load i32, i32* %19, align 4
  %287 = load i32, i32* %14, align 4
  %288 = call i32 @PQgetisnull(i32* %285, i32 %286, i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %297, label %290

290:                                              ; preds = %284
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %292 = load i32*, i32** %4, align 8
  %293 = load i32, i32* %19, align 4
  %294 = load i32, i32* %14, align 4
  %295 = call i8* @PQgetvalue(i32* %292, i32 %293, i32 %294)
  %296 = call i32 @appendPQExpBuffer(%struct.TYPE_10__* %291, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i8* %295)
  br label %297

297:                                              ; preds = %290, %284
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %299 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %298, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0))
  %300 = load i32, i32* @no_comments, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %322, label %302

302:                                              ; preds = %297
  %303 = load i32*, i32** %4, align 8
  %304 = load i32, i32* %19, align 4
  %305 = load i32, i32* %17, align 4
  %306 = call i32 @PQgetisnull(i32* %303, i32 %304, i32 %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %322, label %308

308:                                              ; preds = %302
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %310 = load i8*, i8** %20, align 8
  %311 = call i8* @fmtId(i8* %310)
  %312 = call i32 @appendPQExpBuffer(%struct.TYPE_10__* %309, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0), i8* %311)
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %314 = load i32*, i32** %4, align 8
  %315 = load i32, i32* %19, align 4
  %316 = load i32, i32* %17, align 4
  %317 = call i8* @PQgetvalue(i32* %314, i32 %315, i32 %316)
  %318 = load i32*, i32** %2, align 8
  %319 = call i32 @appendStringLiteralConn(%struct.TYPE_10__* %313, i8* %317, i32* %318)
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %321 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %320, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0))
  br label %322

322:                                              ; preds = %308, %302, %297
  %323 = load i32, i32* @no_security_labels, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %334, label %325

325:                                              ; preds = %322
  %326 = load i32, i32* @server_version, align 4
  %327 = icmp sge i32 %326, 90200
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = load i32*, i32** %2, align 8
  %330 = load i8*, i8** %21, align 8
  %331 = load i8*, i8** %20, align 8
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %333 = call i32 @buildShSecLabels(i32* %329, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0), i8* %330, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i8* %331, %struct.TYPE_10__* %332)
  br label %334

334:                                              ; preds = %328, %325, %322
  %335 = load i32, i32* @OPF, align 4
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 0
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 (i32, i8*, ...) @fprintf(i32 %335, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %338)
  br label %340

340:                                              ; preds = %334, %127
  %341 = load i32, i32* %19, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %19, align 4
  br label %109

343:                                              ; preds = %109
  store i32 0, i32* %19, align 4
  br label %344

344:                                              ; preds = %356, %343
  %345 = load i32, i32* %19, align 4
  %346 = load i32*, i32** %4, align 8
  %347 = call i32 @PQntuples(i32* %346)
  %348 = icmp slt i32 %345, %347
  br i1 %348, label %349, label %359

349:                                              ; preds = %344
  %350 = load i32*, i32** %2, align 8
  %351 = load i32*, i32** %4, align 8
  %352 = load i32, i32* %19, align 4
  %353 = load i32, i32* %6, align 4
  %354 = call i8* @PQgetvalue(i32* %351, i32 %352, i32 %353)
  %355 = call i32 @dumpUserConfig(i32* %350, i8* %354)
  br label %356

356:                                              ; preds = %349
  %357 = load i32, i32* %19, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %19, align 4
  br label %344

359:                                              ; preds = %344
  %360 = load i32*, i32** %4, align 8
  %361 = call i32 @PQclear(i32* %360)
  %362 = load i32, i32* @OPF, align 4
  %363 = call i32 (i32, i8*, ...) @fprintf(i32 %362, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0))
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %365 = call i32 @destroyPQExpBuffer(%struct.TYPE_10__* %364)
  ret void
}

declare dso_local %struct.TYPE_10__* @createPQExpBuffer(...) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32* @executeQuery(i32*, i8*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @atooid(i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @pg_log_warning(i8*, i8*) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_10__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @fmtId(i8*) #1

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @appendStringLiteralConn(%struct.TYPE_10__*, i8*, i32*) #1

declare dso_local i32 @buildShSecLabels(i32*, i8*, i8*, i8*, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @dumpUserConfig(i32*, i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
