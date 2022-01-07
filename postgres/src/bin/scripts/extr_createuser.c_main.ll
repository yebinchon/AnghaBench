; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_createuser.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_createuser.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32*, i32* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i8* }

@main.long_options = internal global [24 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8 -128, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32* null, i32 85 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8 -128, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8 -127, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8 -127, i32* null, i32 87 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8 -127, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8 -127, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8 -127, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8 -127, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8 -127, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8 -127, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8 -127, i32* null, i32 82 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8 -127, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8 -127, i32* null, i32 73 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8 -127, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8 -127, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8 -127, i32* null, i32 1 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8 -127, i32* null, i32 2 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8 -127, i32* null, i32 3 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8 -128, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8 -127, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8 -127, i32* null, i32 69 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"no-password\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"createdb\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"no-createdb\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"superuser\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"no-superuser\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"createrole\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"no-createrole\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"no-inherit\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"no-login\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"replication\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"no-replication\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"connection-limit\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"pwprompt\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"encrypted\00", align 1
@TRI_DEFAULT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"pgscripts\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"createuser\00", align 1
@help = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [26 x i8] c"h:p:U:g:wWedDsSrRiIlLc:PE\00", align 1
@optarg = common dso_local global i32 0, align 4
@TRI_NO = common dso_local global i32 0, align 4
@TRI_YES = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [39 x i8] c"Try \22%s --help\22 for more information.\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [48 x i8] c"too many command-line arguments (first is \22%s\22)\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"Enter name of role to add: \00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"PGUSER\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Enter password for new role: \00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Enter it again: \00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Passwords didn't match.\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"Shall the new role be a superuser?\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"Shall the new role be allowed to create databases?\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"Shall the new role be allowed to create more new roles?\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"CREATE ROLE %s\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c" PASSWORD \00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"password encryption failed: %s\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c" SUPERUSER\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c" NOSUPERUSER\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c" CREATEDB\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c" NOCREATEDB\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c" CREATEROLE\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c" NOCREATEROLE\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c" INHERIT\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c" NOINHERIT\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c" LOGIN\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c" NOLOGIN\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c" REPLICATION\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c" NOREPLICATION\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c" CONNECTION LIMIT %s\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c" IN ROLE \00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.56 = private unnamed_addr constant [32 x i8] c"creation of new role failed: %s\00", align 1

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
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca [128 x i8], align 16
  %21 = alloca [100 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_13__, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca [100 x i8], align 16
  %32 = alloca i8*, align 8
  %33 = alloca %struct.TYPE_11__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %34 = bitcast %struct.TYPE_12__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 24, i1 false)
  %35 = load i32, i32* @TRI_DEFAULT, align 4
  store i32 %35, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  store i8* null, i8** %19, align 8
  %36 = load i32, i32* @TRI_DEFAULT, align 4
  store i32 %36, i32* %22, align 4
  %37 = load i32, i32* @TRI_DEFAULT, align 4
  store i32 %37, i32* %23, align 4
  %38 = load i32, i32* @TRI_DEFAULT, align 4
  store i32 %38, i32* %24, align 4
  %39 = load i32, i32* @TRI_DEFAULT, align 4
  store i32 %39, i32* %25, align 4
  %40 = load i32, i32* @TRI_DEFAULT, align 4
  store i32 %40, i32* %26, align 4
  %41 = load i32, i32* @TRI_DEFAULT, align 4
  store i32 %41, i32* %27, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @pg_logging_init(i8* %44)
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @get_progname(i8* %48)
  store i8* %49, i8** %6, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PG_TEXTDOMAIN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %54 = call i32 @set_pglocale_pgservice(i8* %52, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* @help, align 4
  %58 = call i32 @handle_help_version_opts(i32 %55, i8** %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %119, %2
  %60 = load i32, i32* %4, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = call i32 @getopt_long(i32 %60, i8** %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), %struct.option* getelementptr inbounds ([24 x %struct.option], [24 x %struct.option]* @main.long_options, i64 0, i64 0), i32* %7)
  store i32 %62, i32* %8, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %120

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  switch i32 %65, label %113 [
    i32 104, label %66
    i32 112, label %69
    i32 85, label %72
    i32 103, label %75
    i32 119, label %78
    i32 87, label %80
    i32 101, label %82
    i32 100, label %83
    i32 68, label %85
    i32 115, label %87
    i32 83, label %89
    i32 114, label %91
    i32 82, label %93
    i32 105, label %95
    i32 73, label %97
    i32 108, label %99
    i32 76, label %101
    i32 99, label %103
    i32 80, label %106
    i32 69, label %107
    i32 1, label %108
    i32 2, label %110
    i32 3, label %112
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* @optarg, align 4
  %68 = call i8* @pg_strdup(i32 %67)
  store i8* %68, i8** %10, align 8
  br label %119

69:                                               ; preds = %64
  %70 = load i32, i32* @optarg, align 4
  %71 = call i8* @pg_strdup(i32 %70)
  store i8* %71, i8** %11, align 8
  br label %119

72:                                               ; preds = %64
  %73 = load i32, i32* @optarg, align 4
  %74 = call i8* @pg_strdup(i32 %73)
  store i8* %74, i8** %12, align 8
  br label %119

75:                                               ; preds = %64
  %76 = load i32, i32* @optarg, align 4
  %77 = call i32 @simple_string_list_append(%struct.TYPE_12__* %13, i32 %76)
  br label %119

78:                                               ; preds = %64
  %79 = load i32, i32* @TRI_NO, align 4
  store i32 %79, i32* %14, align 4
  br label %119

80:                                               ; preds = %64
  %81 = load i32, i32* @TRI_YES, align 4
  store i32 %81, i32* %14, align 4
  br label %119

82:                                               ; preds = %64
  store i32 1, i32* %15, align 4
  br label %119

83:                                               ; preds = %64
  %84 = load i32, i32* @TRI_YES, align 4
  store i32 %84, i32* %22, align 4
  br label %119

85:                                               ; preds = %64
  %86 = load i32, i32* @TRI_NO, align 4
  store i32 %86, i32* %22, align 4
  br label %119

87:                                               ; preds = %64
  %88 = load i32, i32* @TRI_YES, align 4
  store i32 %88, i32* %23, align 4
  br label %119

89:                                               ; preds = %64
  %90 = load i32, i32* @TRI_NO, align 4
  store i32 %90, i32* %23, align 4
  br label %119

91:                                               ; preds = %64
  %92 = load i32, i32* @TRI_YES, align 4
  store i32 %92, i32* %24, align 4
  br label %119

93:                                               ; preds = %64
  %94 = load i32, i32* @TRI_NO, align 4
  store i32 %94, i32* %24, align 4
  br label %119

95:                                               ; preds = %64
  %96 = load i32, i32* @TRI_YES, align 4
  store i32 %96, i32* %25, align 4
  br label %119

97:                                               ; preds = %64
  %98 = load i32, i32* @TRI_NO, align 4
  store i32 %98, i32* %25, align 4
  br label %119

99:                                               ; preds = %64
  %100 = load i32, i32* @TRI_YES, align 4
  store i32 %100, i32* %26, align 4
  br label %119

101:                                              ; preds = %64
  %102 = load i32, i32* @TRI_NO, align 4
  store i32 %102, i32* %26, align 4
  br label %119

103:                                              ; preds = %64
  %104 = load i32, i32* @optarg, align 4
  %105 = call i8* @pg_strdup(i32 %104)
  store i8* %105, i8** %17, align 8
  br label %119

106:                                              ; preds = %64
  store i32 1, i32* %18, align 4
  br label %119

107:                                              ; preds = %64
  br label %119

108:                                              ; preds = %64
  %109 = load i32, i32* @TRI_YES, align 4
  store i32 %109, i32* %27, align 4
  br label %119

110:                                              ; preds = %64
  %111 = load i32, i32* @TRI_NO, align 4
  store i32 %111, i32* %27, align 4
  br label %119

112:                                              ; preds = %64
  store i32 1, i32* %16, align 4
  br label %119

113:                                              ; preds = %64
  %114 = load i32, i32* @stderr, align 4
  %115 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0))
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* %115, i8* %116)
  %118 = call i32 @exit(i32 1) #4
  unreachable

