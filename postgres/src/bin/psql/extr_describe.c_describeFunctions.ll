; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeFunctions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeFunctions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32*, i8*, i32, i32* }
%struct.TYPE_13__ = type { i32 }

@pset = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@describeFunctions.translate_columns = internal constant [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0], align 16
@describeFunctions.translate_columns_pre_96 = internal constant [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [8 x i8] c"anptwS+\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\\df only takes [anptwS+] as options\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\\df does not take a \22%c\22 option with server version %s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"SELECT n.nspname as \22%s\22,\0A  p.proname as \22%s\22,\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Schema\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.6 = private unnamed_addr constant [211 x i8] c"  pg_catalog.pg_get_function_result(p.oid) as \22%s\22,\0A  pg_catalog.pg_get_function_arguments(p.oid) as \22%s\22,\0A CASE p.prokind\0A  WHEN 'a' THEN '%s'\0A  WHEN 'w' THEN '%s'\0A  WHEN 'p' THEN '%s'\0A  ELSE '%s'\0A END as \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Result data type\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Argument data types\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"agg\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.14 = private unnamed_addr constant [270 x i8] c"  pg_catalog.pg_get_function_result(p.oid) as \22%s\22,\0A  pg_catalog.pg_get_function_arguments(p.oid) as \22%s\22,\0A CASE\0A  WHEN p.proisagg THEN '%s'\0A  WHEN p.proiswindow THEN '%s'\0A  WHEN p.prorettype = 'pg_catalog.trigger'::pg_catalog.regtype THEN '%s'\0A  ELSE '%s'\0A END as \22%s\22\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@.str.16 = private unnamed_addr constant [1264 x i8] c"  CASE WHEN p.proretset THEN 'SETOF ' ELSE '' END ||\0A  pg_catalog.format_type(p.prorettype, NULL) as \22%s\22,\0A  CASE WHEN proallargtypes IS NOT NULL THEN\0A    pg_catalog.array_to_string(ARRAY(\0A      SELECT\0A        CASE\0A          WHEN p.proargmodes[s.i] = 'i' THEN ''\0A          WHEN p.proargmodes[s.i] = 'o' THEN 'OUT '\0A          WHEN p.proargmodes[s.i] = 'b' THEN 'INOUT '\0A          WHEN p.proargmodes[s.i] = 'v' THEN 'VARIADIC '\0A        END ||\0A        CASE\0A          WHEN COALESCE(p.proargnames[s.i], '') = '' THEN ''\0A          ELSE p.proargnames[s.i] || ' '\0A        END ||\0A        pg_catalog.format_type(p.proallargtypes[s.i], NULL)\0A      FROM\0A        pg_catalog.generate_series(1, pg_catalog.array_upper(p.proallargtypes, 1)) AS s(i)\0A    ), ', ')\0A  ELSE\0A    pg_catalog.array_to_string(ARRAY(\0A      SELECT\0A        CASE\0A          WHEN COALESCE(p.proargnames[s.i+1], '') = '' THEN ''\0A          ELSE p.proargnames[s.i+1] || ' '\0A          END ||\0A        pg_catalog.format_type(p.proargtypes[s.i], NULL)\0A      FROM\0A        pg_catalog.generate_series(0, pg_catalog.array_upper(p.proargtypes, 1)) AS s(i)\0A    ), ', ')\0A  END AS \22%s\22,\0A  CASE\0A    WHEN p.proisagg THEN '%s'\0A    WHEN p.prorettype = 'pg_catalog.trigger'::pg_catalog.regtype THEN '%s'\0A    ELSE '%s'\0A  END AS \22%s\22\00", align 1
@.str.17 = private unnamed_addr constant [299 x i8] c"  CASE WHEN p.proretset THEN 'SETOF ' ELSE '' END ||\0A  pg_catalog.format_type(p.prorettype, NULL) as \22%s\22,\0A  pg_catalog.oidvectortypes(p.proargtypes) as \22%s\22,\0A  CASE\0A    WHEN p.proisagg THEN '%s'\0A    WHEN p.prorettype = 'pg_catalog.trigger'::pg_catalog.regtype THEN '%s'\0A    ELSE '%s'\0A  END AS \22%s\22\00", align 1
@.str.18 = private unnamed_addr constant [132 x i8] c",\0A CASE\0A  WHEN p.provolatile = 'i' THEN '%s'\0A  WHEN p.provolatile = 's' THEN '%s'\0A  WHEN p.provolatile = 'v' THEN '%s'\0A END as \22%s\22\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"immutable\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"stable\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Volatility\00", align 1
@.str.23 = private unnamed_addr constant [132 x i8] c",\0A CASE\0A  WHEN p.proparallel = 'r' THEN '%s'\0A  WHEN p.proparallel = 's' THEN '%s'\0A  WHEN p.proparallel = 'u' THEN '%s'\0A END as \22%s\22\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"restricted\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"safe\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"unsafe\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Parallel\00", align 1
@.str.28 = private unnamed_addr constant [104 x i8] c",\0A pg_catalog.pg_get_userbyid(p.proowner) as \22%s\22,\0A CASE WHEN prosecdef THEN '%s' ELSE '%s' END AS \22%s\22\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"Owner\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"definer\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"invoker\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Security\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c",\0A \00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"p.proacl\00", align 1
@.str.35 = private unnamed_addr constant [95 x i8] c",\0A l.lanname as \22%s\22,\0A p.prosrc as \22%s\22,\0A pg_catalog.obj_description(p.oid, 'pg_proc') as \22%s\22\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Language\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Source code\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.39 = private unnamed_addr constant [95 x i8] c"\0AFROM pg_catalog.pg_proc p\0A     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.pronamespace\0A\00", align 1
@.str.40 = private unnamed_addr constant [62 x i8] c"     LEFT JOIN pg_catalog.pg_language l ON l.oid = p.prolang\0A\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"      AND \00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"WHERE \00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"p.prokind <> 'a'\0A\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"NOT p.proisagg\0A\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"p.prokind <> 'p'\0A\00", align 1
@.str.46 = private unnamed_addr constant [58 x i8] c"p.prorettype <> 'pg_catalog.trigger'::pg_catalog.regtype\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"p.prokind <> 'w'\0A\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"NOT p.proiswindow\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"WHERE (\0A       \00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"p.prokind = 'a'\0A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"p.proisagg\0A\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"       OR \00", align 1
@.str.53 = private unnamed_addr constant [57 x i8] c"p.prorettype = 'pg_catalog.trigger'::pg_catalog.regtype\0A\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"p.prokind = 'p'\0A\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"p.prokind = 'w'\0A\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"p.proiswindow\0A\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"      )\0A\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"p.proname\00", align 1
@.str.60 = private unnamed_addr constant [41 x i8] c"pg_catalog.pg_function_is_visible(p.oid)\00", align 1
@.str.61 = private unnamed_addr constant [81 x i8] c"      AND n.nspname <> 'pg_catalog'\0A      AND n.nspname <> 'information_schema'\0A\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"ORDER BY 1, 2, 4;\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"List of functions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @describeFunctions(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca [32 x i8], align 16
  %20 = alloca [32 x i8], align 16
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32* @strchr(i8* %22, i8 signext 97)
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32* @strchr(i8* %26, i8 signext 110)
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32* @strchr(i8* %30, i8 signext 112)
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32* @strchr(i8* %34, i8 signext 116)
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32* @strchr(i8* %38, i8 signext 119)
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = bitcast %struct.TYPE_12__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 bitcast (%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 4) to i8*), i64 40, i1 false)
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strspn(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %360

50:                                               ; preds = %4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %55 = icmp slt i32 %54, 110000
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %59 = call i32 @formatPGVersionNumber(i32 %57, i32 0, i8* %58, i32 32)
  %60 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 112, i32 %59)
  store i32 1, i32* %5, align 4
  br label %360

