; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_vacuumdb.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_vacuumdb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_9__ = type { i32*, i32*, i32* }

@main.long_options = internal global [23 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8 -128, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32* null, i32 85 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8 -127, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8 -127, i32* null, i32 87 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8 -127, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8 -127, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8 -128, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8 -127, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8 -127, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8 -127, i32* null, i32 70 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8 -127, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8 -128, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8 -127, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8 -127, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8 -128, i32* null, i32 106 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8 -128, i32* null, i32 2 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8 -127, i32* null, i32 3 }, %struct.option { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8 -127, i32* null, i32 4 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8 -127, i32* null, i32 5 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8 -128, i32* null, i32 6 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8 -128, i32* null, i32 7 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"no-password\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"analyze\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"analyze-only\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"jobs\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"maintenance-db\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"analyze-in-stages\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"disable-page-skipping\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"skip-locked\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"min-xid-age\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"min-mxid-age\00", align 1
@TRI_DEFAULT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"pgscripts\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"vacuumdb\00", align 1
@help = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [23 x i8] c"h:p:U:wWeqd:zZFat:fvj:\00", align 1
@optarg = common dso_local global i32 0, align 4
@TRI_NO = common dso_local global i32 0, align 4
@TRI_YES = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [43 x i8] c"number of parallel jobs must be at least 1\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"minimum transaction ID age must be at least 1\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"minimum multixact ID age must be at least 1\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [39 x i8] c"Try \22%s --help\22 for more information.\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [48 x i8] c"too many command-line arguments (first is \22%s\22)\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"cannot use the \22%s\22 option when performing only analyze\00", align 1
@.str.31 = private unnamed_addr constant [64 x i8] c"cannot vacuum all databases and a specific one at the same time\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"cannot vacuum specific table(s) in all databases\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"PGDATABASE\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"PGUSER\00", align 1
@ANALYZE_NUM_STAGES = common dso_local global i32 0, align 4
@ANALYZE_NO_STAGE = common dso_local global i32 0, align 4

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
  %17 = alloca %struct.TYPE_8__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %24 = load i32, i32* @TRI_DEFAULT, align 4
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %25 = bitcast %struct.TYPE_9__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 24, i1 false)
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %26 = call i32 @memset(%struct.TYPE_8__* %17, i32 0, i32 48)
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @pg_logging_init(i8* %29)
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @get_progname(i8* %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PG_TEXTDOMAIN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %39 = call i32 @set_pglocale_pgservice(i8* %37, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* @help, align 4
  %43 = call i32 @handle_help_version_opts(i32 %40, i8** %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %132, %2
  %45 = load i32, i32* %4, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = call i32 @getopt_long(i32 %45, i8** %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), %struct.option* getelementptr inbounds ([23 x %struct.option], [23 x %struct.option]* @main.long_options, i64 0, i64 0), i32* %7)
  store i32 %47, i32* %8, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %133

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %126 [
    i32 104, label %51
    i32 112, label %54
    i32 85, label %57
    i32 119, label %60
    i32 87, label %62
    i32 101, label %64
    i32 113, label %65
    i32 100, label %66
    i32 122, label %69
    i32 90, label %71
    i32 70, label %73
    i32 97, label %75
    i32 116, label %76
    i32 102, label %81
    i32 118, label %83
    i32 106, label %85
    i32 2, label %95
    i32 3, label %98
    i32 4, label %100
    i32 5, label %102
    i32 6, label %104
    i32 7, label %115
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* @optarg, align 4
  %53 = call i8* @pg_strdup(i32 %52)
  store i8* %53, i8** %11, align 8
  br label %132

54:                                               ; preds = %49
  %55 = load i32, i32* @optarg, align 4
  %56 = call i8* @pg_strdup(i32 %55)
  store i8* %56, i8** %12, align 8
  br label %132

57:                                               ; preds = %49
  %58 = load i32, i32* @optarg, align 4
  %59 = call i8* @pg_strdup(i32 %58)
  store i8* %59, i8** %13, align 8
  br label %132

60:                                               ; preds = %49
  %61 = load i32, i32* @TRI_NO, align 4
  store i32 %61, i32* %14, align 4
  br label %132

62:                                               ; preds = %49
  %63 = load i32, i32* @TRI_YES, align 4
  store i32 %63, i32* %14, align 4
  br label %132

64:                                               ; preds = %49
  store i32 1, i32* %15, align 4
  br label %132

65:                                               ; preds = %49
  store i32 1, i32* %16, align 4
  br label %132

66:                                               ; preds = %49
  %67 = load i32, i32* @optarg, align 4
  %68 = call i8* @pg_strdup(i32 %67)
  store i8* %68, i8** %9, align 8
  br label %132

69:                                               ; preds = %49
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %132

71:                                               ; preds = %49
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %132

73:                                               ; preds = %49
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  store i32 1, i32* %74, align 8
  br label %132

75:                                               ; preds = %49
  store i32 1, i32* %19, align 4
  br label %132

76:                                               ; preds = %49
  %77 = load i32, i32* @optarg, align 4
  %78 = call i32 @simple_string_list_append(%struct.TYPE_9__* %20, i32 %77)
  %79 = load i32, i32* %22, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %22, align 4
  br label %132

81:                                               ; preds = %49
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i32 1, i32* %82, align 4
  br label %132

83:                                               ; preds = %49
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i32 1, i32* %84, align 8
  br label %132

85:                                               ; preds = %49
  %86 = load i32, i32* @optarg, align 4
  %87 = call i8* @atoi(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %21, align 4
  %89 = load i32, i32* %21, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0))
  %93 = call i32 @exit(i32 1) #4
  unreachable

94:                                               ; preds = %85
  br label %132

95:                                               ; preds = %49
  %96 = load i32, i32* @optarg, align 4
  %97 = call i8* @pg_strdup(i32 %96)
  store i8* %97, i8** %10, align 8
  br label %132

98:                                               ; preds = %49
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32 1, i32* %99, align 4
  store i32 1, i32* %18, align 4
  br label %132

100:                                              ; preds = %49
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  store i32 1, i32* %101, align 4
  br label %132

102:                                              ; preds = %49
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 6
  store i32 1, i32* %103, align 8
  br label %132

104:                                              ; preds = %49
  %105 = load i32, i32* @optarg, align 4
  %106 = call i8* @atoi(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 8
  store i8* %106, i8** %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 8
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ule i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0))
  %113 = call i32 @exit(i32 1) #4
  unreachable

114:                                              ; preds = %104
  br label %132

115:                                              ; preds = %49
  %116 = load i32, i32* @optarg, align 4
  %117 = call i8* @atoi(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 7
  store i8* %117, i8** %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 7
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ule i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i64 0, i64 0))
  %124 = call i32 @exit(i32 1) #4
  unreachable

