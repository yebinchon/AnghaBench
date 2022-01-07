; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_d.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@OT_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"tvmsE\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ddp\00", align 1
@PSQL_CMD_UNKNOWN = common dso_local global i32 0, align 4
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @exec_command_d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_d(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  store i32 %13, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %287

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @OT_NORMAL, align 4
  %19 = call i8* @psql_scan_slash_option(i32 %17, i32 %18, i32* null, i32 1)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strchr(i8* %20, i8 signext 43)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strchr(i8* %25, i8 signext 83)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  store i32 %29, i32* %11, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %278 [
    i32 0, label %34
    i32 43, label %34
    i32 83, label %34
    i32 65, label %47
    i32 97, label %51
    i32 98, label %56
    i32 99, label %60
    i32 67, label %65
    i32 100, label %69
    i32 68, label %81
    i32 102, label %86
    i32 103, label %101
    i32 108, label %106
    i32 76, label %108
    i32 110, label %113
    i32 111, label %118
    i32 79, label %123
    i32 112, label %128
    i32 80, label %131
    i32 84, label %145
    i32 116, label %150
    i32 118, label %150
    i32 109, label %150
    i32 105, label %150
    i32 115, label %150
    i32 69, label %150
    i32 114, label %157
    i32 82, label %189
    i32 117, label %211
    i32 70, label %216
    i32 101, label %240
    i32 120, label %264
    i32 121, label %274
  ]

34:                                               ; preds = %16, %16, %16
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @describeTableDetails(i8* %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %46

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @listTables(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* null, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %42, %37
  br label %280

47:                                               ; preds = %16
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @describeAccessMethods(i8* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %280

51:                                               ; preds = %16
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @describeAggregates(i8* %52, i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %280

56:                                               ; preds = %16
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @describeTablespaces(i8* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  br label %280

60:                                               ; preds = %16
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @listConversions(i8* %61, i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %280

65:                                               ; preds = %16
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @listCasts(i8* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %280

69:                                               ; preds = %16
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @strncmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @listDefaultACLs(i8* %74)
  store i32 %75, i32* %8, align 4
  br label %80

76:                                               ; preds = %69
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @objectDescription(i8* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %73
  br label %280

81:                                               ; preds = %16
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @listDomains(i8* %82, i32 %83, i32 %84)
  store i32 %85, i32* %8, align 4
  br label %280

86:                                               ; preds = %16
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  switch i32 %90, label %98 [
    i32 0, label %91
    i32 43, label %91
    i32 83, label %91
    i32 97, label %91
    i32 110, label %91
    i32 112, label %91
    i32 116, label %91
    i32 119, label %91
  ]

91:                                               ; preds = %86, %86, %86, %86, %86, %86, %86, %86
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @describeFunctions(i8* %93, i8* %94, i32 %95, i32 %96)
  store i32 %97, i32* %8, align 4
  br label %100

98:                                               ; preds = %86
  %99 = load i32, i32* @PSQL_CMD_UNKNOWN, align 4
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %98, %91
  br label %280

101:                                              ; preds = %16
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @describeRoles(i8* %102, i32 %103, i32 %104)
  store i32 %105, i32* %8, align 4
  br label %280

106:                                              ; preds = %16
  %107 = call i32 (...) @do_lo_list()
  store i32 %107, i32* %8, align 4
  br label %280

108:                                              ; preds = %16
  %109 = load i8*, i8** %9, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @listLanguages(i8* %109, i32 %110, i32 %111)
  store i32 %112, i32* %8, align 4
  br label %280

113:                                              ; preds = %16
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @listSchemas(i8* %114, i32 %115, i32 %116)
  store i32 %117, i32* %8, align 4
  br label %280

118:                                              ; preds = %16
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @describeOperators(i8* %119, i32 %120, i32 %121)
  store i32 %122, i32* %8, align 4
  br label %280

123:                                              ; preds = %16
  %124 = load i8*, i8** %9, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @listCollations(i8* %124, i32 %125, i32 %126)
  store i32 %127, i32* %8, align 4
  br label %280

128:                                              ; preds = %16
  %129 = load i8*, i8** %9, align 8
  %130 = call i32 @permissionsList(i8* %129)
  store i32 %130, i32* %8, align 4
  br label %280

131:                                              ; preds = %16
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  switch i32 %135, label %142 [
    i32 0, label %136
    i32 43, label %136
    i32 116, label %136
    i32 105, label %136
    i32 110, label %136
  ]

136:                                              ; preds = %131, %131, %131, %131, %131
  %137 = load i8*, i8** %6, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  %139 = load i8*, i8** %9, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @listPartitionedTables(i8* %138, i8* %139, i32 %140)
  store i32 %141, i32* %8, align 4
  br label %144

142:                                              ; preds = %131
  %143 = load i32, i32* @PSQL_CMD_UNKNOWN, align 4
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %142, %136
  br label %280

145:                                              ; preds = %16
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @describeTypes(i8* %146, i32 %147, i32 %148)
  store i32 %149, i32* %8, align 4
  br label %280

150:                                              ; preds = %16, %16, %16, %16, %16, %16
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @listTables(i8* %152, i8* %153, i32 %154, i32 %155)
  store i32 %156, i32* %8, align 4
  br label %280

157:                                              ; preds = %16
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 100
  br i1 %162, label %163, label %186

163:                                              ; preds = %157
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 3
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 115
  br i1 %168, label %169, label %186

169:                                              ; preds = %163
  store i8* null, i8** %12, align 8
  %170 = load i8*, i8** %9, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @OT_NORMAL, align 4
  %175 = call i8* @psql_scan_slash_option(i32 %173, i32 %174, i32* null, i32 1)
  store i8* %175, i8** %12, align 8
  br label %176

176:                                              ; preds = %172, %169
  %177 = load i8*, i8** %9, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = call i32 @listDbRoleSettings(i8* %177, i8* %178)
  store i32 %179, i32* %8, align 4
  %180 = load i8*, i8** %12, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i8*, i8** %12, align 8
  %184 = call i32 @free(i8* %183)
  br label %185

185:                                              ; preds = %182, %176
  br label %188

186:                                              ; preds = %163, %157
  %187 = load i32, i32* @PSQL_CMD_UNKNOWN, align 4
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %186, %185
  br label %280

189:                                              ; preds = %16
  %190 = load i8*, i8** %6, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 2
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  switch i32 %193, label %208 [
    i32 112, label %194
    i32 115, label %204
  ]

194:                                              ; preds = %189
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i8*, i8** %9, align 8
  %199 = call i32 @describePublications(i8* %198)
  store i32 %199, i32* %8, align 4
  br label %203

200:                                              ; preds = %194
  %201 = load i8*, i8** %9, align 8
  %202 = call i32 @listPublications(i8* %201)
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %200, %197
  br label %210

204:                                              ; preds = %189
  %205 = load i8*, i8** %9, align 8
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @describeSubscriptions(i8* %205, i32 %206)
  store i32 %207, i32* %8, align 4
  br label %210

208:                                              ; preds = %189
  %209 = load i32, i32* @PSQL_CMD_UNKNOWN, align 4
  store i32 %209, i32* %7, align 4
  br label %210

210:                                              ; preds = %208, %204, %203
  br label %280

211:                                              ; preds = %16
  %212 = load i8*, i8** %9, align 8
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @describeRoles(i8* %212, i32 %213, i32 %214)
  store i32 %215, i32* %8, align 4
  br label %280

216:                                              ; preds = %16
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 2
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  switch i32 %220, label %237 [
    i32 0, label %221
    i32 43, label %221
    i32 112, label %225
    i32 100, label %229
    i32 116, label %233
  ]

221:                                              ; preds = %216, %216
  %222 = load i8*, i8** %9, align 8
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @listTSConfigs(i8* %222, i32 %223)
  store i32 %224, i32* %8, align 4
  br label %239

225:                                              ; preds = %216
  %226 = load i8*, i8** %9, align 8
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @listTSParsers(i8* %226, i32 %227)
  store i32 %228, i32* %8, align 4
  br label %239

229:                                              ; preds = %216
  %230 = load i8*, i8** %9, align 8
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @listTSDictionaries(i8* %230, i32 %231)
  store i32 %232, i32* %8, align 4
  br label %239

233:                                              ; preds = %216
  %234 = load i8*, i8** %9, align 8
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @listTSTemplates(i8* %234, i32 %235)
  store i32 %236, i32* %8, align 4
  br label %239

237:                                              ; preds = %216
  %238 = load i32, i32* @PSQL_CMD_UNKNOWN, align 4
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %237, %233, %229, %225, %221
  br label %280

240:                                              ; preds = %16
  %241 = load i8*, i8** %6, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 2
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  switch i32 %244, label %261 [
    i32 115, label %245
    i32 117, label %249
    i32 119, label %253
    i32 116, label %257
  ]

245:                                              ; preds = %240
  %246 = load i8*, i8** %9, align 8
  %247 = load i32, i32* %10, align 4
  %248 = call i32 @listForeignServers(i8* %246, i32 %247)
  store i32 %248, i32* %8, align 4
  br label %263

249:                                              ; preds = %240
  %250 = load i8*, i8** %9, align 8
  %251 = load i32, i32* %10, align 4
  %252 = call i32 @listUserMappings(i8* %250, i32 %251)
  store i32 %252, i32* %8, align 4
  br label %263

253:                                              ; preds = %240
  %254 = load i8*, i8** %9, align 8
  %255 = load i32, i32* %10, align 4
  %256 = call i32 @listForeignDataWrappers(i8* %254, i32 %255)
  store i32 %256, i32* %8, align 4
  br label %263

257:                                              ; preds = %240
  %258 = load i8*, i8** %9, align 8
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @listForeignTables(i8* %258, i32 %259)
  store i32 %260, i32* %8, align 4
  br label %263

261:                                              ; preds = %240
  %262 = load i32, i32* @PSQL_CMD_UNKNOWN, align 4
  store i32 %262, i32* %7, align 4
  br label %263

263:                                              ; preds = %261, %257, %253, %249, %245
  br label %280

264:                                              ; preds = %16
  %265 = load i32, i32* %10, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i8*, i8** %9, align 8
  %269 = call i32 @listExtensionContents(i8* %268)
  store i32 %269, i32* %8, align 4
  br label %273

270:                                              ; preds = %264
  %271 = load i8*, i8** %9, align 8
  %272 = call i32 @listExtensions(i8* %271)
  store i32 %272, i32* %8, align 4
  br label %273

273:                                              ; preds = %270, %267
  br label %280

274:                                              ; preds = %16
  %275 = load i8*, i8** %9, align 8
  %276 = load i32, i32* %10, align 4
  %277 = call i32 @listEventTriggers(i8* %275, i32 %276)
  store i32 %277, i32* %8, align 4
  br label %280

278:                                              ; preds = %16
  %279 = load i32, i32* @PSQL_CMD_UNKNOWN, align 4
  store i32 %279, i32* %7, align 4
  br label %280

280:                                              ; preds = %278, %274, %273, %263, %239, %211, %210, %188, %150, %145, %144, %128, %123, %118, %113, %108, %106, %101, %100, %81, %80, %65, %60, %56, %51, %47, %46
  %281 = load i8*, i8** %9, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load i8*, i8** %9, align 8
  %285 = call i32 @free(i8* %284)
  br label %286

286:                                              ; preds = %283, %280
  br label %290

287:                                              ; preds = %3
  %288 = load i32, i32* %4, align 4
  %289 = call i32 @ignore_slash_options(i32 %288)
  br label %290

290:                                              ; preds = %287, %286
  %291 = load i32, i32* %8, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %290
  %294 = load i32, i32* @PSQL_CMD_ERROR, align 4
  store i32 %294, i32* %7, align 4
  br label %295

295:                                              ; preds = %293, %290
  %296 = load i32, i32* %7, align 4
  ret i32 %296
}

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @describeTableDetails(i8*, i32, i32) #1

declare dso_local i32 @listTables(i8*, i8*, i32, i32) #1

declare dso_local i32 @describeAccessMethods(i8*, i32) #1

declare dso_local i32 @describeAggregates(i8*, i32, i32) #1

declare dso_local i32 @describeTablespaces(i8*, i32) #1

declare dso_local i32 @listConversions(i8*, i32, i32) #1

declare dso_local i32 @listCasts(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @listDefaultACLs(i8*) #1

declare dso_local i32 @objectDescription(i8*, i32) #1

declare dso_local i32 @listDomains(i8*, i32, i32) #1

declare dso_local i32 @describeFunctions(i8*, i8*, i32, i32) #1

declare dso_local i32 @describeRoles(i8*, i32, i32) #1

declare dso_local i32 @do_lo_list(...) #1

declare dso_local i32 @listLanguages(i8*, i32, i32) #1

declare dso_local i32 @listSchemas(i8*, i32, i32) #1

declare dso_local i32 @describeOperators(i8*, i32, i32) #1

declare dso_local i32 @listCollations(i8*, i32, i32) #1

declare dso_local i32 @permissionsList(i8*) #1

declare dso_local i32 @listPartitionedTables(i8*, i8*, i32) #1

declare dso_local i32 @describeTypes(i8*, i32, i32) #1

declare dso_local i32 @listDbRoleSettings(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @describePublications(i8*) #1

declare dso_local i32 @listPublications(i8*) #1

declare dso_local i32 @describeSubscriptions(i8*, i32) #1

declare dso_local i32 @listTSConfigs(i8*, i32) #1

declare dso_local i32 @listTSParsers(i8*, i32) #1

declare dso_local i32 @listTSDictionaries(i8*, i32) #1

declare dso_local i32 @listTSTemplates(i8*, i32) #1

declare dso_local i32 @listForeignServers(i8*, i32) #1

declare dso_local i32 @listUserMappings(i8*, i32) #1

declare dso_local i32 @listForeignDataWrappers(i8*, i32) #1

declare dso_local i32 @listForeignTables(i8*, i32) #1

declare dso_local i32 @listExtensionContents(i8*) #1

declare dso_local i32 @listExtensions(i8*) #1

declare dso_local i32 @listEventTriggers(i8*, i32) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