61:                                               ; preds = %53, %50
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %66 = icmp slt i32 %65, 80400
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %70 = call i32 @formatPGVersionNumber(i32 %68, i32 0, i8* %69, i32 32)
  %71 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 119, i32 %70)
  store i32 1, i32* %5, align 4
  br label %360

72:                                               ; preds = %64, %61
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  store i32 1, i32* %13, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %89 = icmp sge i32 %88, 110000
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 1, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %87
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %93 = icmp sge i32 %92, 80400
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 1, i32* %14, align 4
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %95, %84, %81, %78, %75, %72
  %97 = call i32 @initPQExpBuffer(%struct.TYPE_13__* %16)
  %98 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %99 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %100 = call i32 @printfPQExpBuffer(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %102 = icmp sge i32 %101, 110000
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = call i32 @gettext_noop(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %105 = call i32 @gettext_noop(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %106 = call i32 @gettext_noop(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %107 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %108 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %109 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %110 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %111 = call i32 (%struct.TYPE_13__*, i8*, i32, i32, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.6, i64 0, i64 0), i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  br label %145

112:                                              ; preds = %96
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %114 = icmp sge i32 %113, 80400
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = call i32 @gettext_noop(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %117 = call i32 @gettext_noop(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %118 = call i32 @gettext_noop(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %119 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %120 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %121 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %122 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %123 = call i32 (%struct.TYPE_13__*, i8*, i32, i32, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([270 x i8], [270 x i8]* @.str.14, i64 0, i64 0), i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  br label %144

124:                                              ; preds = %112
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %126 = icmp sge i32 %125, 80100
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = call i32 @gettext_noop(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %129 = call i32 @gettext_noop(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %130 = call i32 @gettext_noop(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %131 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %132 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %133 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %134 = call i32 (%struct.TYPE_13__*, i8*, i32, i32, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([1264 x i8], [1264 x i8]* @.str.16, i64 0, i64 0), i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  br label %143

135:                                              ; preds = %124
  %136 = call i32 @gettext_noop(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %137 = call i32 @gettext_noop(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %138 = call i32 @gettext_noop(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %139 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %140 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %141 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %142 = call i32 (%struct.TYPE_13__*, i8*, i32, i32, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([299 x i8], [299 x i8]* @.str.17, i64 0, i64 0), i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %135, %127
  br label %144

144:                                              ; preds = %143, %115
  br label %145

145:                                              ; preds = %144, %103
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %174

148:                                              ; preds = %145
  %149 = call i32 @gettext_noop(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %150 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %151 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  %152 = call i32 @gettext_noop(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %153 = call i32 (%struct.TYPE_13__*, i8*, i32, i32, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.18, i64 0, i64 0), i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %155 = icmp sge i32 %154, 90600
  br i1 %155, label %156, label %162

156:                                              ; preds = %148
  %157 = call i32 @gettext_noop(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  %158 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %159 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %160 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  %161 = call i32 (%struct.TYPE_13__*, i8*, i32, i32, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.23, i64 0, i64 0), i32 %157, i32 %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %156, %148
  %163 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0))
  %164 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %165 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0))
  %166 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  %167 = call i32 (%struct.TYPE_13__*, i8*, i32, i32, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.28, i64 0, i64 0), i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  %169 = call i32 @printACLColumn(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0))
  %170 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0))
  %171 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0))
  %172 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0))
  %173 = call i32 (%struct.TYPE_13__*, i8*, i32, i32, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.35, i64 0, i64 0), i32 %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %162, %145
  %175 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.39, i64 0, i64 0))
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.40, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %174
  store i32 0, i32* %15, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %180
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %183
  %187 = load i32, i32* %12, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %186
  %190 = load i32, i32* %13, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %317

196:                                              ; preds = %192, %189, %186, %183, %180
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %266

199:                                              ; preds = %196
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %217, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0))
  br label %209

207:                                              ; preds = %202
  %208 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %209

209:                                              ; preds = %207, %205
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %211 = icmp sge i32 %210, 110000
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0))
  br label %216

214:                                              ; preds = %209
  %215 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %212
  br label %217

217:                                              ; preds = %216, %199
  %218 = load i32, i32* %12, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %222 = icmp sge i32 %221, 110000
  br i1 %222, label %223, label %232

223:                                              ; preds = %220
  %224 = load i32, i32* %15, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0))
  br label %230