119:                                              ; preds = %112, %110, %108, %107, %106, %103, %101, %99, %97, %95, %93, %91, %89, %87, %85, %83, %82, %80, %78, %75, %72, %69, %66
  br label %59

120:                                              ; preds = %59
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @optind, align 4
  %123 = sub nsw i32 %121, %122
  switch i32 %123, label %131 [
    i32 0, label %124
    i32 1, label %125
  ]

124:                                              ; preds = %120
  br label %144

125:                                              ; preds = %120
  %126 = load i8**, i8*** %5, align 8
  %127 = load i32, i32* @optind, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %9, align 8
  br label %144

131:                                              ; preds = %120
  %132 = load i8**, i8*** %5, align 8
  %133 = load i32, i32* @optind, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %132, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @pg_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i64 0, i64 0), i8* %137)
  %139 = load i32, i32* @stderr, align 4
  %140 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0))
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* %140, i8* %141)
  %143 = call i32 @exit(i32 1) #4
  unreachable

144:                                              ; preds = %125, %124
  %145 = load i8*, i8** %9, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %164

147:                                              ; preds = %144
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %152 = call i32 @simple_prompt(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i8* %151, i32 128, i32 1)
  %153 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  store i8* %153, i8** %9, align 8
  br label %163

154:                                              ; preds = %147
  %155 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  store i8* %158, i8** %9, align 8
  br label %162

