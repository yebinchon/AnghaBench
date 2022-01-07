; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_config.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"creating configuration files ... \00", align 1
@stdout = common dso_local global i32 0, align 4
@conf_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"max_connections = %d\00", align 1
@n_connections = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"#max_connections = 100\00", align 1
@n_buffers = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"shared_buffers = %dMB\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"shared_buffers = %dkB\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"#shared_buffers = 32MB\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"#unix_socket_directories = ''\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"#unix_socket_directories = '/tmp'\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"#port = %d\00", align 1
@DEF_PGPORT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"#port = 5432\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"min_wal_size = %s\00", align 1
@DEFAULT_MIN_WAL_SEGS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"#min_wal_size = 80MB\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"max_wal_size = %s\00", align 1
@DEFAULT_MAX_WAL_SEGS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"#max_wal_size = 1GB\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"lc_messages = '%s'\00", align 1
@lc_messages = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"#lc_messages = 'C'\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"lc_monetary = '%s'\00", align 1
@lc_monetary = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"#lc_monetary = 'C'\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"lc_numeric = '%s'\00", align 1
@lc_numeric = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [18 x i8] c"#lc_numeric = 'C'\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"lc_time = '%s'\00", align 1
@lc_time = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [15 x i8] c"#lc_time = 'C'\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"datestyle = 'iso, ymd'\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"datestyle = 'iso, dmy'\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"datestyle = 'iso, mdy'\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"#datestyle = 'iso, mdy'\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"default_text_search_config = 'pg_catalog.%s'\00", align 1
@default_text_search_config = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [50 x i8] c"#default_text_search_config = 'pg_catalog.simple'\00", align 1
@default_timezone = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [16 x i8] c"timezone = '%s'\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"#timezone = 'GMT'\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"log_timezone = '%s'\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"#log_timezone = 'GMT'\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"dynamic_shared_memory_type = %s\00", align 1
@dynamic_shared_memory_type = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [36 x i8] c"#dynamic_shared_memory_type = posix\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"#effective_io_concurrency = 1\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"#effective_io_concurrency = 0\00", align 1
@authmethodlocal = common dso_local global i8* null, align 8
@.str.36 = private unnamed_addr constant [14 x i8] c"scram-sha-256\00", align 1
@authmethodhost = common dso_local global i8* null, align 8
@.str.37 = private unnamed_addr constant [27 x i8] c"#password_encryption = md5\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"password_encryption = scram-sha-256\00", align 1
@pg_dir_create_mode = common dso_local global i64 0, align 8
@PG_DIR_MODE_GROUP = common dso_local global i64 0, align 8
@.str.39 = private unnamed_addr constant [22 x i8] c"#log_file_mode = 0600\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"log_file_mode = 0640\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"%s/postgresql.conf\00", align 1
@pg_data = common dso_local global i8* null, align 8
@pg_file_create_mode = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [41 x i8] c"could not change permissions of \22%s\22: %m\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"# Do not edit this file manually!\0A\00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"# It will be overwritten by the ALTER SYSTEM command.\0A\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"%s/postgresql.auto.conf\00", align 1
@hba_file = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [26 x i8] c"@remove-line-for-nolocal@\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"host    all             all             ::1\00", align 1
@.str.48 = private unnamed_addr constant [45 x i8] c"#host    all             all             ::1\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"host    replication     all             ::1\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"#host    replication     all             ::1\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"@authmethodhost@\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"@authmethodlocal@\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"@authcomment@\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"trust\00", align 1
@AUTHTRUST_WARNING = common dso_local global i8* null, align 8
@.str.55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"%s/pg_hba.conf\00", align 1
@ident_file = common dso_local global i32 0, align 4
@.str.57 = private unnamed_addr constant [17 x i8] c"%s/pg_ident.conf\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@DEFAULT_BACKEND_FLUSH_AFTER = common dso_local global i32 0, align 4
@DEFAULT_BGWRITER_FLUSH_AFTER = common dso_local global i32 0, align 4
@DEFAULT_CHECKPOINT_FLUSH_AFTER = common dso_local global i32 0, align 4
@DEFAULT_PGSOCKET_DIR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_config() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [3 x i8*], align 16
  %6 = load i32, i32* @MAXPGPATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @MAXPGPATH, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %13 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @fputs(i32 %13, i32 %14)
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 @fflush(i32 %16)
  %18 = load i32, i32* @conf_file, align 4
  %19 = call i8** @readfile(i32 %18)
  store i8** %19, i8*** %1, align 8
  %20 = trunc i64 %7 to i32
  %21 = load i32, i32* @n_connections, align 4
  %22 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i8**, i8*** %1, align 8
  %24 = call i8** @replace_token(i8** %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %9)
  store i8** %24, i8*** %1, align 8
  %25 = load i32, i32* @n_buffers, align 4
  %26 = load i32, i32* @BLCKSZ, align 4
  %27 = sdiv i32 %26, 1024
  %28 = mul nsw i32 %25, %27
  %29 = srem i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %0
  %32 = trunc i64 %7 to i32
  %33 = load i32, i32* @n_buffers, align 4
  %34 = load i32, i32* @BLCKSZ, align 4
  %35 = sdiv i32 %34, 1024
  %36 = mul nsw i32 %33, %35
  %37 = sdiv i32 %36, 1024
  %38 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %46

