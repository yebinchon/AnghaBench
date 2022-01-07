; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_createdb.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_createdb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }
%struct.TYPE_7__ = type { i8* }

@main.long_options = internal global [15 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8 -128, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32* null, i32 85 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8 -127, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8 -127, i32* null, i32 87 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8 -127, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8 -128, i32* null, i32 79 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8 -128, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8 -128, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8 -128, i32* null, i32 69 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8 -128, i32* null, i32 1 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8 -128, i32* null, i32 2 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8 -128, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8 -128, i32* null, i32 3 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"no-password\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"owner\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"tablespace\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"lc-collate\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"lc-ctype\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"maintenance-db\00", align 1
@TRI_DEFAULT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"pgscripts\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"createdb\00", align 1
@help = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"h:p:U:wWeO:D:T:E:l:\00", align 1
@optarg = common dso_local global i32 0, align 4
@TRI_NO = common dso_local global i32 0, align 4
@TRI_YES = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"Try \22%s --help\22 for more information.\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [48 x i8] c"too many command-line arguments (first is \22%s\22)\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"only one of --locale and --lc-ctype can be specified\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"only one of --locale and --lc-collate can be specified\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"\22%s\22 is not a valid encoding name\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"PGDATABASE\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"PGUSER\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"CREATE DATABASE %s\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c" OWNER %s\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c" TABLESPACE %s\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c" ENCODING '%s'\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c" TEMPLATE %s\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c" LC_COLLATE '%s'\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c" LC_CTYPE '%s'\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"template1\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [29 x i8] c"database creation failed: %s\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"COMMENT ON DATABASE %s IS \00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"comment creation failed (database was created): %s\00", align 1

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
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_7__, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %27 = load i32, i32* @TRI_DEFAULT, align 4
  store i32 %27, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @pg_logging_init(i8* %30)
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @get_progname(i8* %34)
  store i8* %35, i8** %6, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @PG_TEXTDOMAIN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %40 = call i32 @set_pglocale_pgservice(i8* %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* @help, align 4
  %44 = call i32 @handle_help_version_opts(i32 %41, i8** %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %96, %2
  %46 = load i32, i32* %4, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = call i32 @getopt_long(i32 %46, i8** %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), %struct.option* getelementptr inbounds ([15 x %struct.option], [15 x %struct.option]* @main.long_options, i64 0, i64 0), i32* %7)
  store i32 %48, i32* %8, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %97

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %90 [
    i32 104, label %52
    i32 112, label %55
    i32 85, label %58
    i32 119, label %61
    i32 87, label %63
    i32 101, label %65
    i32 79, label %66
    i32 68, label %69
    i32 84, label %72
    i32 69, label %75
    i32 1, label %78
    i32 2, label %81
    i32 108, label %84
    i32 3, label %87
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* @optarg, align 4
  %54 = call i8* @pg_strdup(i32 %53)
  store i8* %54, i8** %12, align 8
  br label %96

55:                                               ; preds = %50
  %56 = load i32, i32* @optarg, align 4
  %57 = call i8* @pg_strdup(i32 %56)
  store i8* %57, i8** %13, align 8
  br label %96

58:                                               ; preds = %50
  %59 = load i32, i32* @optarg, align 4
  %60 = call i8* @pg_strdup(i32 %59)
  store i8* %60, i8** %14, align 8
  br label %96

61:                                               ; preds = %50
  %62 = load i32, i32* @TRI_NO, align 4
  store i32 %62, i32* %15, align 4
  br label %96

63:                                               ; preds = %50
  %64 = load i32, i32* @TRI_YES, align 4
  store i32 %64, i32* %15, align 4
  br label %96

65:                                               ; preds = %50
  store i32 1, i32* %16, align 4
  br label %96

66:                                               ; preds = %50
  %67 = load i32, i32* @optarg, align 4
  %68 = call i8* @pg_strdup(i32 %67)
  store i8* %68, i8** %17, align 8
  br label %96

69:                                               ; preds = %50
  %70 = load i32, i32* @optarg, align 4
  %71 = call i8* @pg_strdup(i32 %70)
  store i8* %71, i8** %18, align 8
  br label %96

72:                                               ; preds = %50
  %73 = load i32, i32* @optarg, align 4
  %74 = call i8* @pg_strdup(i32 %73)
  store i8* %74, i8** %19, align 8
  br label %96

75:                                               ; preds = %50
  %76 = load i32, i32* @optarg, align 4
  %77 = call i8* @pg_strdup(i32 %76)
  store i8* %77, i8** %20, align 8
  br label %96

78:                                               ; preds = %50
  %79 = load i32, i32* @optarg, align 4
  %80 = call i8* @pg_strdup(i32 %79)
  store i8* %80, i8** %21, align 8
  br label %96

81:                                               ; preds = %50
  %82 = load i32, i32* @optarg, align 4
  %83 = call i8* @pg_strdup(i32 %82)
  store i8* %83, i8** %22, align 8
  br label %96

84:                                               ; preds = %50
  %85 = load i32, i32* @optarg, align 4
  %86 = call i8* @pg_strdup(i32 %85)
  store i8* %86, i8** %23, align 8
  br label %96

87:                                               ; preds = %50
  %88 = load i32, i32* @optarg, align 4
  %89 = call i8* @pg_strdup(i32 %88)
  store i8* %89, i8** %10, align 8
  br label %96

90:                                               ; preds = %50
  %91 = load i32, i32* @stderr, align 4
  %92 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @fprintf(i32 %91, i8* %92, i8* %93)
  %95 = call i32 @exit(i32 1) #3
  unreachable

96:                                               ; preds = %87, %84, %81, %78, %75, %72, %69, %66, %65, %63, %61, %58, %55, %52
  br label %45

97:                                               ; preds = %45
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @optind, align 4
  %100 = sub nsw i32 %98, %99
  switch i32 %100, label %120 [
    i32 0, label %101
    i32 1, label %102
    i32 2, label %108
  ]

101:                                              ; preds = %97
  br label %133

102:                                              ; preds = %97
  %103 = load i8**, i8*** %5, align 8
  %104 = load i32, i32* @optind, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %9, align 8
  br label %133

108:                                              ; preds = %97
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* @optind, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %9, align 8
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* @optind, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %114, i64 %117
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %11, align 8
  br label %133

120:                                              ; preds = %97
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* @optind, align 4
  %123 = add nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i8* %126)
  %128 = load i32, i32* @stderr, align 4
  %129 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @fprintf(i32 %128, i8* %129, i8* %130)
  %132 = call i32 @exit(i32 1) #3
  unreachable

133:                                              ; preds = %108, %102, %101
  %134 = load i8*, i8** %23, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %151

136:                                              ; preds = %133
  %137 = load i8*, i8** %22, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i64 0, i64 0))
  %141 = call i32 @exit(i32 1) #3
  unreachable