159:                                              ; preds = %154
  %160 = load i8*, i8** %6, align 8
  %161 = call i8* @get_user_name_or_exit(i8* %160)
  store i8* %161, i8** %9, align 8
  br label %162

162:                                              ; preds = %159, %157
  br label %163

163:                                              ; preds = %162, %150
  br label %164

164:                                              ; preds = %163, %144
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %164
  %168 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %169 = call i32 @simple_prompt(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0), i8* %168, i32 100, i32 0)
  %170 = getelementptr inbounds [100 x i8], [100 x i8]* %31, i64 0, i64 0
  %171 = call i32 @simple_prompt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* %170, i32 100, i32 0)
  %172 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %173 = getelementptr inbounds [100 x i8], [100 x i8]* %31, i64 0, i64 0
  %174 = call i64 @strcmp(i8* %172, i8* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %167
  %177 = load i32, i32* @stderr, align 4
  %178 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0))
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %177, i8* %178)
  %180 = call i32 @exit(i32 1) #4
  unreachable

181:                                              ; preds = %167
  %182 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  store i8* %182, i8** %19, align 8
  br label %183

183:                                              ; preds = %181, %164
  %184 = load i32, i32* %23, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %183
  %187 = load i32, i32* %16, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = call i64 @yesno_prompt(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0))
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i32, i32* @TRI_YES, align 4
  store i32 %193, i32* %23, align 4
  br label %196

194:                                              ; preds = %189, %186
  %195 = load i32, i32* @TRI_NO, align 4
  store i32 %195, i32* %23, align 4
  br label %196

196:                                              ; preds = %194, %192
  br label %197

197:                                              ; preds = %196, %183
  %198 = load i32, i32* %23, align 4
  %199 = load i32, i32* @TRI_YES, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load i32, i32* @TRI_YES, align 4
  store i32 %202, i32* %22, align 4
  %203 = load i32, i32* @TRI_YES, align 4
  store i32 %203, i32* %24, align 4
  br label %204

204:                                              ; preds = %201, %197
  %205 = load i32, i32* %22, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %204
  %208 = load i32, i32* %16, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = call i64 @yesno_prompt(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0))
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = load i32, i32* @TRI_YES, align 4
  store i32 %214, i32* %22, align 4
  br label %217

215:                                              ; preds = %210, %207
  %216 = load i32, i32* @TRI_NO, align 4
  store i32 %216, i32* %22, align 4
  br label %217

217:                                              ; preds = %215, %213
  br label %218

218:                                              ; preds = %217, %204
  %219 = load i32, i32* %24, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %218
  %222 = load i32, i32* %16, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = call i64 @yesno_prompt(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0))
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = load i32, i32* @TRI_YES, align 4
  store i32 %228, i32* %24, align 4
  br label %231

229:                                              ; preds = %224, %221
  %230 = load i32, i32* @TRI_NO, align 4
  store i32 %230, i32* %24, align 4
  br label %231

231:                                              ; preds = %229, %227
  br label %232