39:                                               ; preds = %0
  %40 = trunc i64 %7 to i32
  %41 = load i32, i32* @n_buffers, align 4
  %42 = load i32, i32* @BLCKSZ, align 4
  %43 = sdiv i32 %42, 1024
  %44 = mul nsw i32 %41, %43
  %45 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %39, %31
  %47 = load i8**, i8*** %1, align 8
  %48 = call i8** @replace_token(i8** %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %9)
  store i8** %48, i8*** %1, align 8
  %49 = trunc i64 %7 to i32
  %50 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %51 = load i8**, i8*** %1, align 8
  %52 = call i8** @replace_token(i8** %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %9)
  store i8** %52, i8*** %1, align 8
  %53 = trunc i64 %7 to i32
  %54 = load i32, i32* @DEF_PGPORT, align 4
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %54)
  %56 = load i8**, i8*** %1, align 8
  %57 = call i8** @replace_token(i8** %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %9)
  store i8** %57, i8*** %1, align 8
  %58 = trunc i64 %7 to i32
  %59 = load i32, i32* @DEFAULT_MIN_WAL_SEGS, align 4
  %60 = call i8* @pretty_wal_size(i32 %59)
  %61 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %60)
  %62 = load i8**, i8*** %1, align 8
  %63 = call i8** @replace_token(i8** %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %9)
  store i8** %63, i8*** %1, align 8
  %64 = trunc i64 %7 to i32
  %65 = load i32, i32* @DEFAULT_MAX_WAL_SEGS, align 4
  %66 = call i8* @pretty_wal_size(i32 %65)
  %67 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %66)
  %68 = load i8**, i8*** %1, align 8
  %69 = call i8** @replace_token(i8** %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %9)
  store i8** %69, i8*** %1, align 8
  %70 = trunc i64 %7 to i32
  %71 = load i64, i64* @lc_messages, align 8
  %72 = call i8* @escape_quotes(i64 %71)
  %73 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* %72)
  %74 = load i8**, i8*** %1, align 8
  %75 = call i8** @replace_token(i8** %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* %9)
  store i8** %75, i8*** %1, align 8
  %76 = trunc i64 %7 to i32
  %77 = load i64, i64* @lc_monetary, align 8
  %78 = call i8* @escape_quotes(i64 %77)
  %79 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %78)
  %80 = load i8**, i8*** %1, align 8
  %81 = call i8** @replace_token(i8** %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* %9)
  store i8** %81, i8*** %1, align 8
  %82 = trunc i64 %7 to i32
  %83 = load i64, i64* @lc_numeric, align 8
  %84 = call i8* @escape_quotes(i64 %83)
  %85 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* %84)
  %86 = load i8**, i8*** %1, align 8
  %87 = call i8** @replace_token(i8** %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* %9)
  store i8** %87, i8*** %1, align 8
  %88 = trunc i64 %7 to i32
  %89 = load i64, i64* @lc_time, align 8
  %90 = call i8* @escape_quotes(i64 %89)
  %91 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %90)
  %92 = load i8**, i8*** %1, align 8
  %93 = call i8** @replace_token(i8** %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* %9)
  store i8** %93, i8*** %1, align 8
  %94 = load i64, i64* @lc_time, align 8
  %95 = call i32 @locale_date_order(i64 %94)
  switch i32 %95, label %101 [
    i32 128, label %96
    i32 130, label %98
    i32 129, label %100
  ]

