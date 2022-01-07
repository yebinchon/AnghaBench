; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_set_arg.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_set_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_expect = type { i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"cipher-algo\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"disable-mdc\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sess-key\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"s2k-mode\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"s2k-count\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"s2k-digest-algo\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"s2k-cipher-algo\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"compress-algo\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"compress-level\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"convert-crlf\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"unicode-mode\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"expect-cipher-algo\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"expect-disable-mdc\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"expect-sess-key\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"expect-s2k-mode\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"expect-s2k-count\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"expect-s2k-digest-algo\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"expect-s2k-cipher-algo\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"expect-compress-algo\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"expect-unicode-mode\00", align 1
@PXE_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, %struct.debug_expect*)* @set_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_arg(i32* %0, i8* %1, i8* %2, %struct.debug_expect* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.debug_expect*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.debug_expect* %3, %struct.debug_expect** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @pgp_set_cipher_algo(i32* %14, i8* %15)
  store i32 %16, i32* %9, align 4
  br label %265

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @atoi(i8* %23)
  %25 = call i32 @pgp_disable_mdc(i32* %22, i8* %24)
  store i32 %25, i32* %9, align 4
  br label %264

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @atoi(i8* %32)
  %34 = call i32 @pgp_set_sess_key(i32* %31, i8* %33)
  store i32 %34, i32* %9, align 4
  br label %263

35:                                               ; preds = %26
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i8* @atoi(i8* %41)
  %43 = call i32 @pgp_set_s2k_mode(i32* %40, i8* %42)
  store i32 %43, i32* %9, align 4
  br label %262

44:                                               ; preds = %35
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i8* @atoi(i8* %50)
  %52 = call i32 @pgp_set_s2k_count(i32* %49, i8* %51)
  store i32 %52, i32* %9, align 4
  br label %261

53:                                               ; preds = %44
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32*, i32** %5, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @pgp_set_s2k_digest_algo(i32* %58, i8* %59)
  store i32 %60, i32* %9, align 4
  br label %260

61:                                               ; preds = %53
  %62 = load i8*, i8** %6, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32*, i32** %5, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @pgp_set_s2k_cipher_algo(i32* %66, i8* %67)
  store i32 %68, i32* %9, align 4
  br label %259

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32*, i32** %5, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i8* @atoi(i8* %75)
  %77 = call i32 @pgp_set_compress_algo(i32* %74, i8* %76)
  store i32 %77, i32* %9, align 4
  br label %258

78:                                               ; preds = %69
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32*, i32** %5, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i8* @atoi(i8* %84)
  %86 = call i32 @pgp_set_compress_level(i32* %83, i8* %85)
  store i32 %86, i32* %9, align 4
  br label %257

87:                                               ; preds = %78
  %88 = load i8*, i8** %6, align 8
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32*, i32** %5, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = call i8* @atoi(i8* %93)
  %95 = call i32 @pgp_set_convert_crlf(i32* %92, i8* %94)
  store i32 %95, i32* %9, align 4
  br label %256

96:                                               ; preds = %87
  %97 = load i8*, i8** %6, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i32*, i32** %5, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i8* @atoi(i8* %102)
  %104 = call i32 @pgp_set_unicode_mode(i32* %101, i8* %103)
  store i32 %104, i32* %9, align 4
  br label %255

105:                                              ; preds = %96
  %106 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %107 = icmp ne %struct.debug_expect* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i8*, i8** %6, align 8
  %110 = call i64 @strcmp(i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i8*, i8** %7, align 8
  %114 = call i8* @atoi(i8* %113)
  %115 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %116 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %115, i32 0, i32 10
  store i8* %114, i8** %116, align 8
  br label %254

117:                                              ; preds = %108, %105
  %118 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %119 = icmp ne %struct.debug_expect* %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load i8*, i8** %6, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %126 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = call i8* @pgp_get_cipher_code(i8* %127)
  %129 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %130 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %129, i32 0, i32 9
  store i8* %128, i8** %130, align 8
  br label %253

131:                                              ; preds = %120, %117
  %132 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %133 = icmp ne %struct.debug_expect* %132, null
  br i1 %133, label %134, label %145

134:                                              ; preds = %131
  %135 = load i8*, i8** %6, align 8
  %136 = call i64 @strcmp(i8* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %140 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = call i8* @atoi(i8* %141)
  %143 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %144 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %143, i32 0, i32 8
  store i8* %142, i8** %144, align 8
  br label %252

145:                                              ; preds = %134, %131
  %146 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %147 = icmp ne %struct.debug_expect* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = load i8*, i8** %6, align 8
  %150 = call i64 @strcmp(i8* %149, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %154 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = call i8* @atoi(i8* %155)
  %157 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %158 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %157, i32 0, i32 7
  store i8* %156, i8** %158, align 8
  br label %251

159:                                              ; preds = %148, %145
  %160 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %161 = icmp ne %struct.debug_expect* %160, null
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load i8*, i8** %6, align 8
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %168 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = call i8* @atoi(i8* %169)
  %171 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %172 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %171, i32 0, i32 6
  store i8* %170, i8** %172, align 8
  br label %250

173:                                              ; preds = %162, %159
  %174 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %175 = icmp ne %struct.debug_expect* %174, null
  br i1 %175, label %176, label %187

176:                                              ; preds = %173
  %177 = load i8*, i8** %6, align 8
  %178 = call i64 @strcmp(i8* %177, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %182 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  %183 = load i8*, i8** %7, align 8
  %184 = call i8* @atoi(i8* %183)
  %185 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %186 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %185, i32 0, i32 5
  store i8* %184, i8** %186, align 8
  br label %249

187:                                              ; preds = %176, %173
  %188 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %189 = icmp ne %struct.debug_expect* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %187
  %191 = load i8*, i8** %6, align 8
  %192 = call i64 @strcmp(i8* %191, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %196 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load i8*, i8** %7, align 8
  %198 = call i32 @pgp_get_digest_code(i8* %197)
  %199 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %200 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 8
  br label %248

201:                                              ; preds = %190, %187
  %202 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %203 = icmp ne %struct.debug_expect* %202, null
  br i1 %203, label %204, label %215

204:                                              ; preds = %201
  %205 = load i8*, i8** %6, align 8
  %206 = call i64 @strcmp(i8* %205, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %204
  %209 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %210 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %209, i32 0, i32 0
  store i32 1, i32* %210, align 8
  %211 = load i8*, i8** %7, align 8
  %212 = call i8* @pgp_get_cipher_code(i8* %211)
  %213 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %214 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  br label %247

215:                                              ; preds = %204, %201
  %216 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %217 = icmp ne %struct.debug_expect* %216, null
  br i1 %217, label %218, label %229

218:                                              ; preds = %215
  %219 = load i8*, i8** %6, align 8
  %220 = call i64 @strcmp(i8* %219, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %218
  %223 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %224 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %223, i32 0, i32 0
  store i32 1, i32* %224, align 8
  %225 = load i8*, i8** %7, align 8
  %226 = call i8* @atoi(i8* %225)
  %227 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %228 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %227, i32 0, i32 2
  store i8* %226, i8** %228, align 8
  br label %246

229:                                              ; preds = %218, %215
  %230 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %231 = icmp ne %struct.debug_expect* %230, null
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = load i8*, i8** %6, align 8
  %234 = call i64 @strcmp(i8* %233, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %232
  %237 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %238 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %237, i32 0, i32 0
  store i32 1, i32* %238, align 8
  %239 = load i8*, i8** %7, align 8
  %240 = call i8* @atoi(i8* %239)
  %241 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %242 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %241, i32 0, i32 1
  store i8* %240, i8** %242, align 8
  br label %245

243:                                              ; preds = %232, %229
  %244 = load i32, i32* @PXE_ARGUMENT_ERROR, align 4
  store i32 %244, i32* %9, align 4
  br label %245

245:                                              ; preds = %243, %236
  br label %246

246:                                              ; preds = %245, %222
  br label %247

247:                                              ; preds = %246, %208
  br label %248

248:                                              ; preds = %247, %194
  br label %249

249:                                              ; preds = %248, %180
  br label %250

250:                                              ; preds = %249, %166
  br label %251

251:                                              ; preds = %250, %152
  br label %252

252:                                              ; preds = %251, %138
  br label %253

253:                                              ; preds = %252, %124
  br label %254

254:                                              ; preds = %253, %112
  br label %255

255:                                              ; preds = %254, %100
  br label %256

256:                                              ; preds = %255, %91
  br label %257

257:                                              ; preds = %256, %82
  br label %258

258:                                              ; preds = %257, %73
  br label %259

259:                                              ; preds = %258, %65
  br label %260

260:                                              ; preds = %259, %57
  br label %261

261:                                              ; preds = %260, %48
  br label %262

262:                                              ; preds = %261, %39
  br label %263

263:                                              ; preds = %262, %30
  br label %264

264:                                              ; preds = %263, %21
  br label %265

265:                                              ; preds = %264, %13
  %266 = load i32, i32* %9, align 4
  ret i32 %266
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pgp_set_cipher_algo(i32*, i8*) #1

declare dso_local i32 @pgp_disable_mdc(i32*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @pgp_set_sess_key(i32*, i8*) #1

declare dso_local i32 @pgp_set_s2k_mode(i32*, i8*) #1

declare dso_local i32 @pgp_set_s2k_count(i32*, i8*) #1

declare dso_local i32 @pgp_set_s2k_digest_algo(i32*, i8*) #1

declare dso_local i32 @pgp_set_s2k_cipher_algo(i32*, i8*) #1

declare dso_local i32 @pgp_set_compress_algo(i32*, i8*) #1

declare dso_local i32 @pgp_set_compress_level(i32*, i8*) #1

declare dso_local i32 @pgp_set_convert_crlf(i32*, i8*) #1

declare dso_local i32 @pgp_set_unicode_mode(i32*, i8*) #1

declare dso_local i8* @pgp_get_cipher_code(i8*) #1

declare dso_local i32 @pgp_get_digest_code(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
