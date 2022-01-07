; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_dependency.c_reportDependentObjects.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_dependency.c_reportDependentObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i8* }

@PERFORM_DELETION_QUIETLY = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@DEPFLAG_IS_PART = common dso_local global i32 0, align 4
@DEPFLAG_PARTITION = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot drop %s because %s requires it\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"You can drop %s instead.\00", align 1
@DROP_CASCADE = common dso_local global i64 0, align 8
@client_min_messages = common dso_local global i32 0, align 4
@log_min_messages = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@DEPFLAG_ORIGINAL = common dso_local global i32 0, align 4
@DEPFLAG_SUBOBJECT = common dso_local global i32 0, align 4
@DEPFLAG_AUTO = common dso_local global i32 0, align 4
@DEPFLAG_INTERNAL = common dso_local global i32 0, align 4
@DEPFLAG_EXTENSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"drop auto-cascades to %s\00", align 1
@DROP_RESTRICT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"%s depends on %s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"drop cascades to %s\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"\0Aand %d other object (see server log for list)\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\0Aand %d other objects (see server log for list)\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"cannot drop %s because other objects depend on it\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Use DROP ... CASCADE to drop the dependent objects too.\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"cannot drop desired object(s) because other objects depend on them\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"drop cascades to %d other object\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"drop cascades to %d other objects\00", align 1
@MAX_REPORTED_DEPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i32, i32*)* @reportDependentObjects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reportDependentObjects(%struct.TYPE_9__* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PERFORM_DELETION_QUIETLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @DEBUG2, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @NOTICE, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %80, %31
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %83

39:                                               ; preds = %33
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %44
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %16, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DEPFLAG_IS_PART, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %39
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DEPFLAG_PARTITION, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %52
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32* %65, i32** %17, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = call i8* @getObjectDescription(i32* %67)
  store i8* %68, i8** %18, align 8
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST, align 4
  %71 = call i32 @errcode(i32 %70)
  %72 = load i32*, i32** %17, align 8
  %73 = call i8* @getObjectDescription(i32* %72)
  %74 = load i8*, i8** %18, align 8
  %75 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %73, i8* %74)
  %76 = load i8*, i8** %18, align 8
  %77 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  %78 = call i32 @ereport(i32 %69, i32 %77)
  br label %79

79:                                               ; preds = %59, %52, %39
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %33

83:                                               ; preds = %33
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @DROP_CASCADE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @client_min_messages, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @log_min_messages, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* @log_min_messages, align 4
  %97 = load i32, i32* @LOG, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %91
  br label %312

100:                                              ; preds = %95, %87, %83
  %101 = call i32 @initStringInfo(%struct.TYPE_8__* %11)
  %102 = call i32 @initStringInfo(%struct.TYPE_8__* %12)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %229, %100
  %108 = load i32, i32* %15, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %232

110:                                              ; preds = %107
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32* %116, i32** %19, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 %121
  store %struct.TYPE_10__* %122, %struct.TYPE_10__** %20, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DEPFLAG_ORIGINAL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %110
  br label %229

130:                                              ; preds = %110
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @DEPFLAG_SUBOBJECT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %229

138:                                              ; preds = %130
  %139 = load i32*, i32** %19, align 8
  %140 = call i8* @getObjectDescription(i32* %139)
  store i8* %140, i8** %21, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @DEPFLAG_AUTO, align 4
  %145 = load i32, i32* @DEPFLAG_INTERNAL, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @DEPFLAG_PARTITION, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @DEPFLAG_EXTENSION, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %143, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %138
  %154 = load i32, i32* @DEBUG2, align 4
  %155 = load i8*, i8** %21, align 8
  %156 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %155)
  %157 = call i32 @ereport(i32 %154, i32 %156)
  br label %226

158:                                              ; preds = %138
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* @DROP_RESTRICT, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %197

162:                                              ; preds = %158
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = call i8* @getObjectDescription(i32* %164)
  store i8* %165, i8** %22, align 8
  %166 = load i32, i32* %13, align 4
  %167 = icmp slt i32 %166, 100
  br i1 %167, label %168, label %181

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = call i32 @appendStringInfoChar(%struct.TYPE_8__* %11, i8 signext 10)
  br label %174

174:                                              ; preds = %172, %168
  %175 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %176 = load i8*, i8** %21, align 8
  %177 = load i8*, i8** %22, align 8
  %178 = call i32 (%struct.TYPE_8__*, i32, ...) @appendStringInfo(%struct.TYPE_8__* %11, i32 %175, i8* %176, i8* %177)
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %13, align 4
  br label %184

181:                                              ; preds = %162
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %14, align 4
  br label %184

184:                                              ; preds = %181, %174
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = call i32 @appendStringInfoChar(%struct.TYPE_8__* %12, i8 signext 10)
  br label %190