96:                                               ; preds = %46
  %97 = call i32 @strcpy(i8* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  br label %103

98:                                               ; preds = %46
  %99 = call i32 @strcpy(i8* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  br label %103

100:                                              ; preds = %46
  br label %101

101:                                              ; preds = %46, %100
  %102 = call i32 @strcpy(i8* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98, %96
  %104 = load i8**, i8*** %1, align 8
  %105 = call i8** @replace_token(i8** %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i8* %9)
  store i8** %105, i8*** %1, align 8
  %106 = trunc i64 %7 to i32
  %107 = load i64, i64* @default_text_search_config, align 8
  %108 = call i8* @escape_quotes(i64 %107)
  %109 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %106, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0), i8* %108)
  %110 = load i8**, i8*** %1, align 8
  %111 = call i8** @replace_token(i8** %110, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i64 0, i64 0), i8* %9)
  store i8** %111, i8*** %1, align 8
  %112 = load i64, i64* @default_timezone, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %103
  %115 = trunc i64 %7 to i32
  %116 = load i64, i64* @default_timezone, align 8
  %117 = call i8* @escape_quotes(i64 %116)
  %118 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %117)
  %119 = load i8**, i8*** %1, align 8
  %120 = call i8** @replace_token(i8** %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8* %9)
  store i8** %120, i8*** %1, align 8
  %121 = trunc i64 %7 to i32
  %122 = load i64, i64* @default_timezone, align 8
  %123 = call i8* @escape_quotes(i64 %122)
  %124 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i8* %123)
  %125 = load i8**, i8*** %1, align 8
  %126 = call i8** @replace_token(i8** %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0), i8* %9)
  store i8** %126, i8*** %1, align 8
  br label %127

127:                                              ; preds = %114, %103
  %128 = trunc i64 %7 to i32
  %129 = load i8*, i8** @dynamic_shared_memory_type, align 8
  %130 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0), i8* %129)
  %131 = load i8**, i8*** %1, align 8
  %132 = call i8** @replace_token(i8** %131, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* %9)
  store i8** %132, i8*** %1, align 8
  %133 = load i8**, i8*** %1, align 8
  %134 = call i8** @replace_token(i8** %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0))
  store i8** %134, i8*** %1, align 8
  %135 = load i8*, i8** @authmethodlocal, align 8
  %136 = call i64 @strcmp(i8* %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %127
  %139 = load i8*, i8** @authmethodhost, align 8
  %140 = call i64 @strcmp(i8* %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0))
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138, %127
  %143 = load i8**, i8*** %1, align 8
  %144 = call i8** @replace_token(i8** %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i64 0, i64 0))
  store i8** %144, i8*** %1, align 8
  br label %145

145:                                              ; preds = %142, %138
  %146 = load i64, i64* @pg_dir_create_mode, align 8
  %147 = load i64, i64* @PG_DIR_MODE_GROUP, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i8**, i8*** %1, align 8
  %151 = call i8** @replace_token(i8** %150, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0))
  store i8** %151, i8*** %1, align 8
  br label %152

152:                                              ; preds = %149, %145
  %153 = trunc i64 %11 to i32
  %154 = load i8*, i8** @pg_data, align 8
  %155 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %12, i32 %153, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0), i8* %154)
  %156 = load i8**, i8*** %1, align 8
  %157 = call i32 @writefile(i8* %12, i8** %156)
  %158 = load i32, i32* @pg_file_create_mode, align 4
  %159 = call i64 @chmod(i8* %12, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = call i32 @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0), i8* %12)
  %163 = call i32 @exit(i32 1) #4
  unreachable

164:                                              ; preds = %152
  %165 = call i8* @pg_strdup(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0))
  %166 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  store i8* %165, i8** %166, align 16
  %167 = call i8* @pg_strdup(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.44, i64 0, i64 0))
  %168 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 1
  store i8* %167, i8** %168, align 8
  %169 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 2
  store i8* null, i8** %169, align 16
  %170 = load i8*, i8** @pg_data, align 8
  %171 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i64 0, i64 0), i8* %170)
  %172 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %173 = call i32 @writefile(i8* %12, i8** %172)
  %174 = load i32, i32* @pg_file_create_mode, align 4
  %175 = call i64 @chmod(i8* %12, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %164
  %178 = call i32 @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0), i8* %12)
  %179 = call i32 @exit(i32 1) #4
  unreachable

