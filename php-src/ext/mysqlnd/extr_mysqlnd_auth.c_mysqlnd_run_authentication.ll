; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_auth.c_mysqlnd_run_authentication.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_auth.c_mysqlnd_run_authentication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_15__*, %struct.TYPE_18__*, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_21__*, i32, i8*)*, %struct.st_mysqlnd_authentication_plugin* (i8*)* }
%struct.st_mysqlnd_authentication_plugin = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8* (i32*, i64*, %struct.TYPE_21__*, i8*, i8*, i64, i8*, i64, i32*, i32, i32)* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i64 }
%struct.TYPE_20__ = type { i64, i8* }

@FAIL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"mysqlnd_run_authentication\00", align 1
@MYSQLND_DEFAULT_AUTH_PROTOCOL = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"The server requested authentication method unknown to the client [%s]\00", align 1
@CR_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@UNKNOWN_SQLSTATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"The server requested authentication method unknown to the client\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"salt(%d)=[%.*s]\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"switch_to_auth_protocol=%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"conn->error_info->error_no = %d\00", align 1
@PASS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"saving requested_protocol=%s\00", align 1
@MYSQLND_OPT_AUTH_PROTOCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mysqlnd_run_authentication(%struct.TYPE_21__* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %6, i8* %7, i32 %8, i32* %9, i32 %10, i64 %11, i64 %12) #0 {
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.st_mysqlnd_authentication_plugin*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %15, align 8
  store i8* %1, i8** %16, align 8
  store i8* %2, i8** %17, align 8
  store i64 %3, i64* %18, align 8
  store i8* %4, i8** %19, align 8
  store i64 %5, i64* %20, align 8
  store i8* %7, i8** %21, align 8
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store i32 %10, i32* %24, align 4
  store i64 %11, i64* %25, align 8
  store i64 %12, i64* %26, align 8
  %39 = load i64, i64* @FAIL, align 8
  store i64 %39, i64* %27, align 8
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %28, align 8
  store i8* null, i8** %29, align 8
  store i64 0, i64* %30, align 8
  store i8* null, i8** %31, align 8
  %41 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %33, align 8
  %44 = load i64, i64* %33, align 8
  %45 = add i64 %44, 1
  %46 = call i8* @mnd_emalloc(i64 %45)
  store i8* %46, i8** %32, align 8
  %47 = load i8*, i8** %32, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %13
  br label %295

50:                                               ; preds = %13
  %51 = load i8*, i8** %32, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %33, align 8
  %55 = call i32 @memcpy(i8* %51, i8* %53, i64 %54)
  %56 = load i8*, i8** %32, align 8
  %57 = load i64, i64* %33, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %21, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i8*, i8** %21, align 8
  br label %65

63:                                               ; preds = %50
  %64 = load i8*, i8** @MYSQLND_DEFAULT_AUTH_PROTOCOL, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i8* [ %62, %61 ], [ %64, %63 ]
  %67 = load i64, i64* @FALSE, align 8
  %68 = call i8* @mnd_pestrdup(i8* %66, i64 %67)
  store i8* %68, i8** %31, align 8
  %69 = load i8*, i8** %31, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %295

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %276, %72
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = load %struct.st_mysqlnd_authentication_plugin* (i8*)*, %struct.st_mysqlnd_authentication_plugin* (i8*)** %77, align 8
  %79 = load i8*, i8** %31, align 8
  %80 = call %struct.st_mysqlnd_authentication_plugin* %78(i8* %79)
  store %struct.st_mysqlnd_authentication_plugin* %80, %struct.st_mysqlnd_authentication_plugin** %34, align 8
  %81 = load %struct.st_mysqlnd_authentication_plugin*, %struct.st_mysqlnd_authentication_plugin** %34, align 8
  %82 = icmp ne %struct.st_mysqlnd_authentication_plugin* %81, null
  br i1 %82, label %104, label %83

83:                                               ; preds = %73
  %84 = load i64, i64* %28, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i8*, i8** %31, align 8
  %88 = load i64, i64* @FALSE, align 8
  %89 = call i32 @mnd_pefree(i8* %87, i64 %88)
  %90 = load i8*, i8** @MYSQLND_DEFAULT_AUTH_PROTOCOL, align 8
  %91 = load i64, i64* @FALSE, align 8
  %92 = call i8* @mnd_pestrdup(i8* %90, i64 %91)
  store i8* %92, i8** %31, align 8
  br label %103

