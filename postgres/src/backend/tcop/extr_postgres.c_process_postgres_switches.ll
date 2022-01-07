; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_process_postgres_switches.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_process_postgres_switches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PGC_POSTMASTER = common dso_local global i64 0, align 8
@PGC_S_ARGV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"--single\00", align 1
@PGC_S_CLIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"B:bc:C:D:d:EeFf:h:ijk:lN:nOo:Pp:r:S:sTt:v:W:-:\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"shared_buffers\00", align 1
@optarg = common dso_local global i8* null, align 8
@IsBinaryUpgrade = common dso_local global i32 0, align 4
@userDoption = common dso_local global i8* null, align 8
@EchoQuery = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"datestyle\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"euro\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"fsync\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"listen_addresses\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@UseSemiNewlineNewline = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"unix_socket_directories\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"max_connections\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"allow_system_table_mods\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"ignore_system_indexes\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@OutputFileName = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"work_mem\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"log_statement_stats\00", align 1
@FrontendProtocol = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"post_auth_delay\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [22 x i8] c"--%s requires a value\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"-c %s requires a value\00", align 1
@optind = common dso_local global i32 0, align 4
@IsUnderPostmaster = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [53 x i8] c"invalid command-line argument for server process: %s\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"Try \22%s --help\22 for more information.\00", align 1
@progname = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [38 x i8] c"%s: invalid command-line argument: %s\00", align 1
@opterr = common dso_local global i64 0, align 8
@optreset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_postgres_switches(i32 %0, i8** %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8** %3, i8*** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @PGC_POSTMASTER, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %4
  %23 = load i32, i32* @PGC_S_ARGV, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i8**, i8*** %6, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %26, %22
  br label %40

38:                                               ; preds = %4
  %39 = load i32, i32* @PGC_S_CLIENT, align 4
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %38, %37
  br label %41

41:                                               ; preds = %229, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i8**, i8*** %6, align 8
  %44 = call i32 @getopt(i32 %42, i8** %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %12, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %230

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %222 [
    i32 66, label %48
    i32 98, label %53
    i32 67, label %58
    i32 68, label %59
    i32 100, label %66
    i32 69, label %72
    i32 101, label %77
    i32 70, label %81
    i32 102, label %85
    i32 104, label %95
    i32 105, label %100
    i32 106, label %104
    i32 107, label %109
    i32 108, label %114
    i32 78, label %118
    i32 110, label %123
    i32 79, label %124
    i32 111, label %128
    i32 80, label %131
    i32 112, label %135
    i32 114, label %140
    i32 83, label %149
    i32 115, label %154
    i32 84, label %158
    i32 116, label %159
    i32 118, label %173
    i32 87, label %180
    i32 99, label %185
    i32 45, label %185
  ]

48:                                               ; preds = %46
  %49 = load i8*, i8** @optarg, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @SetConfigOption(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %49, i64 %50, i32 %51)
  br label %225

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* @IsBinaryUpgrade, align 4
  br label %57

57:                                               ; preds = %56, %53
  br label %225

58:                                               ; preds = %46
  br label %225

59:                                               ; preds = %46
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8*, i8** @optarg, align 8
  %64 = call i8* @strdup(i8* %63)
  store i8* %64, i8** @userDoption, align 8
  br label %65

65:                                               ; preds = %62, %59
  br label %225

66:                                               ; preds = %46
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i32 @atoi(i8* %67)
  %69 = load i64, i64* %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @set_debug_options(i32 %68, i64 %69, i32 %70)
  br label %225

72:                                               ; preds = %46
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 1, i32* @EchoQuery, align 4
  br label %76

76:                                               ; preds = %75, %72
  br label %225

77:                                               ; preds = %46
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @SetConfigOption(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %78, i32 %79)
  br label %225

81:                                               ; preds = %46
  %82 = load i64, i64* %7, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @SetConfigOption(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %82, i32 %83)
  br label %225

85:                                               ; preds = %46
  %86 = load i8*, i8** @optarg, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @set_plan_disabling_options(i8* %86, i64 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %91, %85
  br label %225

95:                                               ; preds = %46
  %96 = load i8*, i8** @optarg, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @SetConfigOption(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %96, i64 %97, i32 %98)
  br label %225

100:                                              ; preds = %46
  %101 = load i64, i64* %7, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @SetConfigOption(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 %101, i32 %102)
  br label %225

104:                                              ; preds = %46
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 1, i32* @UseSemiNewlineNewline, align 4
  br label %108

108:                                              ; preds = %107, %104
  br label %225

109:                                              ; preds = %46
  %110 = load i8*, i8** @optarg, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @SetConfigOption(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %110, i64 %111, i32 %112)
  br label %225

114:                                              ; preds = %46
  %115 = load i64, i64* %7, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @SetConfigOption(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %115, i32 %116)
  br label %225

118:                                              ; preds = %46
  %119 = load i8*, i8** @optarg, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @SetConfigOption(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* %119, i64 %120, i32 %121)
  br label %225

123:                                              ; preds = %46
  br label %225

124:                                              ; preds = %46
  %125 = load i64, i64* %7, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @SetConfigOption(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %125, i32 %126)
  br label %225

128:                                              ; preds = %46
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %225

131:                                              ; preds = %46
  %132 = load i64, i64* %7, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @SetConfigOption(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %132, i32 %133)
  br label %225

135:                                              ; preds = %46
  %136 = load i8*, i8** @optarg, align 8
  %137 = load i64, i64* %7, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @SetConfigOption(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %136, i64 %137, i32 %138)
  br label %225

140:                                              ; preds = %46
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32, i32* @OutputFileName, align 4
  %145 = load i8*, i8** @optarg, align 8
  %146 = load i32, i32* @MAXPGPATH, align 4
  %147 = call i32 @strlcpy(i32 %144, i8* %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %140
  br label %225

149:                                              ; preds = %46
  %150 = load i8*, i8** @optarg, align 8
  %151 = load i64, i64* %7, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @SetConfigOption(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* %150, i64 %151, i32 %152)
  br label %225

154:                                              ; preds = %46
  %155 = load i64, i64* %7, align 8
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @SetConfigOption(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %155, i32 %156)
  br label %225

158:                                              ; preds = %46
  br label %225

159:                                              ; preds = %46
  %160 = load i8*, i8** @optarg, align 8
  %161 = call i8* @get_stats_option_name(i8* %160)
  store i8* %161, i8** %13, align 8
  %162 = load i8*, i8** %13, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i8*, i8** %13, align 8
  %166 = load i64, i64* %7, align 8
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @SetConfigOption(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %166, i32 %167)
  br label %172

169:                                              ; preds = %159
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %169, %164
  br label %225

173:                                              ; preds = %46
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i8*, i8** @optarg, align 8
  %178 = call i32 @atoi(i8* %177)
  store i32 %178, i32* @FrontendProtocol, align 4
  br label %179

179:                                              ; preds = %176, %173
  br label %225

180:                                              ; preds = %46
  %181 = load i8*, i8** @optarg, align 8
  %182 = load i64, i64* %7, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @SetConfigOption(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* %181, i64 %182, i32 %183)
  br label %225

185:                                              ; preds = %46, %46
  %186 = load i8*, i8** @optarg, align 8
  %187 = call i32 @ParseLongOption(i8* %186, i8** %14, i8** %15)
  %188 = load i8*, i8** %15, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %208, label %190

190:                                              ; preds = %185
  %191 = load i32, i32* %12, align 4
  %192 = icmp eq i32 %191, 45
  br i1 %192, label %193, label %200

193:                                              ; preds = %190
  %194 = load i32, i32* @ERROR, align 4
  %195 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %196 = call i32 @errcode(i32 %195)
  %197 = load i8*, i8** @optarg, align 8
  %198 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8* %197)
  %199 = call i32 @ereport(i32 %194, i32 %198)
  br label %207

200:                                              ; preds = %190
  %201 = load i32, i32* @ERROR, align 4
  %202 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %203 = call i32 @errcode(i32 %202)
  %204 = load i8*, i8** @optarg, align 8
  %205 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* %204)
  %206 = call i32 @ereport(i32 %201, i32 %205)
  br label %207

207:                                              ; preds = %200, %193
  br label %208

208:                                              ; preds = %207, %185
  %209 = load i8*, i8** %14, align 8
  %210 = load i8*, i8** %15, align 8
  %211 = load i64, i64* %7, align 8
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @SetConfigOption(i8* %209, i8* %210, i64 %211, i32 %212)
  %214 = load i8*, i8** %14, align 8
  %215 = call i32 @free(i8* %214)
  %216 = load i8*, i8** %15, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %208
  %219 = load i8*, i8** %15, align 8
  %220 = call i32 @free(i8* %219)
  br label %221

221:                                              ; preds = %218, %208
  br label %225

222:                                              ; preds = %46
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %225

225:                                              ; preds = %222, %221, %180, %179, %172, %158, %154, %149, %148, %135, %131, %128, %124, %123, %118, %114, %109, %108, %100, %95, %94, %81, %77, %76, %66, %65, %58, %57, %48
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  br label %230

229:                                              ; preds = %225
  br label %41

230:                                              ; preds = %228, %41
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %254, label %233

233:                                              ; preds = %230
  %234 = load i8**, i8*** %8, align 8
  %235 = icmp ne i8** %234, null
  br i1 %235, label %236, label %254

236:                                              ; preds = %233
  %237 = load i8**, i8*** %8, align 8
  %238 = load i8*, i8** %237, align 8
  %239 = icmp eq i8* %238, null
  br i1 %239, label %240, label %254

240:                                              ; preds = %236
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* @optind, align 4
  %243 = sub nsw i32 %241, %242
  %244 = icmp sge i32 %243, 1
  br i1 %244, label %245, label %254

245:                                              ; preds = %240
  %246 = load i8**, i8*** %6, align 8
  %247 = load i32, i32* @optind, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* @optind, align 4
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i8*, i8** %246, i64 %249
  %251 = load i8*, i8** %250, align 8
  %252 = call i8* @strdup(i8* %251)
  %253 = load i8**, i8*** %8, align 8
  store i8* %252, i8** %253, align 8
  br label %254

254:                                              ; preds = %245, %240, %236, %233, %230
  %255 = load i32, i32* %10, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %261, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %5, align 4
  %259 = load i32, i32* @optind, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %300

261:                                              ; preds = %257, %254
  %262 = load i32, i32* %10, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32, i32* @optind, align 4
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* @optind, align 4
  br label %267

267:                                              ; preds = %264, %261
  %268 = load i64, i64* @IsUnderPostmaster, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %267
  %271 = load i32, i32* @FATAL, align 4
  %272 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %273 = call i32 @errcode(i32 %272)
  %274 = load i8**, i8*** %6, align 8
  %275 = load i32, i32* @optind, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %274, i64 %276
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i8* %278)
  %280 = load i32, i32* @progname, align 4
  %281 = call i32 @errhint(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i32 %280)
  %282 = call i32 @ereport(i32 %271, i32 %281)
  br label %299

283:                                              ; preds = %267
  %284 = load i32, i32* @FATAL, align 4
  %285 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %286 = call i32 @errcode(i32 %285)
  %287 = load i32, i32* @progname, align 4
  %288 = sext i32 %287 to i64
  %289 = inttoptr i64 %288 to i8*
  %290 = load i8**, i8*** %6, align 8
  %291 = load i32, i32* @optind, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8*, i8** %290, i64 %292
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0), i8* %289, i8* %294)
  %296 = load i32, i32* @progname, align 4
  %297 = call i32 @errhint(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i32 %296)
  %298 = call i32 @ereport(i32 %284, i32 %297)
  br label %299

299:                                              ; preds = %283, %270
  br label %300

300:                                              ; preds = %299, %257
  store i32 1, i32* @optind, align 4
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @SetConfigOption(i8*, i8*, i64, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @set_debug_options(i32, i64, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @set_plan_disabling_options(i8*, i64, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @get_stats_option_name(i8*) #1

declare dso_local i32 @ParseLongOption(i8*, i8**, i8**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @errhint(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
