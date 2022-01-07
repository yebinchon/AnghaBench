; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_command_no_begin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_command_no_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"rollback\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"prepare\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"transaction\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"vacuum\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"cluster\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"database\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"tablespace\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"concurrently\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"alter\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"reindex\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @command_no_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_no_begin(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i8* @skip_white_space(i8* %5)
  store i8* %6, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %15, %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = call i64 @isalpha(i8 zeroext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %7
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %21 = call i64 @PQmblen(i8* %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @pg_strncasecmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %509

34:                                               ; preds = %29, %26
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 5
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @pg_strncasecmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %509

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @pg_strncasecmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %509

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 6
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i8*, i8** %3, align 8
  %55 = call i64 @pg_strncasecmp(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %509

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8*, i8** %3, align 8
  %63 = call i64 @pg_strncasecmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 1, i32* %2, align 4
  br label %509

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i8*, i8** %3, align 8
  %71 = call i64 @pg_strncasecmp(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 1, i32* %2, align 4
  br label %509

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %75, 7
  br i1 %76, label %77, label %116

77:                                               ; preds = %74
  %78 = load i8*, i8** %3, align 8
  %79 = call i64 @pg_strncasecmp(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %116

81:                                               ; preds = %77
  %82 = load i32, i32* %4, align 4
  %83 = load i8*, i8** %3, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %3, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = call i8* @skip_white_space(i8* %86)
  store i8* %87, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %96, %81
  %89 = load i8*, i8** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @isalpha(i8 zeroext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = load i8*, i8** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %102 = call i64 @PQmblen(i8* %100, i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %4, align 4
  br label %88

107:                                              ; preds = %88
  %108 = load i32, i32* %4, align 4
  %109 = icmp eq i32 %108, 11
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i8*, i8** %3, align 8
  %112 = call i64 @pg_strncasecmp(i8* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 11)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 1, i32* %2, align 4
  br label %509

115:                                              ; preds = %110, %107
  store i32 0, i32* %2, align 4
  br label %509

116:                                              ; preds = %77, %74
  %117 = load i32, i32* %4, align 4
  %118 = icmp eq i32 %117, 6
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i8*, i8** %3, align 8
  %121 = call i64 @pg_strncasecmp(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 1, i32* %2, align 4
  br label %509

124:                                              ; preds = %119, %116
  %125 = load i32, i32* %4, align 4
  %126 = icmp eq i32 %125, 7
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = load i8*, i8** %3, align 8
  %129 = call i64 @pg_strncasecmp(i8* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 7)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %127
  %132 = load i32, i32* %4, align 4
  %133 = load i8*, i8** %3, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %3, align 8
  %136 = load i8*, i8** %3, align 8
  %137 = call i8* @skip_white_space(i8* %136)
  store i8* %137, i8** %3, align 8
  %138 = load i8*, i8** %3, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = call i64 @isalpha(i8 zeroext %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %509

144:                                              ; preds = %131
  store i32 1, i32* %2, align 4
  br label %509

145:                                              ; preds = %127, %124
  %146 = load i32, i32* %4, align 4
  %147 = icmp eq i32 %146, 6
  br i1 %147, label %148, label %271

148:                                              ; preds = %145
  %149 = load i8*, i8** %3, align 8
  %150 = call i64 @pg_strncasecmp(i8* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 6)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %271

152:                                              ; preds = %148
  %153 = load i32, i32* %4, align 4
  %154 = load i8*, i8** %3, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %3, align 8
  %157 = load i8*, i8** %3, align 8
  %158 = call i8* @skip_white_space(i8* %157)
  store i8* %158, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %167, %152
  %160 = load i8*, i8** %3, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = call i64 @isalpha(i8 zeroext %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %159
  %168 = load i8*, i8** %3, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %173 = call i64 @PQmblen(i8* %171, i32 %172)
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %4, align 4
  br label %159

178:                                              ; preds = %159
  %179 = load i32, i32* %4, align 4
  %180 = icmp eq i32 %179, 8
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i8*, i8** %3, align 8
  %183 = call i64 @pg_strncasecmp(i8* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 8)
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 1, i32* %2, align 4
  br label %509

186:                                              ; preds = %181, %178
  %187 = load i32, i32* %4, align 4
  %188 = icmp eq i32 %187, 10
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load i8*, i8** %3, align 8
  %191 = call i64 @pg_strncasecmp(i8* %190, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 10)
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  store i32 1, i32* %2, align 4
  br label %509

194:                                              ; preds = %189, %186
  %195 = load i32, i32* %4, align 4
  %196 = icmp eq i32 %195, 6
  br i1 %196, label %197, label %228

197:                                              ; preds = %194
  %198 = load i8*, i8** %3, align 8
  %199 = call i64 @pg_strncasecmp(i8* %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 6)
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %228

201:                                              ; preds = %197
  %202 = load i32, i32* %4, align 4
  %203 = load i8*, i8** %3, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %3, align 8
  %206 = load i8*, i8** %3, align 8
  %207 = call i8* @skip_white_space(i8* %206)
  store i8* %207, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %216, %201
  %209 = load i8*, i8** %3, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = call i64 @isalpha(i8 zeroext %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %208
  %217 = load i8*, i8** %3, align 8
  %218 = load i32, i32* %4, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %222 = call i64 @PQmblen(i8* %220, i32 %221)
  %223 = load i32, i32* %4, align 4
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %224, %222
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %4, align 4
  br label %208

227:                                              ; preds = %208
  br label %228

228:                                              ; preds = %227, %197, %194
  %229 = load i32, i32* %4, align 4
  %230 = icmp eq i32 %229, 5
  br i1 %230, label %231, label %270

231:                                              ; preds = %228
  %232 = load i8*, i8** %3, align 8
  %233 = call i64 @pg_strncasecmp(i8* %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5)
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %270

235:                                              ; preds = %231
  %236 = load i32, i32* %4, align 4
  %237 = load i8*, i8** %3, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  store i8* %239, i8** %3, align 8
  %240 = load i8*, i8** %3, align 8
  %241 = call i8* @skip_white_space(i8* %240)
  store i8* %241, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %242

242:                                              ; preds = %250, %235
  %243 = load i8*, i8** %3, align 8
  %244 = load i32, i32* %4, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = call i64 @isalpha(i8 zeroext %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %242
  %251 = load i8*, i8** %3, align 8
  %252 = load i32, i32* %4, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %256 = call i64 @PQmblen(i8* %254, i32 %255)
  %257 = load i32, i32* %4, align 4
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %258, %256
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %4, align 4
  br label %242

261:                                              ; preds = %242
  %262 = load i32, i32* %4, align 4
  %263 = icmp eq i32 %262, 12
  br i1 %263, label %264, label %269

264:                                              ; preds = %261
  %265 = load i8*, i8** %3, align 8
  %266 = call i64 @pg_strncasecmp(i8* %265, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 12)
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  store i32 1, i32* %2, align 4
  br label %509

269:                                              ; preds = %264, %261
  br label %270

270:                                              ; preds = %269, %231, %228
  store i32 0, i32* %2, align 4
  br label %509

271:                                              ; preds = %148, %145
  %272 = load i32, i32* %4, align 4
  %273 = icmp eq i32 %272, 5
  br i1 %273, label %274, label %313

274:                                              ; preds = %271
  %275 = load i8*, i8** %3, align 8
  %276 = call i64 @pg_strncasecmp(i8* %275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 5)
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %313

278:                                              ; preds = %274
  %279 = load i32, i32* %4, align 4
  %280 = load i8*, i8** %3, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  store i8* %282, i8** %3, align 8
  %283 = load i8*, i8** %3, align 8
  %284 = call i8* @skip_white_space(i8* %283)
  store i8* %284, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %285

285:                                              ; preds = %293, %278
  %286 = load i8*, i8** %3, align 8
  %287 = load i32, i32* %4, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %286, i64 %288
  %290 = load i8, i8* %289, align 1
  %291 = call i64 @isalpha(i8 zeroext %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %285
  %294 = load i8*, i8** %3, align 8
  %295 = load i32, i32* %4, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  %298 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %299 = call i64 @PQmblen(i8* %297, i32 %298)
  %300 = load i32, i32* %4, align 4
  %301 = sext i32 %300 to i64
  %302 = add nsw i64 %301, %299
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %4, align 4
  br label %285

304:                                              ; preds = %285
  %305 = load i32, i32* %4, align 4
  %306 = icmp eq i32 %305, 6
  br i1 %306, label %307, label %312

307:                                              ; preds = %304
  %308 = load i8*, i8** %3, align 8
  %309 = call i64 @pg_strncasecmp(i8* %308, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 6)
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %307
  store i32 1, i32* %2, align 4
  br label %509

312:                                              ; preds = %307, %304
  store i32 0, i32* %2, align 4
  br label %509

313:                                              ; preds = %274, %271
  %314 = load i32, i32* %4, align 4
  %315 = icmp eq i32 %314, 4
  br i1 %315, label %316, label %320

316:                                              ; preds = %313
  %317 = load i8*, i8** %3, align 8
  %318 = call i64 @pg_strncasecmp(i8* %317, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 4)
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %327, label %320

320:                                              ; preds = %316, %313
  %321 = load i32, i32* %4, align 4
  %322 = icmp eq i32 %321, 7
  br i1 %322, label %323, label %466

323:                                              ; preds = %320
  %324 = load i8*, i8** %3, align 8
  %325 = call i64 @pg_strncasecmp(i8* %324, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 7)
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %466

327:                                              ; preds = %323, %316
  %328 = load i32, i32* %4, align 4
  %329 = load i8*, i8** %3, align 8
  %330 = sext i32 %328 to i64
  %331 = getelementptr inbounds i8, i8* %329, i64 %330
  store i8* %331, i8** %3, align 8
  %332 = load i8*, i8** %3, align 8
  %333 = call i8* @skip_white_space(i8* %332)
  store i8* %333, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %334

334:                                              ; preds = %342, %327
  %335 = load i8*, i8** %3, align 8
  %336 = load i32, i32* %4, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %335, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = call i64 @isalpha(i8 zeroext %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %353

342:                                              ; preds = %334
  %343 = load i8*, i8** %3, align 8
  %344 = load i32, i32* %4, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %343, i64 %345
  %347 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %348 = call i64 @PQmblen(i8* %346, i32 %347)
  %349 = load i32, i32* %4, align 4
  %350 = sext i32 %349 to i64
  %351 = add nsw i64 %350, %348
  %352 = trunc i64 %351 to i32
  store i32 %352, i32* %4, align 4
  br label %334

353:                                              ; preds = %334
  %354 = load i32, i32* %4, align 4
  %355 = icmp eq i32 %354, 8
  br i1 %355, label %356, label %361

356:                                              ; preds = %353
  %357 = load i8*, i8** %3, align 8
  %358 = call i64 @pg_strncasecmp(i8* %357, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 8)
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %356
  store i32 1, i32* %2, align 4
  br label %509

361:                                              ; preds = %356, %353
  %362 = load i32, i32* %4, align 4
  %363 = icmp eq i32 %362, 6
  br i1 %363, label %364, label %369

364:                                              ; preds = %361
  %365 = load i8*, i8** %3, align 8
  %366 = call i64 @pg_strncasecmp(i8* %365, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 6)
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %364
  store i32 1, i32* %2, align 4
  br label %509

369:                                              ; preds = %364, %361
  %370 = load i32, i32* %4, align 4
  %371 = icmp eq i32 %370, 10
  br i1 %371, label %372, label %377

372:                                              ; preds = %369
  %373 = load i8*, i8** %3, align 8
  %374 = call i64 @pg_strncasecmp(i8* %373, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 10)
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %372
  store i32 1, i32* %2, align 4
  br label %509

377:                                              ; preds = %372, %369
  %378 = load i32, i32* %4, align 4
  %379 = icmp eq i32 %378, 5
  br i1 %379, label %380, label %423

380:                                              ; preds = %377
  %381 = load i8*, i8** %3, align 8
  %382 = call i64 @pg_strncasecmp(i8* %381, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5)
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %388, label %384

384:                                              ; preds = %380
  %385 = load i8*, i8** %3, align 8
  %386 = call i64 @pg_strncasecmp(i8* %385, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 5)
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %388, label %423

388:                                              ; preds = %384, %380
  %389 = load i32, i32* %4, align 4
  %390 = load i8*, i8** %3, align 8
  %391 = sext i32 %389 to i64
  %392 = getelementptr inbounds i8, i8* %390, i64 %391
  store i8* %392, i8** %3, align 8
  %393 = load i8*, i8** %3, align 8
  %394 = call i8* @skip_white_space(i8* %393)
  store i8* %394, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %395

395:                                              ; preds = %403, %388
  %396 = load i8*, i8** %3, align 8
  %397 = load i32, i32* %4, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, i8* %396, i64 %398
  %400 = load i8, i8* %399, align 1
  %401 = call i64 @isalpha(i8 zeroext %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %414

403:                                              ; preds = %395
  %404 = load i8*, i8** %3, align 8
  %405 = load i32, i32* %4, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8, i8* %404, i64 %406
  %408 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %409 = call i64 @PQmblen(i8* %407, i32 %408)
  %410 = load i32, i32* %4, align 4
  %411 = sext i32 %410 to i64
  %412 = add nsw i64 %411, %409
  %413 = trunc i64 %412 to i32
  store i32 %413, i32* %4, align 4
  br label %395

414:                                              ; preds = %395
  %415 = load i32, i32* %4, align 4
  %416 = icmp eq i32 %415, 12
  br i1 %416, label %417, label %422

417:                                              ; preds = %414
  %418 = load i8*, i8** %3, align 8
  %419 = call i64 @pg_strncasecmp(i8* %418, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 12)
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %417
  store i32 1, i32* %2, align 4
  br label %509

422:                                              ; preds = %417, %414
  br label %423

423:                                              ; preds = %422, %384, %377
  %424 = load i32, i32* %4, align 4
  %425 = icmp eq i32 %424, 5
  br i1 %425, label %426, label %465

426:                                              ; preds = %423
  %427 = load i8*, i8** %3, align 8
  %428 = call i64 @pg_strncasecmp(i8* %427, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5)
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %430, label %465

430:                                              ; preds = %426
  %431 = load i32, i32* %4, align 4
  %432 = load i8*, i8** %3, align 8
  %433 = sext i32 %431 to i64
  %434 = getelementptr inbounds i8, i8* %432, i64 %433
  store i8* %434, i8** %3, align 8
  %435 = load i8*, i8** %3, align 8
  %436 = call i8* @skip_white_space(i8* %435)
  store i8* %436, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %437

437:                                              ; preds = %445, %430
  %438 = load i8*, i8** %3, align 8
  %439 = load i32, i32* %4, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8, i8* %438, i64 %440
  %442 = load i8, i8* %441, align 1
  %443 = call i64 @isalpha(i8 zeroext %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %456

445:                                              ; preds = %437
  %446 = load i8*, i8** %3, align 8
  %447 = load i32, i32* %4, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8, i8* %446, i64 %448
  %450 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %451 = call i64 @PQmblen(i8* %449, i32 %450)
  %452 = load i32, i32* %4, align 4
  %453 = sext i32 %452 to i64
  %454 = add nsw i64 %453, %451
  %455 = trunc i64 %454 to i32
  store i32 %455, i32* %4, align 4
  br label %437

456:                                              ; preds = %437
  %457 = load i32, i32* %4, align 4
  %458 = icmp eq i32 %457, 12
  br i1 %458, label %459, label %464

459:                                              ; preds = %456
  %460 = load i8*, i8** %3, align 8
  %461 = call i64 @pg_strncasecmp(i8* %460, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 12)
  %462 = icmp eq i64 %461, 0
  br i1 %462, label %463, label %464

463:                                              ; preds = %459
  store i32 1, i32* %2, align 4
  br label %509

464:                                              ; preds = %459, %456
  store i32 0, i32* %2, align 4
  br label %509

465:                                              ; preds = %426, %423
  store i32 0, i32* %2, align 4
  br label %509

466:                                              ; preds = %323, %320
  %467 = load i32, i32* %4, align 4
  %468 = icmp eq i32 %467, 7
  br i1 %468, label %469, label %508

469:                                              ; preds = %466
  %470 = load i8*, i8** %3, align 8
  %471 = call i64 @pg_strncasecmp(i8* %470, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 7)
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %473, label %508

473:                                              ; preds = %469
  %474 = load i32, i32* %4, align 4
  %475 = load i8*, i8** %3, align 8
  %476 = sext i32 %474 to i64
  %477 = getelementptr inbounds i8, i8* %475, i64 %476
  store i8* %477, i8** %3, align 8
  %478 = load i8*, i8** %3, align 8
  %479 = call i8* @skip_white_space(i8* %478)
  store i8* %479, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %480

480:                                              ; preds = %488, %473
  %481 = load i8*, i8** %3, align 8
  %482 = load i32, i32* %4, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i8, i8* %481, i64 %483
  %485 = load i8, i8* %484, align 1
  %486 = call i64 @isalpha(i8 zeroext %485)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %499

488:                                              ; preds = %480
  %489 = load i8*, i8** %3, align 8
  %490 = load i32, i32* %4, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i8, i8* %489, i64 %491
  %493 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %494 = call i64 @PQmblen(i8* %492, i32 %493)
  %495 = load i32, i32* %4, align 4
  %496 = sext i32 %495 to i64
  %497 = add nsw i64 %496, %494
  %498 = trunc i64 %497 to i32
  store i32 %498, i32* %4, align 4
  br label %480

499:                                              ; preds = %480
  %500 = load i32, i32* %4, align 4
  %501 = icmp eq i32 %500, 3
  br i1 %501, label %502, label %507

502:                                              ; preds = %499
  %503 = load i8*, i8** %3, align 8
  %504 = call i64 @pg_strncasecmp(i8* %503, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 3)
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %506, label %507

506:                                              ; preds = %502
  store i32 1, i32* %2, align 4
  br label %509

507:                                              ; preds = %502, %499
  store i32 0, i32* %2, align 4
  br label %509

508:                                              ; preds = %469, %466
  store i32 0, i32* %2, align 4
  br label %509

509:                                              ; preds = %508, %507, %506, %465, %464, %463, %421, %376, %368, %360, %312, %311, %270, %268, %193, %185, %144, %143, %123, %115, %114, %73, %65, %57, %49, %41, %33
  %510 = load i32, i32* %2, align 4
  ret i32 %510
}

declare dso_local i8* @skip_white_space(i8*) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i64 @PQmblen(i8*, i32) #1

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