93:                                               ; preds = %83
  %94 = load i32, i32* @E_WARNING, align 4
  %95 = load i8*, i8** %31, align 8
  %96 = call i32 @php_error_docref(i32* null, i32 %94, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = load i32, i32* @CR_NOT_IMPLEMENTED, align 4
  %101 = load i32, i32* @UNKNOWN_SQLSTATE, align 4
  %102 = call i32 @SET_CLIENT_ERROR(%struct.TYPE_15__* %99, i32 %100, i32 %101, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  br label %295

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103, %73
  store i8* null, i8** %35, align 8
  store i64 0, i64* %36, align 8
  store i8* null, i8** %37, align 8
  store i64 0, i64* %38, align 8
  store i8* null, i8** %29, align 8
  store i64 0, i64* %30, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @mnd_pefree(i8* %114, i64 %117)
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  store i8* null, i8** %121, align 8
  br label %122

122:                                              ; preds = %110, %104
  %123 = load i64, i64* %33, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  store i64 %123, i64* %126, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i8* @mnd_pemalloc(i64 %130, i64 %133)
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  store i8* %134, i8** %137, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %122
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = call i32 @SET_OOM_ERROR(%struct.TYPE_15__* %146)
  br label %295

148:                                              ; preds = %122
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load i8*, i8** %32, align 8
  %154 = load i64, i64* %33, align 8
  %155 = call i32 @memcpy(i8* %152, i8* %153, i64 %154)
  %156 = load i64, i64* %33, align 8
  %157 = load i64, i64* %33, align 8
  %158 = load i8*, i8** %32, align 8
  %159 = call i32 (i8*, ...) @DBG_INF_FMT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %156, i64 %157, i8* %158)
  %160 = load %struct.st_mysqlnd_authentication_plugin*, %struct.st_mysqlnd_authentication_plugin** %34, align 8
  %161 = icmp ne %struct.st_mysqlnd_authentication_plugin* %160, null
  br i1 %161, label %162, label %181

162:                                              ; preds = %148
  %163 = load %struct.st_mysqlnd_authentication_plugin*, %struct.st_mysqlnd_authentication_plugin** %34, align 8
  %164 = getelementptr inbounds %struct.st_mysqlnd_authentication_plugin, %struct.st_mysqlnd_authentication_plugin* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i8* (i32*, i64*, %struct.TYPE_21__*, i8*, i8*, i64, i8*, i64, i32*, i32, i32)*, i8* (i32*, i64*, %struct.TYPE_21__*, i8*, i8*, i64, i8*, i64, i32*, i32, i32)** %165, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %168 = load i8*, i8** %16, align 8
  %169 = load i8*, i8** %17, align 8
  %170 = load i64, i64* %18, align 8
  %171 = load i8*, i8** %32, align 8
  %172 = load i64, i64* %33, align 8
  %173 = load i32*, i32** %23, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %24, align 4
  %180 = call i8* %166(i32* null, i64* %38, %struct.TYPE_21__* %167, i8* %168, i8* %169, i64 %170, i8* %171, i64 %172, i32* %173, i32 %178, i32 %179)
  store i8* %180, i8** %37, align 8
  br label %181

181:                                              ; preds = %162, %148
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  br label %295

189:                                              ; preds = %181
  %190 = load i64, i64* @FALSE, align 8
  %191 = load i64, i64* %26, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %211

193:                                              ; preds = %189
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %195 = load i8*, i8** %16, align 8
  %196 = load i8*, i8** %17, align 8
  %197 = load i64, i64* %18, align 8
  %198 = load i8*, i8** %19, align 8
  %199 = load i64, i64* %20, align 8
  %200 = load i32*, i32** %23, align 8
  %201 = load i32, i32* %24, align 4
  %202 = load i32, i32* %22, align 4
  %203 = load i64, i64* %28, align 8
  %204 = load i8*, i8** %31, align 8
  %205 = load %struct.st_mysqlnd_authentication_plugin*, %struct.st_mysqlnd_authentication_plugin** %34, align 8
  %206 = load i8*, i8** %32, align 8
  %207 = load i64, i64* %33, align 8
  %208 = load i8*, i8** %37, align 8
  %209 = load i64, i64* %38, align 8
  %210 = call i64 @mysqlnd_auth_handshake(%struct.TYPE_21__* %194, i8* %195, i8* %196, i64 %197, i8* %198, i64 %199, i32* %200, i32 %201, i32 %202, i64 %203, i8* %204, %struct.st_mysqlnd_authentication_plugin* %205, i8* %206, i64 %207, i8* %208, i64 %209, i8** %29, i64* %30, i8** %35, i64* %36)
  store i64 %210, i64* %27, align 8
  br label %226

211:                                              ; preds = %189
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %213 = load i8*, i8** %16, align 8
  %214 = load i8*, i8** %16, align 8
  %215 = call i32 @strlen(i8* %214)
  %216 = load i8*, i8** %17, align 8
  %217 = load i64, i64* %18, align 8
  %218 = load i8*, i8** %19, align 8
  %219 = load i64, i64* %20, align 8
  %220 = load i64, i64* %25, align 8
  %221 = load i64, i64* %28, align 8
  %222 = load i8*, i8** %31, align 8
  %223 = load i8*, i8** %37, align 8
  %224 = load i64, i64* %38, align 8
  %225 = call i64 @mysqlnd_auth_change_user(%struct.TYPE_21__* %212, i8* %213, i32 %215, i8* %216, i64 %217, i8* %218, i64 %219, i64 %220, i64 %221, i8* %222, i8* %223, i64 %224, i8** %29, i64* %30, i8** %35, i64* %36)
  store i64 %225, i64* %27, align 8
  br label %226

226:                                              ; preds = %211, %193
  %227 = load i64, i64* @FALSE, align 8
  store i64 %227, i64* %28, align 8
  %228 = load i8*, i8** %37, align 8
  %229 = call i32 @free(i8* %228)
  %230 = load i8*, i8** %29, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %234

232:                                              ; preds = %226
  %233 = load i8*, i8** %29, align 8
  br label %235

234:                                              ; preds = %226
  br label %235

235:                                              ; preds = %234, %232
  %236 = phi i8* [ %233, %232 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %234 ]
  %237 = call i32 (i8*, ...) @DBG_INF_FMT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %236)
  %238 = load i8*, i8** %31, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %247