180:                                              ; preds = %164
  %181 = load i8**, i8*** %1, align 8
  %182 = call i32 @free(i8** %181)
  %183 = load i32, i32* @hba_file, align 4
  %184 = call i8** @readfile(i32 %183)
  store i8** %184, i8*** %1, align 8
  %185 = load i8**, i8*** %1, align 8
  %186 = call i8** @filter_lines_with_token(i8** %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0))
  store i8** %186, i8*** %1, align 8
  %187 = load i8**, i8*** %1, align 8
  %188 = call i8** @replace_token(i8** %187, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.48, i64 0, i64 0))
  store i8** %188, i8*** %1, align 8
  %189 = load i8**, i8*** %1, align 8
  %190 = call i8** @replace_token(i8** %189, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.50, i64 0, i64 0))
  store i8** %190, i8*** %1, align 8
  %191 = load i8**, i8*** %1, align 8
  %192 = load i8*, i8** @authmethodhost, align 8
  %193 = call i8** @replace_token(i8** %191, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i64 0, i64 0), i8* %192)
  store i8** %193, i8*** %1, align 8
  %194 = load i8**, i8*** %1, align 8
  %195 = load i8*, i8** @authmethodlocal, align 8
  %196 = call i8** @replace_token(i8** %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i64 0, i64 0), i8* %195)
  store i8** %196, i8*** %1, align 8
  %197 = load i8**, i8*** %1, align 8
  %198 = load i8*, i8** @authmethodlocal, align 8
  %199 = call i64 @strcmp(i8* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0))
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %180
  %202 = load i8*, i8** @authmethodhost, align 8
  %203 = call i64 @strcmp(i8* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0))
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %201, %180
  %206 = load i8*, i8** @AUTHTRUST_WARNING, align 8
  br label %208

207:                                              ; preds = %201
  br label %208

208:                                              ; preds = %207, %205
  %209 = phi i8* [ %206, %205 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i64 0, i64 0), %207 ]
  %210 = call i8** @replace_token(i8** %197, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0), i8* %209)
  store i8** %210, i8*** %1, align 8
  %211 = trunc i64 %11 to i32
  %212 = load i8*, i8** @pg_data, align 8
  %213 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %12, i32 %211, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i64 0, i64 0), i8* %212)
  %214 = load i8**, i8*** %1, align 8
  %215 = call i32 @writefile(i8* %12, i8** %214)
  %216 = load i32, i32* @pg_file_create_mode, align 4
  %217 = call i64 @chmod(i8* %12, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %208
  %220 = call i32 @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0), i8* %12)
  %221 = call i32 @exit(i32 1) #4
  unreachable

222:                                              ; preds = %208
  %223 = load i8**, i8*** %1, align 8
  %224 = call i32 @free(i8** %223)
  %225 = load i32, i32* @ident_file, align 4
  %226 = call i8** @readfile(i32 %225)
  store i8** %226, i8*** %1, align 8
  %227 = trunc i64 %11 to i32
  %228 = load i8*, i8** @pg_data, align 8
  %229 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %12, i32 %227, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* %228)
  %230 = load i8**, i8*** %1, align 8
  %231 = call i32 @writefile(i8* %12, i8** %230)
  %232 = load i32, i32* @pg_file_create_mode, align 4
  %233 = call i64 @chmod(i8* %12, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %222
  %236 = call i32 @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0), i8* %12)
  %237 = call i32 @exit(i32 1) #4
  unreachable

238:                                              ; preds = %222
  %239 = load i8**, i8*** %1, align 8
  %240 = call i32 @free(i8** %239)
  %241 = call i32 (...) @check_ok()
  %242 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %242)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fputs(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i8** @readfile(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i8** @replace_token(i8**, i8*, i8*) #2

declare dso_local i8* @pretty_wal_size(i32) #2

declare dso_local i8* @escape_quotes(i64) #2

declare dso_local i32 @locale_date_order(i64) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @writefile(i8*, i8**) #2

declare dso_local i64 @chmod(i8*, i32) #2

declare dso_local i32 @pg_log_error(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i8* @pg_strdup(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @free(i8**) #2

declare dso_local i8** @filter_lines_with_token(i8**, i8*) #2

declare dso_local i32 @check_ok(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