228:                                              ; preds = %223
  %229 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %230

230:                                              ; preds = %228, %226
  %231 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0))
  br label %232

232:                                              ; preds = %230, %220, %217
  %233 = load i32, i32* %13, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %244, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %15, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0))
  br label %242

240:                                              ; preds = %235
  %241 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %242

242:                                              ; preds = %240, %238
  %243 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.46, i64 0, i64 0))
  br label %244

244:                                              ; preds = %242, %232
  %245 = load i32, i32* %14, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %265, label %247

247:                                              ; preds = %244
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %249 = icmp sge i32 %248, 80400
  br i1 %249, label %250, label %265

250:                                              ; preds = %247
  %251 = load i32, i32* %15, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %250
  %254 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0))
  br label %257

255:                                              ; preds = %250
  %256 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %257

257:                                              ; preds = %255, %253
  %258 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %259 = icmp sge i32 %258, 110000
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0))
  br label %264

262:                                              ; preds = %257
  %263 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i64 0, i64 0))
  br label %264

264:                                              ; preds = %262, %260
  br label %265

265:                                              ; preds = %264, %247, %244
  br label %316

266:                                              ; preds = %196
  store i32 0, i32* %21, align 4
  %267 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  %268 = load i32, i32* %10, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %266
  %271 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %272 = icmp sge i32 %271, 110000
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0))
  br label %277

