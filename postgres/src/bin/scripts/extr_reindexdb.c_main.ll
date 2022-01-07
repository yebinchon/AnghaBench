; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_reindexdb.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_reindexdb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32* }

@main.long_options = internal global [18 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8 -128, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32* null, i32 85 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8 -127, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8 -127, i32* null, i32 87 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8 -127, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8 -127, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8 -128, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8 -128, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8 -127, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8 -127, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8 -128, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8 -128, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8 -128, i32* null, i32 106 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8 -127, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8 -127, i32* null, i32 1 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8 -128, i32* null, i32 2 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"no-password\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"jobs\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"concurrently\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"maintenance-db\00", align 1
@TRI_DEFAULT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"pgscripts\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"reindexdb\00", align 1
@help = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [24 x i8] c"h:p:U:wWeqS:d:ast:i:j:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@TRI_NO = common dso_local global i32 0, align 4
@TRI_YES = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [43 x i8] c"number of parallel jobs must be at least 1\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [39 x i8] c"Try \22%s --help\22 for more information.\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [48 x i8] c"too many command-line arguments (first is \22%s\22)\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"cannot reindex all databases and a specific one at the same time\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"cannot reindex all databases and system catalogs at the same time\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"cannot reindex specific schema(s) in all databases\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"cannot reindex specific table(s) in all databases\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"cannot reindex specific index(es) in all databases\00", align 1
@.str.28 = private unnamed_addr constant [71 x i8] c"cannot reindex specific schema(s) and system catalogs at the same time\00", align 1
@.str.29 = private unnamed_addr constant [70 x i8] c"cannot reindex specific table(s) and system catalogs at the same time\00", align 1
@.str.30 = private unnamed_addr constant [71 x i8] c"cannot reindex specific index(es) and system catalogs at the same time\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"cannot use multiple jobs to reindex system catalogs\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"PGDATABASE\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"PGUSER\00", align 1
@REINDEX_SYSTEM = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [44 x i8] c"cannot use multiple jobs to reindex indexes\00", align 1
@REINDEX_SCHEMA = common dso_local global i32 0, align 4
@REINDEX_INDEX = common dso_local global i32 0, align 4
@REINDEX_TABLE = common dso_local global i32 0, align 4
@REINDEX_DATABASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_4__, align 8
  %22 = alloca %struct.TYPE_4__, align 8
  %23 = alloca %struct.TYPE_4__, align 8
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %25 = load i32, i32* @TRI_DEFAULT, align 4
  store i32 %25, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %26 = bitcast %struct.TYPE_4__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 24, i1 false)
  %27 = bitcast %struct.TYPE_4__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  %28 = bitcast %struct.TYPE_4__* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 24, i1 false)
  store i32 1, i32* %24, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @pg_logging_init(i8* %31)
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @get_progname(i8* %35)
  store i8* %36, i8** %6, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PG_TEXTDOMAIN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %41 = call i32 @set_pglocale_pgservice(i8* %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* @help, align 4
  %45 = call i32 @handle_help_version_opts(i32 %42, i8** %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %102, %2
  %47 = load i32, i32* %4, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = call i32 @getopt_long(i32 %47, i8** %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), %struct.option* getelementptr inbounds ([18 x %struct.option], [18 x %struct.option]* @main.long_options, i64 0, i64 0), i32* %7)
  store i32 %49, i32* %8, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %103

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  switch i32 %52, label %96 [
    i32 104, label %53
    i32 112, label %56
    i32 85, label %59
    i32 119, label %62
    i32 87, label %64
    i32 101, label %66
    i32 113, label %67
    i32 83, label %68
    i32 100, label %71
    i32 97, label %74
    i32 115, label %75
    i32 116, label %76
    i32 105, label %79
    i32 106, label %82
    i32 118, label %91
    i32 1, label %92
    i32 2, label %93
  ]

53:                                               ; preds = %51
  %54 = load i32, i32* @optarg, align 4
  %55 = call i8* @pg_strdup(i32 %54)
  store i8* %55, i8** %11, align 8
  br label %102

56:                                               ; preds = %51
  %57 = load i32, i32* @optarg, align 4
  %58 = call i8* @pg_strdup(i32 %57)
  store i8* %58, i8** %12, align 8
  br label %102

59:                                               ; preds = %51
  %60 = load i32, i32* @optarg, align 4
  %61 = call i8* @pg_strdup(i32 %60)
  store i8* %61, i8** %13, align 8
  br label %102

62:                                               ; preds = %51
  %63 = load i32, i32* @TRI_NO, align 4
  store i32 %63, i32* %14, align 4
  br label %102

64:                                               ; preds = %51
  %65 = load i32, i32* @TRI_YES, align 4
  store i32 %65, i32* %14, align 4
  br label %102

66:                                               ; preds = %51
  store i32 1, i32* %17, align 4
  br label %102

67:                                               ; preds = %51
  store i32 1, i32* %18, align 4
  br label %102

68:                                               ; preds = %51
  %69 = load i32, i32* @optarg, align 4
  %70 = call i32 @simple_string_list_append(%struct.TYPE_4__* %23, i32 %69)
  br label %102

71:                                               ; preds = %51
  %72 = load i32, i32* @optarg, align 4
  %73 = call i8* @pg_strdup(i32 %72)
  store i8* %73, i8** %9, align 8
  br label %102

74:                                               ; preds = %51
  store i32 1, i32* %16, align 4
  br label %102

75:                                               ; preds = %51
  store i32 1, i32* %15, align 4
  br label %102

76:                                               ; preds = %51
  %77 = load i32, i32* @optarg, align 4
  %78 = call i32 @simple_string_list_append(%struct.TYPE_4__* %22, i32 %77)
  br label %102

79:                                               ; preds = %51
  %80 = load i32, i32* @optarg, align 4
  %81 = call i32 @simple_string_list_append(%struct.TYPE_4__* %21, i32 %80)
  br label %102

82:                                               ; preds = %51
  %83 = load i32, i32* @optarg, align 4
  %84 = call i32 @atoi(i32 %83)
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %24, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0))
  %89 = call i32 @exit(i32 1) #4
  unreachable

