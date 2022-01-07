; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_pg_isready.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_pg_isready.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }
%struct.TYPE_4__ = type { i8*, i64 }

@DEFAULT_CONNECT_TIMEOUT = common dso_local global i8* null, align 8
@main.long_options = internal global [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8 -128, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8 -127, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8 -128, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8 -128, i32* null, i32 85 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"pgscripts\00", align 1
@help = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"d:h:p:qt:U:\00", align 1
@optarg = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Try \22%s --help\22 for more information.\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"too many command-line arguments (first is \22%s\22)\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"connect_timeout\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"fallback_application_name\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"postgresql://\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"postgres://\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"could not fetch default options\00", align 1
@DEFAULT_PGSOCKET_DIR = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"hostaddr\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"%s:%s - \00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"accepting connections\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"rejecting connections\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"no response\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"no attempt\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@PARAMS_ARRAY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [7 x i8*], align 16
  %17 = alloca [7 x i8*], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca %struct.TYPE_4__*, align 8
  %22 = alloca %struct.TYPE_4__*, align 8
  %23 = alloca %struct.TYPE_4__*, align 8
  %24 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %25 = load i8*, i8** @DEFAULT_CONNECT_TIMEOUT, align 8
  store i8* %25, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %18, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %21, align 8
  store i8* null, i8** %24, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @pg_logging_init(i8* %28)
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @get_progname(i8* %32)
  store i8* %33, i8** %7, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @PG_TEXTDOMAIN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %38 = call i32 @set_pglocale_pgservice(i8* %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @help, align 4
  %43 = call i32 @handle_help_version_opts(i32 %39, i8** %40, i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %73, %2
  %45 = load i32, i32* %4, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = call i32 @getopt_long(i32 %45, i8** %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null)
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  switch i32 %50, label %67 [
    i32 100, label %51
    i32 104, label %54
    i32 112, label %57
    i32 113, label %60
    i32 116, label %61
    i32 85, label %64
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* @optarg, align 4
  %53 = call i8* @pg_strdup(i32 %52)
  store i8* %53, i8** %11, align 8
  br label %73

54:                                               ; preds = %49
  %55 = load i32, i32* @optarg, align 4
  %56 = call i8* @pg_strdup(i32 %55)
  store i8* %56, i8** %8, align 8
  br label %73

57:                                               ; preds = %49
  %58 = load i32, i32* @optarg, align 4
  %59 = call i8* @pg_strdup(i32 %58)
  store i8* %59, i8** %9, align 8
  br label %73

60:                                               ; preds = %49
  store i32 1, i32* %18, align 4
  br label %73

61:                                               ; preds = %49
  %62 = load i32, i32* @optarg, align 4
  %63 = call i8* @pg_strdup(i32 %62)
  store i8* %63, i8** %12, align 8
  br label %73

64:                                               ; preds = %49
  %65 = load i32, i32* @optarg, align 4
  %66 = call i8* @pg_strdup(i32 %65)
  store i8* %66, i8** %10, align 8
  br label %73

67:                                               ; preds = %49
  %68 = load i32, i32* @stderr, align 4
  %69 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @fprintf(i32 %68, i8* %69, i8* %70)
  %72 = call i32 @exit(i32 133) #3
  unreachable

73:                                               ; preds = %64, %61, %60, %57, %54, %51
  br label %44

74:                                               ; preds = %44
  %75 = load i32, i32* @optind, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* @optind, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @stderr, align 4
  %86 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @fprintf(i32 %85, i8* %86, i8* %87)
  %89 = call i32 @exit(i32 133) #3
  unreachable

90:                                               ; preds = %74
  %91 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %91, align 16
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 0
  store i8* %92, i8** %93, align 16
  %94 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i64 0, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %94, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 1
  store i8* %95, i8** %96, align 8
  %97 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i64 0, i64 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %97, align 16
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 2
  store i8* %98, i8** %99, align 16
  %100 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %100, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 3
  store i8* %101, i8** %102, align 8
  %103 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i64 0, i64 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %103, align 16
  %104 = load i8*, i8** %12, align 8
  %105 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 4
  store i8* %104, i8** %105, align 16
  %106 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i64 0, i64 5
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8** %106, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 5
  store i8* %107, i8** %108, align 8
  %109 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i64 0, i64 6
  store i8* null, i8** %109, align 16
  %110 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 6
  store i8* null, i8** %110, align 16
  %111 = load i8*, i8** %11, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %135

113:                                              ; preds = %90
  %114 = load i8*, i8** %11, align 8
  %115 = call i64 @strncmp(i8* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 13)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = load i8*, i8** %11, align 8
  %119 = call i64 @strncmp(i8* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 11)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i8*, i8** %11, align 8
  %123 = call i32* @strchr(i8* %122, i8 signext 61)
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %121, %117, %113
  %126 = load i8*, i8** %11, align 8
  %127 = call %struct.TYPE_4__* @PQconninfoParse(i8* %126, i8** %24)
  store %struct.TYPE_4__* %127, %struct.TYPE_4__** %20, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %129 = icmp eq %struct.TYPE_4__* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i8*, i8** %24, align 8
  %132 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %131)
  %133 = call i32 @exit(i32 133) #3
  unreachable

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %121, %90
  %136 = call %struct.TYPE_4__* (...) @PQconndefaults()
  store %struct.TYPE_4__* %136, %struct.TYPE_4__** %21, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %138 = icmp eq %struct.TYPE_4__* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  %141 = call i32 @exit(i32 133) #3
  unreachable

142:                                              ; preds = %135
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %143, %struct.TYPE_4__** %22, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %144, %struct.TYPE_4__** %23, align 8
  br label %145

145:                                              ; preds = %260, %142
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %263

150:                                              ; preds = %145
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @strcmp(i64 %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %187

156:                                              ; preds = %150
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %158 = icmp ne %struct.TYPE_4__* %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %13, align 8
  br label %186

168:                                              ; preds = %159, %156
  %169 = load i8*, i8** %8, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load i8*, i8** %8, align 8
  store i8* %172, i8** %13, align 8
  br label %185

173:                                              ; preds = %168
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %13, align 8
  br label %184

182:                                              ; preds = %173
  %183 = load i8*, i8** @DEFAULT_PGSOCKET_DIR, align 8
  store i8* %183, i8** %13, align 8
  br label %184

184:                                              ; preds = %182, %178
  br label %185

185:                                              ; preds = %184, %171
  br label %186

186:                                              ; preds = %185, %164
  br label %253

187:                                              ; preds = %150
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i64 @strcmp(i64 %190, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %216

193:                                              ; preds = %187
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %195 = icmp ne %struct.TYPE_4__* %194, null
  br i1 %195, label %196, label %205

196:                                              ; preds = %193
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  store i8* %204, i8** %14, align 8
  br label %215

205:                                              ; preds = %196, %193
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  store i8* %213, i8** %14, align 8
  br label %214

214:                                              ; preds = %210, %205
  br label %215

215:                                              ; preds = %214, %201
  br label %252

216:                                              ; preds = %187
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = call i64 @strcmp(i64 %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %251

222:                                              ; preds = %216
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %224 = icmp ne %struct.TYPE_4__* %223, null
  br i1 %224, label %225, label %234

225:                                              ; preds = %222
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  store i8* %233, i8** %15, align 8
  br label %250

234:                                              ; preds = %225, %222
  %235 = load i8*, i8** %9, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  %238 = load i8*, i8** %9, align 8
  store i8* %238, i8** %15, align 8
  br label %249

239:                                              ; preds = %234
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %239
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  store i8* %247, i8** %15, align 8
  br label %248

248:                                              ; preds = %244, %239
  br label %249

249:                                              ; preds = %248, %237
  br label %250

250:                                              ; preds = %249, %230
  br label %251

251:                                              ; preds = %250, %216
  br label %252

252:                                              ; preds = %251, %215
  br label %253

253:                                              ; preds = %252, %186
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %255 = icmp ne %struct.TYPE_4__* %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 1
  store %struct.TYPE_4__* %258, %struct.TYPE_4__** %22, align 8
  br label %259

259:                                              ; preds = %256, %253
  br label %260

260:                                              ; preds = %259
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 1
  store %struct.TYPE_4__* %262, %struct.TYPE_4__** %23, align 8
  br label %145

263:                                              ; preds = %145
  %264 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i64 0, i64 0
  %265 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 0
  %266 = call i32 @PQpingParams(i8** %264, i8** %265, i32 1)
  store i32 %266, i32* %19, align 4
  %267 = load i32, i32* %18, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %297, label %269

269:                                              ; preds = %263
  %270 = load i8*, i8** %14, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  %273 = load i8*, i8** %14, align 8
  br label %276

274:                                              ; preds = %269
  %275 = load i8*, i8** %13, align 8
  br label %276

276:                                              ; preds = %274, %272
  %277 = phi i8* [ %273, %272 ], [ %275, %274 ]
  %278 = load i8*, i8** %15, align 8
  %279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* %277, i8* %278)
  %280 = load i32, i32* %19, align 4
  switch i32 %280, label %293 [
    i32 131, label %281
    i32 130, label %284
    i32 132, label %287
    i32 133, label %290
  ]

281:                                              ; preds = %276
  %282 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %283 = call i32 (i8*, ...) @printf(i8* %282)
  br label %296

284:                                              ; preds = %276
  %285 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  %286 = call i32 (i8*, ...) @printf(i8* %285)
  br label %296

287:                                              ; preds = %276
  %288 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %289 = call i32 (i8*, ...) @printf(i8* %288)
  br label %296

290:                                              ; preds = %276
  %291 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %292 = call i32 (i8*, ...) @printf(i8* %291)
  br label %296

293:                                              ; preds = %276
  %294 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %295 = call i32 (i8*, ...) @printf(i8* %294)
  br label %296

296:                                              ; preds = %293, %290, %287, %284, %281
  br label %297

297:                                              ; preds = %296, %263
  %298 = load i32, i32* %19, align 4
  %299 = call i32 @exit(i32 %298) #3
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

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_4__* @PQconninfoParse(i8*, i8**) #1

declare dso_local %struct.TYPE_4__* @PQconndefaults(...) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @PQpingParams(i8**, i8**, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