275:                                              ; preds = %270
  %276 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0))
  br label %277

277:                                              ; preds = %275, %273
  store i32 1, i32* %21, align 4
  br label %278

278:                                              ; preds = %277, %266
  %279 = load i32, i32* %13, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %278
  %282 = load i32, i32* %21, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0))
  br label %286

286:                                              ; preds = %284, %281
  %287 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.53, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %288

288:                                              ; preds = %286, %278
  %289 = load i32, i32* %12, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %288
  %292 = load i32, i32* %21, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  %295 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0))
  br label %296

296:                                              ; preds = %294, %291
  %297 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %298

298:                                              ; preds = %296, %288
  %299 = load i32, i32* %14, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %314

301:                                              ; preds = %298
  %302 = load i32, i32* %21, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %301
  %305 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0))
  br label %306

306:                                              ; preds = %304, %301
  %307 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %308 = icmp sge i32 %307, 110000
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  %310 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0))
  br label %313

311:                                              ; preds = %306
  %312 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i64 0, i64 0))
  br label %313

313:                                              ; preds = %311, %309
  store i32 1, i32* %21, align 4
  br label %314

314:                                              ; preds = %313, %298
  %315 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0))
  br label %316

316:                                              ; preds = %314, %265
  br label %317

317:                                              ; preds = %316, %195
  %318 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 3), align 4
  %319 = load i8*, i8** %7, align 8
  %320 = load i32, i32* %15, align 4
  %321 = call i32 @processSQLNamePattern(i32 %318, %struct.TYPE_13__* %16, i8* %319, i32 %320, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.60, i64 0, i64 0))
  %322 = load i32, i32* %9, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %329, label %324

324:                                              ; preds = %317
  %325 = load i8*, i8** %7, align 8
  %326 = icmp ne i8* %325, null
  br i1 %326, label %329, label %327

327:                                              ; preds = %324
  %328 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.61, i64 0, i64 0))
  br label %329

329:                                              ; preds = %327, %324, %317
  %330 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0))
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = call i32* @PSQLexec(i32 %332)
  store i32* %333, i32** %17, align 8
  %334 = call i32 @termPQExpBuffer(%struct.TYPE_13__* %16)
  %335 = load i32*, i32** %17, align 8
  %336 = icmp ne i32* %335, null
  br i1 %336, label %338, label %337

337:                                              ; preds = %329
  store i32 0, i32* %5, align 4
  br label %360

338:                                              ; preds = %329
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  store i32* null, i32** %339, align 8
  %340 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0))
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  store i32 %340, i32* %341, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i32 1, i32* %342, align 8
  %343 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %344 = icmp sge i32 %343, 90600
  br i1 %344, label %345, label %349

345:                                              ; preds = %338
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  store i32* getelementptr inbounds ([13 x i32], [13 x i32]* @describeFunctions.translate_columns, i64 0, i64 0), i32** %346, align 8
  %347 = call i8* @lengthof(i32* getelementptr inbounds ([13 x i32], [13 x i32]* @describeFunctions.translate_columns, i64 0, i64 0))
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  store i8* %347, i8** %348, align 8
  br label %353

349:                                              ; preds = %338
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  store i32* getelementptr inbounds ([12 x i32], [12 x i32]* @describeFunctions.translate_columns_pre_96, i64 0, i64 0), i32** %350, align 8
  %351 = call i8* @lengthof(i32* getelementptr inbounds ([12 x i32], [12 x i32]* @describeFunctions.translate_columns_pre_96, i64 0, i64 0))
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  store i8* %351, i8** %352, align 8
  br label %353

353:                                              ; preds = %349, %345
  %354 = load i32*, i32** %17, align 8
  %355 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 2), align 8
  %356 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 1), align 4
  %357 = call i32 @printQuery(i32* %354, %struct.TYPE_12__* %18, i32 %355, i32 0, i32 %356)
  %358 = load i32*, i32** %17, align 8
  %359 = call i32 @PQclear(i32* %358)
  store i32 1, i32* %5, align 4
  br label %360

360:                                              ; preds = %353, %337, %67, %56, %48
  %361 = load i32, i32* %5, align 4
  ret i32 %361
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_13__*) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_13__*, i8*, i32, i32) #1

declare dso_local i32 @gettext_noop(i8*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_13__*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @printACLColumn(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_13__*, i8*, i32, i32, i8*, i8*, i32*, i8*) #1

declare dso_local i32* @PSQLexec(i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_13__*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @lengthof(i32*) #1

declare dso_local i32 @printQuery(i32*, %struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