190:                                              ; preds = %188, %184
  %191 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %192 = load i8*, i8** %21, align 8
  %193 = load i8*, i8** %22, align 8
  %194 = call i32 (%struct.TYPE_8__*, i32, ...) @appendStringInfo(%struct.TYPE_8__* %12, i32 %191, i8* %192, i8* %193)
  %195 = load i8*, i8** %22, align 8
  %196 = call i32 @pfree(i8* %195)
  store i32 0, i32* %10, align 4
  br label %225

197:                                              ; preds = %158
  %198 = load i32, i32* %13, align 4
  %199 = icmp slt i32 %198, 100
  br i1 %199, label %200, label %212

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = call i32 @appendStringInfoChar(%struct.TYPE_8__* %11, i8 signext 10)
  br label %206

206:                                              ; preds = %204, %200
  %207 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %208 = load i8*, i8** %21, align 8
  %209 = call i32 (%struct.TYPE_8__*, i32, ...) @appendStringInfo(%struct.TYPE_8__* %11, i32 %207, i8* %208)
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %215

212:                                              ; preds = %197
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %14, align 4
  br label %215

215:                                              ; preds = %212, %206
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = call i32 @appendStringInfoChar(%struct.TYPE_8__* %12, i8 signext 10)
  br label %221

221:                                              ; preds = %219, %215
  %222 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %223 = load i8*, i8** %21, align 8
  %224 = call i32 (%struct.TYPE_8__*, i32, ...) @appendStringInfo(%struct.TYPE_8__* %12, i32 %222, i8* %223)
  br label %225

225:                                              ; preds = %221, %190
  br label %226

226:                                              ; preds = %225, %153
  %227 = load i8*, i8** %21, align 8
  %228 = call i32 @pfree(i8* %227)
  br label %229

229:                                              ; preds = %226, %137, %129
  %230 = load i32, i32* %15, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %15, align 4
  br label %107

232:                                              ; preds = %107
  %233 = load i32, i32* %14, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load i32, i32* %14, align 4
  %237 = call i32 @ngettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* %14, align 4
  %239 = call i32 (%struct.TYPE_8__*, i32, ...) @appendStringInfo(%struct.TYPE_8__* %11, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %235, %232
  %241 = load i32, i32* %10, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %275, label %243

243:                                              ; preds = %240
  %244 = load i32*, i32** %8, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %261

246:                                              ; preds = %243
  %247 = load i32, i32* @ERROR, align 4
  %248 = load i32, i32* @ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST, align 4
  %249 = call i32 @errcode(i32 %248)
  %250 = load i32*, i32** %8, align 8
  %251 = call i8* @getObjectDescription(i32* %250)
  %252 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %251)
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @errdetail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %254)
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @errdetail_log(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %257)
  %259 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  %260 = call i32 @ereport(i32 %247, i32 %259)
  br label %274

261:                                              ; preds = %243
  %262 = load i32, i32* @ERROR, align 4
  %263 = load i32, i32* @ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST, align 4
  %264 = call i32 @errcode(i32 %263)
  %265 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0))
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @errdetail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %267)
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @errdetail_log(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %270)
  %272 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  %273 = call i32 @ereport(i32 %262, i32 %272)
  br label %274

274:                                              ; preds = %261, %246
  br label %305

275:                                              ; preds = %240
  %276 = load i32, i32* %13, align 4
  %277 = icmp sgt i32 %276, 1
  br i1 %277, label %278, label %294

278:                                              ; preds = %275
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* %13, align 4
  %281 = load i32, i32* %14, align 4
  %282 = add nsw i32 %280, %281
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* %14, align 4
  %285 = add nsw i32 %283, %284
  %286 = call i32 @errmsg_plural(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %282, i32 %285)
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @errdetail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %288)
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @errdetail_log(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %291)
  %293 = call i32 @ereport(i32 %279, i32 %292)
  br label %304

294:                                              ; preds = %275
  %295 = load i32, i32* %13, align 4
  %296 = icmp eq i32 %295, 1
  br i1 %296, label %297, label %303

297:                                              ; preds = %294
  %298 = load i32, i32* %9, align 4
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @errmsg_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %300)
  %302 = call i32 @ereport(i32 %298, i32 %301)
  br label %303

303:                                              ; preds = %297, %294
  br label %304

304:                                              ; preds = %303, %278
  br label %305

305:                                              ; preds = %304, %274
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @pfree(i8* %307)
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 @pfree(i8* %310)
  br label %312

312:                                              ; preds = %305, %99
  ret void
}

declare dso_local i8* @getObjectDescription(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*, ...) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_8__*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @ngettext(i8*, i8*, i32) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

declare dso_local i32 @errdetail_log(i8*, i8*) #1

declare dso_local i32 @errmsg_plural(i8*, i8*, i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