232:                                              ; preds = %231, %218
  %233 = load i32, i32* %25, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = load i32, i32* @TRI_YES, align 4
  store i32 %236, i32* %25, align 4
  br label %237

237:                                              ; preds = %235, %232
  %238 = load i32, i32* %26, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = load i32, i32* @TRI_YES, align 4
  store i32 %241, i32* %26, align 4
  br label %242

242:                                              ; preds = %240, %237
  %243 = load i8*, i8** %10, align 8
  %244 = load i8*, i8** %11, align 8
  %245 = load i8*, i8** %12, align 8
  %246 = load i32, i32* %14, align 4
  %247 = load i8*, i8** %6, align 8
  %248 = load i32, i32* %15, align 4
  %249 = call i32* @connectDatabase(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i8* %243, i8* %244, i8* %245, i32 %246, i8* %247, i32 %248, i32 0, i32 0)
  store i32* %249, i32** %29, align 8
  %250 = call i32 @initPQExpBuffer(%struct.TYPE_13__* %28)
  %251 = load i8*, i8** %9, align 8
  %252 = call i8* @fmtId(i8* %251)
  %253 = call i32 @printfPQExpBuffer(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* %252)
  %254 = load i8*, i8** %19, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %275

256:                                              ; preds = %242
  %257 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  %258 = load i32*, i32** %29, align 8
  %259 = load i8*, i8** %19, align 8
  %260 = load i8*, i8** %9, align 8
  %261 = call i8* @PQencryptPasswordConn(i32* %258, i8* %259, i8* %260, i32* null)
  store i8* %261, i8** %32, align 8
  %262 = load i8*, i8** %32, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %269, label %264

264:                                              ; preds = %256
  %265 = load i32*, i32** %29, align 8
  %266 = call i8* @PQerrorMessage(i32* %265)
  %267 = call i32 @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i8* %266)
  %268 = call i32 @exit(i32 1) #4
  unreachable

269:                                              ; preds = %256
  %270 = load i8*, i8** %32, align 8
  %271 = load i32*, i32** %29, align 8
  %272 = call i32 @appendStringLiteralConn(%struct.TYPE_13__* %28, i8* %270, i32* %271)
  %273 = load i8*, i8** %32, align 8
  %274 = call i32 @PQfreemem(i8* %273)
  br label %275

275:                                              ; preds = %269, %242
  %276 = load i32, i32* %23, align 4
  %277 = load i32, i32* @TRI_YES, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0))
  br label %281

281:                                              ; preds = %279, %275
  %282 = load i32, i32* %23, align 4
  %283 = load i32, i32* @TRI_NO, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %287

285:                                              ; preds = %281
  %286 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0))
  br label %287

287:                                              ; preds = %285, %281
  %288 = load i32, i32* %22, align 4
  %289 = load i32, i32* @TRI_YES, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0))
  br label %293

293:                                              ; preds = %291, %287
  %294 = load i32, i32* %22, align 4
  %295 = load i32, i32* @TRI_NO, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0))
  br label %299

299:                                              ; preds = %297, %293
  %300 = load i32, i32* %24, align 4
  %301 = load i32, i32* @TRI_YES, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %299
  %304 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0))
  br label %305

305:                                              ; preds = %303, %299
  %306 = load i32, i32* %24, align 4
  %307 = load i32, i32* @TRI_NO, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0))
  br label %311

311:                                              ; preds = %309, %305
  %312 = load i32, i32* %25, align 4
  %313 = load i32, i32* @TRI_YES, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %311
  %316 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0))
  br label %317

317:                                              ; preds = %315, %311
  %318 = load i32, i32* %25, align 4
  %319 = load i32, i32* @TRI_NO, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %317
  %322 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0))
  br label %323

323:                                              ; preds = %321, %317
  %324 = load i32, i32* %26, align 4
  %325 = load i32, i32* @TRI_YES, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %329

327:                                              ; preds = %323
  %328 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0))
  br label %329

329:                                              ; preds = %327, %323
  %330 = load i32, i32* %26, align 4
  %331 = load i32, i32* @TRI_NO, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %335

333:                                              ; preds = %329
  %334 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0))
  br label %335

335:                                              ; preds = %333, %329
  %336 = load i32, i32* %27, align 4
  %337 = load i32, i32* @TRI_YES, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %341