142:                                              ; preds = %136
  %143 = load i8*, i8** %21, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.20, i64 0, i64 0))
  %147 = call i32 @exit(i32 1) #3
  unreachable

148:                                              ; preds = %142
  %149 = load i8*, i8** %23, align 8
  store i8* %149, i8** %22, align 8
  %150 = load i8*, i8** %23, align 8
  store i8* %150, i8** %21, align 8
  br label %151

151:                                              ; preds = %148, %133
  %152 = load i8*, i8** %20, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load i8*, i8** %20, align 8
  %156 = call i64 @pg_char_to_encoding(i8* %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i8*, i8** %20, align 8
  %160 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i8* %159)
  %161 = call i32 @exit(i32 1) #3
  unreachable

162:                                              ; preds = %154
  br label %163

163:                                              ; preds = %162, %151
  %164 = load i8*, i8** %9, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %166, label %181

166:                                              ; preds = %163
  %167 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  store i8* %170, i8** %9, align 8
  br label %180

171:                                              ; preds = %166
  %172 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  store i8* %175, i8** %9, align 8
  br label %179

176:                                              ; preds = %171
  %177 = load i8*, i8** %6, align 8
  %178 = call i8* @get_user_name_or_exit(i8* %177)
  store i8* %178, i8** %9, align 8
  br label %179

179:                                              ; preds = %176, %174
  br label %180

180:                                              ; preds = %179, %169
  br label %181

181:                                              ; preds = %180, %163
  %182 = call i32 @initPQExpBuffer(%struct.TYPE_7__* %24)
  %183 = load i8*, i8** %9, align 8
  %184 = call i8* @fmtId(i8* %183)
  %185 = call i32 @appendPQExpBuffer(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8* %184)
  %186 = load i8*, i8** %17, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = load i8*, i8** %17, align 8
  %190 = call i8* @fmtId(i8* %189)
  %191 = call i32 @appendPQExpBuffer(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* %190)
  br label %192