125:                                              ; preds = %115
  br label %132

126:                                              ; preds = %49
  %127 = load i32, i32* @stderr, align 4
  %128 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0))
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 @fprintf(i32 %127, i8* %128, i8* %129)
  %131 = call i32 @exit(i32 1) #4
  unreachable

132:                                              ; preds = %125, %114, %102, %100, %98, %95, %94, %83, %81, %76, %75, %73, %71, %69, %66, %65, %64, %62, %60, %57, %54, %51
  br label %44

133:                                              ; preds = %44
  %134 = load i32, i32* @optind, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load i8*, i8** %9, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i8**, i8*** %5, align 8
  %142 = load i32, i32* @optind, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %9, align 8
  %146 = load i32, i32* @optind, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @optind, align 4
  br label %148

148:                                              ; preds = %140, %137, %133
  %149 = load i32, i32* @optind, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = load i8**, i8*** %5, align 8
  %154 = load i32, i32* @optind, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.29, i64 0, i64 0), i8* %157)
  %159 = load i32, i32* @stderr, align 4
  %160 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0))
  %161 = load i8*, i8** %6, align 8
  %162 = call i32 @fprintf(i32 %159, i8* %160, i8* %161)
  %163 = call i32 @exit(i32 1) #4
  unreachable

164:                                              ; preds = %148
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %190

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %174 = call i32 @exit(i32 1) #4
  unreachable

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %181 = call i32 @exit(i32 1) #4
  unreachable

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %188 = call i32 @exit(i32 1) #4
  unreachable

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189, %164
  %191 = call i32 (...) @setup_cancel_handler()
  %192 = load i32, i32* %22, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load i32, i32* %21, align 4
  %196 = load i32, i32* %22, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* %22, align 4
  store i32 %199, i32* %21, align 4
  br label %200

200:                                              ; preds = %198, %194, %190
  %201 = load i32, i32* %19, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %228

203:                                              ; preds = %200
  %204 = load i8*, i8** %9, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.31, i64 0, i64 0))
  %208 = call i32 @exit(i32 1) #4
  unreachable

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i64 0, i64 0))
  %215 = call i32 @exit(i32 1) #4
  unreachable