339:                                              ; preds = %335
  %340 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i64 0, i64 0))
  br label %341

341:                                              ; preds = %339, %335
  %342 = load i32, i32* %27, align 4
  %343 = load i32, i32* @TRI_NO, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %347

345:                                              ; preds = %341
  %346 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0))
  br label %347

347:                                              ; preds = %345, %341
  %348 = load i8*, i8** %17, align 8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %350, label %353

350:                                              ; preds = %347
  %351 = load i8*, i8** %17, align 8
  %352 = call i32 @appendPQExpBuffer(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* %351)
  br label %353

353:                                              ; preds = %350, %347
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %354, align 8
  %356 = icmp ne %struct.TYPE_11__* %355, null
  br i1 %356, label %357, label %387

357:                                              ; preds = %353
  %358 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0))
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %359, align 8
  store %struct.TYPE_11__* %360, %struct.TYPE_11__** %33, align 8
  br label %361

361:                                              ; preds = %382, %357
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %363 = icmp ne %struct.TYPE_11__* %362, null
  br i1 %363, label %364, label %386

364:                                              ; preds = %361
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %366, align 8
  %368 = icmp ne %struct.TYPE_11__* %367, null
  br i1 %368, label %369, label %375

369:                                              ; preds = %364
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = call i8* @fmtId(i8* %372)
  %374 = call i32 @appendPQExpBuffer(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* %373)
  br label %381

375:                                              ; preds = %364
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = call i8* @fmtId(i8* %378)
  %380 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %28, i8* %379)
  br label %381

381:                                              ; preds = %375, %369
  br label %382

382:                                              ; preds = %381
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %384, align 8
  store %struct.TYPE_11__* %385, %struct.TYPE_11__** %33, align 8
  br label %361

386:                                              ; preds = %361
  br label %387

387:                                              ; preds = %386, %353
  %388 = call i32 @appendPQExpBufferChar(%struct.TYPE_13__* %28, i8 signext 59)
  %389 = load i32, i32* %15, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %395

391:                                              ; preds = %387
  %392 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* %393)
  br label %395

395:                                              ; preds = %391, %387
  %396 = load i32*, i32** %29, align 8
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %398 = load i8*, i8** %397, align 8
  %399 = call i32* @PQexec(i32* %396, i8* %398)
  store i32* %399, i32** %30, align 8
  %400 = load i32*, i32** %30, align 8
  %401 = call i64 @PQresultStatus(i32* %400)
  %402 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %403 = icmp ne i64 %401, %402
  br i1 %403, label %404, label %411

404:                                              ; preds = %395
  %405 = load i32*, i32** %29, align 8
  %406 = call i8* @PQerrorMessage(i32* %405)
  %407 = call i32 @pg_log_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0), i8* %406)
  %408 = load i32*, i32** %29, align 8
  %409 = call i32 @PQfinish(i32* %408)
  %410 = call i32 @exit(i32 1) #4
  unreachable

411:                                              ; preds = %395
  %412 = load i32*, i32** %30, align 8
  %413 = call i32 @PQclear(i32* %412)
  %414 = load i32*, i32** %29, align 8
  %415 = call i32 @PQfinish(i32* %414)
  %416 = call i32 @exit(i32 0) #4
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

declare dso_local i32 @simple_string_list_append(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @_(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @pg_log_error(i8*, i8*) #2

declare dso_local i32 @simple_prompt(i8*, i8*, i32, i32) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @get_user_name_or_exit(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @yesno_prompt(i8*) #2

declare dso_local i32* @connectDatabase(i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_13__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_13__*, i8*, i8*) #2

declare dso_local i8* @fmtId(i8*) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_13__*, i8*) #2

declare dso_local i8* @PQencryptPasswordConn(i32*, i8*, i8*, i32*) #2

declare dso_local i8* @PQerrorMessage(i32*) #2

declare dso_local i32 @appendStringLiteralConn(%struct.TYPE_13__*, i8*, i32*) #2

declare dso_local i32 @PQfreemem(i8*) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_13__*, i8*, i8*) #2

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_13__*, i8 signext) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32* @PQexec(i32*, i8*) #2

declare dso_local i64 @PQresultStatus(i32*) #2

declare dso_local i32 @PQfinish(i32*) #2

declare dso_local i32 @PQclear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