90:                                               ; preds = %82
  br label %102

91:                                               ; preds = %51
  store i32 1, i32* %19, align 4
  br label %102

92:                                               ; preds = %51
  store i32 1, i32* %20, align 4
  br label %102

93:                                               ; preds = %51
  %94 = load i32, i32* @optarg, align 4
  %95 = call i8* @pg_strdup(i32 %94)
  store i8* %95, i8** %10, align 8
  br label %102

96:                                               ; preds = %51
  %97 = load i32, i32* @stderr, align 4
  %98 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0))
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @fprintf(i32 %97, i8* %98, i8* %99)
  %101 = call i32 @exit(i32 1) #4
  unreachable

102:                                              ; preds = %93, %92, %91, %90, %79, %76, %75, %74, %71, %68, %67, %66, %64, %62, %59, %56, %53
  br label %46

103:                                              ; preds = %46
  %104 = load i32, i32* @optind, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load i8*, i8** %9, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* @optind, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %9, align 8
  %116 = load i32, i32* @optind, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @optind, align 4
  br label %118

118:                                              ; preds = %110, %107, %103
  %119 = load i32, i32* @optind, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %118
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* @optind, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i64 0, i64 0), i8* %127)
  %129 = load i32, i32* @stderr, align 4
  %130 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0))
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @fprintf(i32 %129, i8* %130, i8* %131)
  %133 = call i32 @exit(i32 1) #4
  unreachable

134:                                              ; preds = %118
  %135 = call i32 (...) @setup_cancel_handler()
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %184

138:                                              ; preds = %134
  %139 = load i8*, i8** %9, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i64 0, i64 0))
  %143 = call i32 @exit(i32 1) #4
  unreachable

144:                                              ; preds = %138
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i64 0, i64 0))
  %149 = call i32 @exit(i32 1) #4
  unreachable

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0))
  %156 = call i32 @exit(i32 1) #4
  unreachable

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0))
  %163 = call i32 @exit(i32 1) #4
  unreachable

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0))
  %170 = call i32 @exit(i32 1) #4
  unreachable