240:                                              ; preds = %235
  %241 = load i8*, i8** %29, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load i8*, i8** %31, align 8
  %245 = call i32 @mnd_efree(i8* %244)
  %246 = load i8*, i8** %29, align 8
  store i8* %246, i8** %31, align 8
  br label %247

247:                                              ; preds = %243, %240, %235
  %248 = load i8*, i8** %32, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i8*, i8** %32, align 8
  %252 = call i32 @mnd_efree(i8* %251)
  br label %253

253:                                              ; preds = %250, %247
  %254 = load i64, i64* %36, align 8
  store i64 %254, i64* %33, align 8
  %255 = load i8*, i8** %35, align 8
  store i8* %255, i8** %32, align 8
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = call i32 (i8*, ...) @DBG_INF_FMT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %260)
  br label %262

262:                                              ; preds = %253
  %263 = load i64, i64* %27, align 8
  %264 = load i64, i64* @FAIL, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %276

266:                                              ; preds = %262
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %266
  %274 = load i8*, i8** %29, align 8
  %275 = icmp ne i8* %274, null
  br label %276

276:                                              ; preds = %273, %266, %262
  %277 = phi i1 [ false, %266 ], [ false, %262 ], [ %275, %273 ]
  br i1 %277, label %73, label %278

278:                                              ; preds = %276
  %279 = load i64, i64* %27, align 8
  %280 = load i64, i64* @PASS, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %294

282:                                              ; preds = %278
  %283 = load i8*, i8** %31, align 8
  %284 = call i32 (i8*, ...) @DBG_INF_FMT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %283)
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 0
  %289 = load i32 (%struct.TYPE_21__*, i32, i8*)*, i32 (%struct.TYPE_21__*, i32, i8*)** %288, align 8
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %291 = load i32, i32* @MYSQLND_OPT_AUTH_PROTOCOL, align 4
  %292 = load i8*, i8** %31, align 8
  %293 = call i32 %289(%struct.TYPE_21__* %290, i32 %291, i8* %292)
  br label %294

294:                                              ; preds = %282, %278
  br label %295

295:                                              ; preds = %294, %188, %143, %93, %71, %49
  %296 = load i8*, i8** %32, align 8
  %297 = icmp ne i8* %296, null
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i8*, i8** %32, align 8
  %300 = call i32 @mnd_efree(i8* %299)
  br label %301

301:                                              ; preds = %298, %295
  %302 = load i8*, i8** %31, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i8*, i8** %31, align 8
  %306 = call i32 @mnd_efree(i8* %305)
  br label %307

307:                                              ; preds = %304, %301
  %308 = load i64, i64* %27, align 8
  %309 = call i32 @DBG_RETURN(i64 %308)
  %310 = load i64, i64* %14, align 8
  ret i64 %310
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i8* @mnd_emalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @mnd_pestrdup(i8*, i64) #1

declare dso_local i32 @mnd_pefree(i8*, i64) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i8*) #1

declare dso_local i32 @SET_CLIENT_ERROR(%struct.TYPE_15__*, i32, i32, i8*) #1

declare dso_local i8* @mnd_pemalloc(i64, i64) #1

declare dso_local i32 @SET_OOM_ERROR(%struct.TYPE_15__*) #1

declare dso_local i32 @DBG_INF_FMT(i8*, ...) #1

declare dso_local i64 @mysqlnd_auth_handshake(%struct.TYPE_21__*, i8*, i8*, i64, i8*, i64, i32*, i32, i32, i64, i8*, %struct.st_mysqlnd_authentication_plugin*, i8*, i64, i8*, i64, i8**, i64*, i8**, i64*) #1

declare dso_local i64 @mysqlnd_auth_change_user(%struct.TYPE_21__*, i8*, i32, i8*, i64, i8*, i64, i64, i64, i8*, i8*, i64, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mnd_efree(i8*) #1

declare dso_local i32 @DBG_RETURN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
