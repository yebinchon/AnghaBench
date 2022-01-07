; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_kuery.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_kuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"[sdb]> \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"anal/**\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"No Output from sdb\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"{\22anal\22:{\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\0A\0A\22%s\22 : [\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"anal/%s/*\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\0AEMPTY\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"],\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\22%s\22,\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"}}\00", align 1
@callback_foreach_kv = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@r_line_hist_sdb_up = common dso_local global i32 0, align 4
@r_line_hist_sdb_down = common dso_local global i32 0, align 4
@r_line_hist_cmd_up = common dso_local global i32 0, align 4
@r_line_hist_cmd_down = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [42 x i8] c"This command is disabled in sandbox mode\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Unable to allocate memory\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Cannot open sdb '%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Cannot find sdb '%s'\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Cannot open file\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Missing sdb namespace\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Usage: ko [file] [namespace]\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Usage: kd [file] [namespace]\0A\00", align 1
@help_msg_k = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_kuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_kuery(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_14__*, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %8, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 1023, i32* %11, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %12, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %18, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %398 [
    i32 106, label %41
    i32 32, label %133
    i32 0, label %146
    i32 115, label %150
    i32 111, label %281
    i32 100, label %347
    i32 63, label %394
  ]

41:                                               ; preds = %2
  %42 = load i32*, i32** %12, align 8
  %43 = call i8* @sdb_querys(i32* %42, i32* null, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = call i32 @r_cons_println(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %398

48:                                               ; preds = %41
  %49 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %117, %77, %48
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %127

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 10)
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %127

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = call i8* (i8*, ...) @r_str_ndup(i8* %61, i64 %66)
  store i8* %67, i8** %14, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  %70 = load i8*, i8** %14, align 8
  %71 = call i8* @r_str_newf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  store i8* %71, i8** %15, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = call i8* @sdb_querys(i32* %72, i32* null, i32 0, i8* %73)
  store i8* %74, i8** %18, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %88, label %77

77:                                               ; preds = %60
  %78 = call i32 @r_cons_println(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %79 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = add nsw i64 %84, 1
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** %7, align 8
  br label %50

88:                                               ; preds = %60
  br label %89

89:                                               ; preds = %99, %88
  %90 = load i8*, i8** %18, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %117

93:                                               ; preds = %89
  %94 = load i8*, i8** %18, align 8
  %95 = call i8* @strchr(i8* %94, i8 signext 10)
  store i8* %95, i8** %16, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %117

99:                                               ; preds = %93
  %100 = load i8*, i8** %18, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = load i8*, i8** %18, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = call i8* (i8*, ...) @r_str_ndup(i8* %100, i64 %105)
  store i8* %106, i8** %17, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %107)
  %109 = load i8*, i8** %16, align 8
  %110 = load i8*, i8** %18, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = add nsw i64 %113, 1
  %115 = load i8*, i8** %18, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 %114
  store i8* %116, i8** %18, align 8
  br label %89

117:                                              ; preds = %98, %89
  %118 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %119 = load i8*, i8** %13, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = add nsw i64 %123, 1
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 %124
  store i8* %126, i8** %7, align 8
  br label %50

127:                                              ; preds = %59, %50
  %128 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i8*, i8** %18, align 8
  %132 = call i32 @free(i8* %131)
  br label %398

133:                                              ; preds = %2
  %134 = load i32*, i32** %12, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = call i8* @sdb_querys(i32* %134, i32* null, i32 0, i8* %136)
  store i8* %137, i8** %7, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 @r_cons_print(i8* %141)
  br label %143

143:                                              ; preds = %140, %133
  %144 = load i8*, i8** %7, align 8
  %145 = call i32 @free(i8* %144)
  br label %398

146:                                              ; preds = %2
  %147 = load i32*, i32** %12, align 8
  %148 = load i32, i32* @callback_foreach_kv, align 4
  %149 = call i32 @sdb_foreach(i32* %147, i32 %148, i32* null)
  br label %398

150:                                              ; preds = %2
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %442

156:                                              ; preds = %150
  %157 = call i32 (...) @r_cons_is_interactive()
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %442

160:                                              ; preds = %156
  %161 = load i8*, i8** %5, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 32
  br i1 %165, label %166, label %191

166:                                              ; preds = %160
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 2
  %169 = call i8* @strdup(i8* %168)
  store i8* %169, i8** %21, align 8
  %170 = load i8*, i8** %21, align 8
  store i8* %170, i8** %20, align 8
  store i8* %170, i8** %19, align 8
  br label %171

171:                                              ; preds = %186, %166
  %172 = load i8*, i8** %19, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %188

174:                                              ; preds = %171
  %175 = load i8*, i8** %20, align 8
  %176 = call i8* @strchr(i8* %175, i8 signext 47)
  store i8* %176, i8** %19, align 8
  %177 = load i8*, i8** %19, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i8*, i8** %19, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %19, align 8
  store i8 0, i8* %180, align 1
  br label %182

182:                                              ; preds = %179, %174
  %183 = load i32*, i32** %12, align 8
  %184 = load i8*, i8** %20, align 8
  %185 = call i32* @sdb_ns(i32* %183, i8* %184, i32 1)
  store i32* %185, i32** %12, align 8
  br label %186

186:                                              ; preds = %182
  %187 = load i8*, i8** %19, align 8
  store i8* %187, i8** %20, align 8
  br label %171

188:                                              ; preds = %171
  %189 = load i8*, i8** %21, align 8
  %190 = call i32 @free(i8* %189)
  br label %191

191:                                              ; preds = %188, %160
  %192 = load i32*, i32** %12, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  store i32* %197, i32** %12, align 8
  br label %198

198:                                              ; preds = %194, %191
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  store %struct.TYPE_14__* %203, %struct.TYPE_14__** %22, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %205, align 8
  %207 = icmp ne %struct.TYPE_13__* %206, null
  br i1 %207, label %217, label %208

208:                                              ; preds = %198
  %209 = call %struct.TYPE_13__* @r_list_newf(i32 (i8*)* @free)
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  store %struct.TYPE_13__* %209, %struct.TYPE_13__** %211, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  %215 = call i32 @r_str_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %216 = call i32 @r_list_append(%struct.TYPE_13__* %214, i32 %215)
  br label %217

217:                                              ; preds = %208, %198
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %219, align 8
  store %struct.TYPE_13__* %220, %struct.TYPE_13__** %23, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %222 = call i32 @r_line_set_hist_callback(%struct.TYPE_14__* %221, i32* @r_line_hist_sdb_up, i32* @r_line_hist_sdb_down)
  br label %223

223:                                              ; preds = %273, %217
  %224 = load i8*, i8** %10, align 8
  %225 = call i32 @r_line_set_prompt(i8* %224)
  %226 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %227 = call i32 @r_cons_fgets(i8* %226, i32 1023, i32 0, i32* null)
  %228 = icmp slt i32 %227, 1
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  br label %274

230:                                              ; preds = %223
  %231 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %232 = load i8, i8* %231, align 16
  %233 = icmp ne i8 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  br label %274

235:                                              ; preds = %230
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %237 = icmp ne %struct.TYPE_13__* %236, null
  br i1 %237, label %238, label %263

238:                                              ; preds = %235
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %240 = call i32 @r_list_length(%struct.TYPE_13__* %239)
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %252, label %242

242:                                              ; preds = %238
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %244 = call i32 @r_list_length(%struct.TYPE_13__* %243)
  %245 = icmp sgt i32 %244, 1
  br i1 %245, label %246, label %257

246:                                              ; preds = %242
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %248 = call i32 @r_list_get_n(%struct.TYPE_13__* %247, i32 1)
  %249 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %250 = call i32 @strcmp(i32 %248, i8* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %246, %238
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %254 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %255 = call i8* @strdup(i8* %254)
  %256 = call i32 @r_list_insert(%struct.TYPE_13__* %253, i32 1, i8* %255)
  br label %257

257:                                              ; preds = %252, %246, %242
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  br label %263

263:                                              ; preds = %257, %235
  %264 = load i32*, i32** %12, align 8
  %265 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %266 = call i8* @sdb_querys(i32* %264, i32* null, i32 0, i8* %265)
  store i8* %266, i8** %7, align 8
  %267 = load i8*, i8** %7, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %273

269:                                              ; preds = %263
  %270 = load i8*, i8** %7, align 8
  %271 = call i32 @r_cons_println(i8* %270)
  %272 = call i32 (...) @r_cons_flush()
  br label %273

273:                                              ; preds = %269, %263
  br label %223

274:                                              ; preds = %234, %229
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %278, align 8
  %280 = call i32 @r_line_set_hist_callback(%struct.TYPE_14__* %279, i32* @r_line_hist_cmd_up, i32* @r_line_hist_cmd_down)
  br label %398

281:                                              ; preds = %2
  %282 = call i32 @r_sandbox_enable(i32 0)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %442

286:                                              ; preds = %281
  %287 = load i8*, i8** %5, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 1
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp eq i32 %290, 32
  br i1 %291, label %292, label %344

292:                                              ; preds = %286
  %293 = load i8*, i8** %5, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 2
  %295 = call i8* @strdup(i8* %294)
  store i8* %295, i8** %24, align 8
  %296 = load i8*, i8** %24, align 8
  %297 = icmp ne i8* %296, null
  br i1 %297, label %300, label %298

298:                                              ; preds = %292
  %299 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %442

300:                                              ; preds = %292
  %301 = load i8*, i8** %24, align 8
  %302 = call i8* @strchr(i8* %301, i8 signext 32)
  store i8* %302, i8** %25, align 8
  %303 = load i8*, i8** %25, align 8
  %304 = icmp ne i8* %303, null
  br i1 %304, label %305, label %339

305:                                              ; preds = %300
  %306 = load i8*, i8** %25, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %25, align 8
  store i8 0, i8* %306, align 1
  %308 = load i8*, i8** %24, align 8
  %309 = call i32 @r_file_exists(i8* %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %336

311:                                              ; preds = %305
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = load i8*, i8** %25, align 8
  %316 = call i32* @sdb_ns_path(i32* %314, i8* %315, i32 1)
  store i32* %316, i32** %26, align 8
  %317 = load i32*, i32** %26, align 8
  %318 = icmp ne i32* %317, null
  br i1 %318, label %319, label %332

319:                                              ; preds = %311
  %320 = load i8*, i8** %24, align 8
  %321 = call i32* @sdb_new(i32* null, i8* %320, i32 0)
  store i32* %321, i32** %27, align 8
  %322 = load i32*, i32** %27, align 8
  %323 = icmp ne i32* %322, null
  br i1 %323, label %324, label %328

324:                                              ; preds = %319
  %325 = load i32*, i32** %26, align 8
  %326 = load i32*, i32** %27, align 8
  %327 = call i32 @sdb_drain(i32* %325, i32* %326)
  br label %331

328:                                              ; preds = %319
  %329 = load i8*, i8** %24, align 8
  %330 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %329)
  br label %331

331:                                              ; preds = %328, %324
  br label %335

332:                                              ; preds = %311
  %333 = load i8*, i8** %25, align 8
  %334 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %333)
  br label %335

335:                                              ; preds = %332, %331
  br label %338

336:                                              ; preds = %305
  %337 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  br label %338

338:                                              ; preds = %336, %335
  br label %341

339:                                              ; preds = %300
  %340 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  br label %341

341:                                              ; preds = %339, %338
  %342 = load i8*, i8** %24, align 8
  %343 = call i32 @free(i8* %342)
  br label %346

344:                                              ; preds = %286
  %345 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  br label %346

346:                                              ; preds = %344, %341
  br label %398

347:                                              ; preds = %2
  %348 = call i32 @r_sandbox_enable(i32 0)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %347
  %351 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %442

352:                                              ; preds = %347
  %353 = load i8*, i8** %5, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 1
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp eq i32 %356, 32
  br i1 %357, label %358, label %391

358:                                              ; preds = %352
  %359 = load i8*, i8** %5, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 2
  %361 = call i8* @strdup(i8* %360)
  store i8* %361, i8** %28, align 8
  %362 = load i8*, i8** %28, align 8
  %363 = call i8* @strchr(i8* %362, i8 signext 32)
  store i8* %363, i8** %29, align 8
  %364 = load i8*, i8** %29, align 8
  %365 = icmp ne i8* %364, null
  br i1 %365, label %366, label %386

366:                                              ; preds = %358
  %367 = load i8*, i8** %29, align 8
  %368 = getelementptr inbounds i8, i8* %367, i32 1
  store i8* %368, i8** %29, align 8
  store i8 0, i8* %367, align 1
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = load i8*, i8** %29, align 8
  %373 = call i32* @sdb_ns_path(i32* %371, i8* %372, i32 0)
  store i32* %373, i32** %30, align 8
  %374 = load i32*, i32** %30, align 8
  %375 = icmp ne i32* %374, null
  br i1 %375, label %376, label %382

376:                                              ; preds = %366
  %377 = load i32*, i32** %30, align 8
  %378 = load i8*, i8** %28, align 8
  %379 = call i32 @sdb_file(i32* %377, i8* %378)
  %380 = load i32*, i32** %30, align 8
  %381 = call i32 @sdb_sync(i32* %380)
  br label %385

382:                                              ; preds = %366
  %383 = load i8*, i8** %29, align 8
  %384 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %383)
  br label %385

385:                                              ; preds = %382, %376
  br label %388

386:                                              ; preds = %358
  %387 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  br label %388

388:                                              ; preds = %386, %385
  %389 = load i8*, i8** %28, align 8
  %390 = call i32 @free(i8* %389)
  br label %393

391:                                              ; preds = %352
  %392 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  br label %393

393:                                              ; preds = %391, %388
  br label %398

394:                                              ; preds = %2
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %396 = load i32, i32* @help_msg_k, align 4
  %397 = call i32 @r_core_cmd_help(%struct.TYPE_15__* %395, i32 %396)
  br label %398

398:                                              ; preds = %2, %394, %393, %346, %274, %146, %143, %127, %46
  %399 = load i8*, i8** %5, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 0
  %401 = load i8, i8* %400, align 1
  %402 = sext i8 %401 to i32
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %398
  store i32 0, i32* %3, align 4
  br label %442

405:                                              ; preds = %398
  %406 = load i8*, i8** %5, align 8
  %407 = getelementptr inbounds i8, i8* %406, i64 1
  %408 = call i8* @strchr(i8* %407, i8 signext 32)
  store i8* %408, i8** %9, align 8
  %409 = load i8*, i8** %9, align 8
  %410 = icmp ne i8* %409, null
  br i1 %410, label %411, label %441

411:                                              ; preds = %405
  %412 = load i8*, i8** %5, align 8
  %413 = call i8* @strdup(i8* %412)
  store i8* %413, i8** %31, align 8
  %414 = load i8*, i8** %31, align 8
  %415 = load i8*, i8** %9, align 8
  %416 = load i8*, i8** %5, align 8
  %417 = ptrtoint i8* %415 to i64
  %418 = ptrtoint i8* %416 to i64
  %419 = sub i64 %417, %418
  %420 = getelementptr inbounds i8, i8* %414, i64 %419
  store i8 0, i8* %420, align 1
  %421 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 0
  %423 = load i32*, i32** %422, align 8
  %424 = load i8*, i8** %31, align 8
  %425 = getelementptr inbounds i8, i8* %424, i64 1
  %426 = call i32* @sdb_ns(i32* %423, i8* %425, i32 1)
  store i32* %426, i32** %12, align 8
  %427 = load i32*, i32** %12, align 8
  %428 = load i8*, i8** %9, align 8
  %429 = getelementptr inbounds i8, i8* %428, i64 1
  %430 = call i8* @sdb_querys(i32* %427, i32* null, i32 0, i8* %429)
  store i8* %430, i8** %7, align 8
  %431 = load i8*, i8** %7, align 8
  %432 = icmp ne i8* %431, null
  br i1 %432, label %433, label %438

433:                                              ; preds = %411
  %434 = load i8*, i8** %7, align 8
  %435 = call i32 @r_cons_println(i8* %434)
  %436 = load i8*, i8** %7, align 8
  %437 = call i32 @free(i8* %436)
  br label %438

438:                                              ; preds = %433, %411
  %439 = load i8*, i8** %31, align 8
  %440 = call i32 @free(i8* %439)
  store i32 0, i32* %3, align 4
  br label %442

441:                                              ; preds = %405
  store i32 0, i32* %3, align 4
  br label %442

442:                                              ; preds = %441, %438, %404, %350, %298, %284, %159, %155
  %443 = load i32, i32* %3, align 4
  ret i32 %443
}

declare dso_local i8* @sdb_querys(i32*, i32*, i32, i8*) #1

declare dso_local i32 @r_cons_println(i8*) #1

declare dso_local i32 @r_cons_printf(i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @r_str_ndup(i8*, ...) #1

declare dso_local i8* @r_str_newf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_cons_print(i8*) #1

declare dso_local i32 @sdb_foreach(i32*, i32, i32*) #1

declare dso_local i32 @r_cons_is_interactive(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32* @sdb_ns(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_13__* @r_list_newf(i32 (i8*)*) #1

declare dso_local i32 @r_list_append(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @r_str_new(i8*) #1

declare dso_local i32 @r_line_set_hist_callback(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @r_line_set_prompt(i8*) #1

declare dso_local i32 @r_cons_fgets(i8*, i32, i32, i32*) #1

declare dso_local i32 @r_list_length(%struct.TYPE_13__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @r_list_get_n(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @r_list_insert(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @r_cons_flush(...) #1

declare dso_local i32 @r_sandbox_enable(i32) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_file_exists(i8*) #1

declare dso_local i32* @sdb_ns_path(i32*, i8*, i32) #1

declare dso_local i32* @sdb_new(i32*, i8*, i32) #1

declare dso_local i32 @sdb_drain(i32*, i32*) #1

declare dso_local i32 @sdb_file(i32*, i8*) #1

declare dso_local i32 @sdb_sync(i32*) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