171:                                              ; preds = %164
  %172 = load i8*, i8** %10, align 8
  %173 = load i8*, i8** %11, align 8
  %174 = load i8*, i8** %12, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = load i32, i32* %14, align 4
  %177 = load i8*, i8** %6, align 8
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %24, align 4
  %183 = call i32 @reindex_all_databases(i8* %172, i8* %173, i8* %174, i8* %175, i32 %176, i8* %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182)
  br label %349

184:                                              ; preds = %134
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %244

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0))
  %193 = call i32 @exit(i32 1) #4
  unreachable

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.29, i64 0, i64 0))
  %200 = call i32 @exit(i32 1) #4
  unreachable

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.30, i64 0, i64 0))
  %207 = call i32 @exit(i32 1) #4
  unreachable

208:                                              ; preds = %201
  %209 = load i32, i32* %24, align 4
  %210 = icmp sgt i32 %209, 1
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.31, i64 0, i64 0))
  %213 = call i32 @exit(i32 1) #4
  unreachable

214:                                              ; preds = %208
  %215 = load i8*, i8** %9, align 8
  %216 = icmp eq i8* %215, null
  br i1 %216, label %217, label %232

217:                                              ; preds = %214
  %218 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  store i8* %221, i8** %9, align 8
  br label %231

222:                                              ; preds = %217
  %223 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  store i8* %226, i8** %9, align 8
  br label %230

227:                                              ; preds = %222
  %228 = load i8*, i8** %6, align 8
  %229 = call i8* @get_user_name_or_exit(i8* %228)
  store i8* %229, i8** %9, align 8
  br label %230

230:                                              ; preds = %227, %225
  br label %231

231:                                              ; preds = %230, %220
  br label %232

232:                                              ; preds = %231, %214
  %233 = load i8*, i8** %9, align 8
  %234 = load i32, i32* @REINDEX_SYSTEM, align 4
  %235 = load i8*, i8** %11, align 8
  %236 = load i8*, i8** %12, align 8
  %237 = load i8*, i8** %13, align 8
  %238 = load i32, i32* %14, align 4
  %239 = load i8*, i8** %6, align 8
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %19, align 4
  %242 = load i32, i32* %20, align 4
  %243 = call i32 @reindex_one_database(i8* %233, i32 %234, %struct.TYPE_4__* null, i8* %235, i8* %236, i8* %237, i32 %238, i8* %239, i32 %240, i32 %241, i32 %242, i32 1)
  br label %348

244:                                              ; preds = %184
  %245 = load i32, i32* %24, align 4
  %246 = icmp sgt i32 %245, 1
  br i1 %246, label %247, label %254

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i64 0, i64 0))
  %253 = call i32 @exit(i32 1) #4
  unreachable

254:                                              ; preds = %247, %244
  %255 = load i8*, i8** %9, align 8
  %256 = icmp eq i8* %255, null
  br i1 %256, label %257, label %272

257:                                              ; preds = %254
  %258 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  store i8* %261, i8** %9, align 8
  br label %271

262:                                              ; preds = %257
  %263 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %267

265:                                              ; preds = %262
  %266 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  store i8* %266, i8** %9, align 8
  br label %270

267:                                              ; preds = %262
  %268 = load i8*, i8** %6, align 8
  %269 = call i8* @get_user_name_or_exit(i8* %268)
  store i8* %269, i8** %9, align 8
  br label %270

270:                                              ; preds = %267, %265
  br label %271

271:                                              ; preds = %270, %260
  br label %272

272:                                              ; preds = %271, %254
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %289