192:                                              ; preds = %188, %181
  %193 = load i8*, i8** %18, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load i8*, i8** %18, align 8
  %197 = call i8* @fmtId(i8* %196)
  %198 = call i32 @appendPQExpBuffer(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %195, %192
  %200 = load i8*, i8** %20, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i8*, i8** %20, align 8
  %204 = call i32 @appendPQExpBuffer(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* %203)
  br label %205

205:                                              ; preds = %202, %199
  %206 = load i8*, i8** %19, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load i8*, i8** %19, align 8
  %210 = call i8* @fmtId(i8* %209)
  %211 = call i32 @appendPQExpBuffer(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8* %210)
  br label %212

212:                                              ; preds = %208, %205
  %213 = load i8*, i8** %21, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i8*, i8** %21, align 8
  %217 = call i32 @appendPQExpBuffer(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* %216)
  br label %218

218:                                              ; preds = %215, %212
  %219 = load i8*, i8** %22, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load i8*, i8** %22, align 8
  %223 = call i32 @appendPQExpBuffer(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* %222)
  br label %224

224:                                              ; preds = %221, %218
  %225 = call i32 @appendPQExpBufferChar(%struct.TYPE_7__* %24, i8 signext 59)
  %226 = load i8*, i8** %10, align 8
  %227 = icmp eq i8* %226, null
  br i1 %227, label %228, label %233

228:                                              ; preds = %224
  %229 = load i8*, i8** %9, align 8
  %230 = call i64 @strcmp(i8* %229, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0))
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i8** %10, align 8
  br label %233

233:                                              ; preds = %232, %228, %224
  %234 = load i8*, i8** %10, align 8
  %235 = load i8*, i8** %12, align 8
  %236 = load i8*, i8** %13, align 8
  %237 = load i8*, i8** %14, align 8
  %238 = load i32, i32* %15, align 4
  %239 = load i8*, i8** %6, align 8
  %240 = load i32, i32* %16, align 4
  %241 = call i32* @connectMaintenanceDatabase(i8* %234, i8* %235, i8* %236, i8* %237, i32 %238, i8* %239, i32 %240)
  store i32* %241, i32** %25, align 8
  %242 = load i32, i32* %16, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %233
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* %246)
  br label %248

248:                                              ; preds = %244, %233
  %249 = load i32*, i32** %25, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = call i32* @PQexec(i32* %249, i8* %251)
  store i32* %252, i32** %26, align 8
  %253 = load i32*, i32** %26, align 8
  %254 = call i64 @PQresultStatus(i32* %253)
  %255 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %248
  %258 = load i32*, i32** %25, align 8
  %259 = call i8* @PQerrorMessage(i32* %258)
  %260 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0), i8* %259)
  %261 = load i32*, i32** %25, align 8
  %262 = call i32 @PQfinish(i32* %261)
  %263 = call i32 @exit(i32 1) #3
  unreachable

264:                                              ; preds = %248
  %265 = load i32*, i32** %26, align 8
  %266 = call i32 @PQclear(i32* %265)
  %267 = load i8*, i8** %11, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %302

269:                                              ; preds = %264
  %270 = load i8*, i8** %9, align 8
  %271 = call i8* @fmtId(i8* %270)
  %272 = call i32 @printfPQExpBuffer(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i8* %271)
  %273 = load i8*, i8** %11, align 8
  %274 = load i32*, i32** %25, align 8
  %275 = call i32 @appendStringLiteralConn(%struct.TYPE_7__* %24, i8* %273, i32* %274)
  %276 = call i32 @appendPQExpBufferChar(%struct.TYPE_7__* %24, i8 signext 59)
  %277 = load i32, i32* %16, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %269
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* %281)
  br label %283

283:                                              ; preds = %279, %269
  %284 = load i32*, i32** %25, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = call i32* @PQexec(i32* %284, i8* %286)
  store i32* %287, i32** %26, align 8
  %288 = load i32*, i32** %26, align 8
  %289 = call i64 @PQresultStatus(i32* %288)
  %290 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %299

292:                                              ; preds = %283
  %293 = load i32*, i32** %25, align 8
  %294 = call i8* @PQerrorMessage(i32* %293)
  %295 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i64 0, i64 0), i8* %294)
  %296 = load i32*, i32** %25, align 8
  %297 = call i32 @PQfinish(i32* %296)
  %298 = call i32 @exit(i32 1) #3
  unreachable

299:                                              ; preds = %283
  %300 = load i32*, i32** %26, align 8
  %301 = call i32 @PQclear(i32* %300)
  br label %302

302:                                              ; preds = %299, %264
  %303 = load i32*, i32** %25, align 8
  %304 = call i32 @PQfinish(i32* %303)
  %305 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @pg_logging_init(i8*) #1

declare dso_local i8* @get_progname(i8*) #1

declare dso_local i32 @set_pglocale_pgservice(i8*, i32) #1

declare dso_local i32 @PG_TEXTDOMAIN(i8*) #1

declare dso_local i32 @handle_help_version_opts(i32, i8**, i8*, i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i64 @pg_char_to_encoding(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @get_user_name_or_exit(i8*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_7__*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i8* @fmtId(i8*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @connectMaintenanceDatabase(i8*, i8*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32* @PQexec(i32*, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i32 @appendStringLiteralConn(%struct.TYPE_7__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