216:                                              ; preds = %209
  %217 = load i32, i32* %18, align 4
  %218 = load i8*, i8** %10, align 8
  %219 = load i8*, i8** %11, align 8
  %220 = load i8*, i8** %12, align 8
  %221 = load i8*, i8** %13, align 8
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* %21, align 4
  %224 = load i8*, i8** %6, align 8
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* %16, align 4
  %227 = call i32 @vacuum_all_databases(%struct.TYPE_8__* %17, i32 %217, i8* %218, i8* %219, i8* %220, i8* %221, i32 %222, i32 %223, i8* %224, i32 %225, i32 %226)
  br label %283

228:                                              ; preds = %200
  %229 = load i8*, i8** %9, align 8
  %230 = icmp eq i8* %229, null
  br i1 %230, label %231, label %246

231:                                              ; preds = %228
  %232 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  store i8* %235, i8** %9, align 8
  br label %245

236:                                              ; preds = %231
  %237 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %236
  %240 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  store i8* %240, i8** %9, align 8
  br label %244

241:                                              ; preds = %236
  %242 = load i8*, i8** %6, align 8
  %243 = call i8* @get_user_name_or_exit(i8* %242)
  store i8* %243, i8** %9, align 8
  br label %244

244:                                              ; preds = %241, %239
  br label %245

245:                                              ; preds = %244, %234
  br label %246

246:                                              ; preds = %245, %228
  %247 = load i32, i32* %18, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %270

249:                                              ; preds = %246
  store i32 0, i32* %23, align 4
  br label %250

250:                                              ; preds = %266, %249
  %251 = load i32, i32* %23, align 4
  %252 = load i32, i32* @ANALYZE_NUM_STAGES, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %269

254:                                              ; preds = %250
  %255 = load i8*, i8** %9, align 8
  %256 = load i32, i32* %23, align 4
  %257 = load i8*, i8** %11, align 8
  %258 = load i8*, i8** %12, align 8
  %259 = load i8*, i8** %13, align 8
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* %21, align 4
  %262 = load i8*, i8** %6, align 8
  %263 = load i32, i32* %15, align 4
  %264 = load i32, i32* %16, align 4
  %265 = call i32 @vacuum_one_database(i8* %255, %struct.TYPE_8__* %17, i32 %256, %struct.TYPE_9__* %20, i8* %257, i8* %258, i8* %259, i32 %260, i32 %261, i8* %262, i32 %263, i32 %264)
  br label %266

266:                                              ; preds = %254
  %267 = load i32, i32* %23, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %23, align 4
  br label %250

269:                                              ; preds = %250
  br label %282

270:                                              ; preds = %246
  %271 = load i8*, i8** %9, align 8
  %272 = load i32, i32* @ANALYZE_NO_STAGE, align 4
  %273 = load i8*, i8** %11, align 8
  %274 = load i8*, i8** %12, align 8
  %275 = load i8*, i8** %13, align 8
  %276 = load i32, i32* %14, align 4
  %277 = load i32, i32* %21, align 4
  %278 = load i8*, i8** %6, align 8
  %279 = load i32, i32* %15, align 4
  %280 = load i32, i32* %16, align 4
  %281 = call i32 @vacuum_one_database(i8* %271, %struct.TYPE_8__* %17, i32 %272, %struct.TYPE_9__* %20, i8* %273, i8* %274, i8* %275, i32 %276, i32 %277, i8* %278, i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %270, %269
  br label %283

283:                                              ; preds = %282, %216
  %284 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @pg_logging_init(i8*) #2

declare dso_local i8* @get_progname(i8*) #2

declare dso_local i32 @set_pglocale_pgservice(i8*, i32) #2

declare dso_local i32 @PG_TEXTDOMAIN(i8*) #2

declare dso_local i32 @handle_help_version_opts(i32, i8**, i8*, i32) #2

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local i8* @pg_strdup(i32) #2

declare dso_local i32 @simple_string_list_append(%struct.TYPE_9__*, i32) #2

declare dso_local i8* @atoi(i32) #2

declare dso_local i32 @pg_log_error(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @setup_cancel_handler(...) #2

declare dso_local i32 @vacuum_all_databases(%struct.TYPE_8__*, i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i32) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @get_user_name_or_exit(i8*) #2

declare dso_local i32 @vacuum_one_database(i8*, %struct.TYPE_8__*, i32, %struct.TYPE_9__*, i8*, i8*, i8*, i32, i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