276:                                              ; preds = %272
  %277 = load i8*, i8** %9, align 8
  %278 = load i32, i32* @REINDEX_SCHEMA, align 4
  %279 = load i8*, i8** %11, align 8
  %280 = load i8*, i8** %12, align 8
  %281 = load i8*, i8** %13, align 8
  %282 = load i32, i32* %14, align 4
  %283 = load i8*, i8** %6, align 8
  %284 = load i32, i32* %17, align 4
  %285 = load i32, i32* %19, align 4
  %286 = load i32, i32* %20, align 4
  %287 = load i32, i32* %24, align 4
  %288 = call i32 @reindex_one_database(i8* %277, i32 %278, %struct.TYPE_4__* %23, i8* %279, i8* %280, i8* %281, i32 %282, i8* %283, i32 %284, i32 %285, i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %276, %272
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = icmp ne i32* %291, null
  br i1 %292, label %293, label %305

293:                                              ; preds = %289
  %294 = load i8*, i8** %9, align 8
  %295 = load i32, i32* @REINDEX_INDEX, align 4
  %296 = load i8*, i8** %11, align 8
  %297 = load i8*, i8** %12, align 8
  %298 = load i8*, i8** %13, align 8
  %299 = load i32, i32* %14, align 4
  %300 = load i8*, i8** %6, align 8
  %301 = load i32, i32* %17, align 4
  %302 = load i32, i32* %19, align 4
  %303 = load i32, i32* %20, align 4
  %304 = call i32 @reindex_one_database(i8* %294, i32 %295, %struct.TYPE_4__* %21, i8* %296, i8* %297, i8* %298, i32 %299, i8* %300, i32 %301, i32 %302, i32 %303, i32 1)
  br label %305

305:                                              ; preds = %293, %289
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = icmp ne i32* %307, null
  br i1 %308, label %309, label %322

309:                                              ; preds = %305
  %310 = load i8*, i8** %9, align 8
  %311 = load i32, i32* @REINDEX_TABLE, align 4
  %312 = load i8*, i8** %11, align 8
  %313 = load i8*, i8** %12, align 8
  %314 = load i8*, i8** %13, align 8
  %315 = load i32, i32* %14, align 4
  %316 = load i8*, i8** %6, align 8
  %317 = load i32, i32* %17, align 4
  %318 = load i32, i32* %19, align 4
  %319 = load i32, i32* %20, align 4
  %320 = load i32, i32* %24, align 4
  %321 = call i32 @reindex_one_database(i8* %310, i32 %311, %struct.TYPE_4__* %22, i8* %312, i8* %313, i8* %314, i32 %315, i8* %316, i32 %317, i32 %318, i32 %319, i32 %320)
  br label %322

322:                                              ; preds = %309, %305
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = icmp eq i32* %324, null
  br i1 %325, label %326, label %347

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = icmp eq i32* %328, null
  br i1 %329, label %330, label %347

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %332 = load i32*, i32** %331, align 8
  %333 = icmp eq i32* %332, null
  br i1 %333, label %334, label %347

334:                                              ; preds = %330
  %335 = load i8*, i8** %9, align 8
  %336 = load i32, i32* @REINDEX_DATABASE, align 4
  %337 = load i8*, i8** %11, align 8
  %338 = load i8*, i8** %12, align 8
  %339 = load i8*, i8** %13, align 8
  %340 = load i32, i32* %14, align 4
  %341 = load i8*, i8** %6, align 8
  %342 = load i32, i32* %17, align 4
  %343 = load i32, i32* %19, align 4
  %344 = load i32, i32* %20, align 4
  %345 = load i32, i32* %24, align 4
  %346 = call i32 @reindex_one_database(i8* %335, i32 %336, %struct.TYPE_4__* null, i8* %337, i8* %338, i8* %339, i32 %340, i8* %341, i32 %342, i32 %343, i32 %344, i32 %345)
  br label %347

347:                                              ; preds = %334, %330, %326, %322
  br label %348

348:                                              ; preds = %347, %232
  br label %349

349:                                              ; preds = %348, %171
  %350 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pg_logging_init(i8*) #2

declare dso_local i8* @get_progname(i8*) #2

declare dso_local i32 @set_pglocale_pgservice(i8*, i32) #2

declare dso_local i32 @PG_TEXTDOMAIN(i8*) #2

declare dso_local i32 @handle_help_version_opts(i32, i8**, i8*, i32) #2

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local i8* @pg_strdup(i32) #2

declare dso_local i32 @simple_string_list_append(%struct.TYPE_4__*, i32) #2

declare dso_local i32 @atoi(i32) #2

declare dso_local i32 @pg_log_error(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @setup_cancel_handler(...) #2

declare dso_local i32 @reindex_all_databases(i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @get_user_name_or_exit(i8*) #2

declare dso_local i32 @reindex_one_database(i8*, i32, %struct.TYPE_4__*, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
