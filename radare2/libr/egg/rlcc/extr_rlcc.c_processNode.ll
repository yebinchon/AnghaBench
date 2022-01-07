; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/rlcc/extr_rlcc.c_processNode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/rlcc/extr_rlcc.c_processNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i8*, %struct.TYPE_8__** }

@.str = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"TAG (%s) = (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"; CALL WITH %d ARGS\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"body|>\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"stmt|>\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"UNK %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c".equ %s,%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"; TODO: register syscall %s number %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"; TODO: global \0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"; UNKNOWN EXPRESISON: NAME = '%s' \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"TYPE = '%s' \00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"SIZE = '%s'\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"; %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @processNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @processNode(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8*], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = call i64 @isStatement(%struct.TYPE_8__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %59, %20
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %6, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %39, i64 %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %27
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %51)
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds [32 x i8*], [32 x i8*]* %5, i64 0, i64 %56
  store i8* %53, i8** %57, align 8
  br label %58

58:                                               ; preds = %49, %27
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %21

62:                                               ; preds = %21
  %63 = load i32, i32* %4, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %276

65:                                               ; preds = %1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = call i64 @isProcedure(%struct.TYPE_8__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %152

69:                                               ; preds = %65
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %72, i64 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %148, %69
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %151

85:                                               ; preds = %79
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %88, i64 %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %147, label %97

97:                                               ; preds = %85
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %100, i64 %102
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  store %struct.TYPE_8__* %104, %struct.TYPE_8__** %2, align 8
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %143, %97
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %146

111:                                              ; preds = %105
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %114, i64 %116
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %111
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %126, i64 %128
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  call void @processNode(%struct.TYPE_8__* %130)
  br label %142

131:                                              ; preds = %111
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %134, i64 %136
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @eprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %131, %123
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %105

146:                                              ; preds = %105
  br label %151

147:                                              ; preds = %85
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %79

151:                                              ; preds = %146, %79
  br label %275

152:                                              ; preds = %65
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %154 = call i64 @isSigdef(%struct.TYPE_8__* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %215

156:                                              ; preds = %152
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %159, 4
  br i1 %160, label %161, label %214

161:                                              ; preds = %156
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %164, i64 0
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  store i8* %168, i8** %11, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %171, i64 2
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  store i8* %175, i8** %12, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %178, i64 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %13, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = call i64 @strcmp(i8* %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %161
  %187 = load i8*, i8** %11, align 8
  %188 = load i8*, i8** %13, align 8
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %187, i8* %188)
  br label %213

190:                                              ; preds = %161
  %191 = load i8*, i8** %12, align 8
  %192 = call i64 @strcmp(i8* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i8*, i8** %11, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* %195, i8* %196)
  br label %212

198:                                              ; preds = %190
  %199 = load i8*, i8** %12, align 8
  %200 = call i64 @strcmp(i8* %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %198
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %211

204:                                              ; preds = %198
  %205 = load i8*, i8** %11, align 8
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i8* %205)
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* %207)
  %209 = load i8*, i8** %13, align 8
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* %209)
  br label %211

211:                                              ; preds = %204, %202
  br label %212

212:                                              ; preds = %211, %194
  br label %213

213:                                              ; preds = %212, %186
  br label %214

214:                                              ; preds = %213, %156
  br label %274

215:                                              ; preds = %152
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %217 = call i64 @isComment(%struct.TYPE_8__* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %262

219:                                              ; preds = %215
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 2
  %224 = call i8* @strdup(i8* %223)
  store i8* %224, i8** %14, align 8
  %225 = load i8*, i8** %14, align 8
  %226 = call i32 @strlen(i8* %225)
  store i32 %226, i32* %15, align 4
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 2
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 1
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 42
  br i1 %233, label %234, label %240

234:                                              ; preds = %219
  %235 = load i8*, i8** %14, align 8
  %236 = load i32, i32* %15, align 4
  %237 = sub nsw i32 %236, 2
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %235, i64 %238
  store i8 0, i8* %239, align 1
  br label %240

240:                                              ; preds = %234, %219
  br label %241

241:                                              ; preds = %258, %240
  %242 = load i8*, i8** %14, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %259

244:                                              ; preds = %241
  %245 = load i8*, i8** %14, align 8
  %246 = call i8* @strchr(i8* %245, i8 signext 10)
  store i8* %246, i8** %16, align 8
  %247 = load i8*, i8** %16, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = load i8*, i8** %16, align 8
  store i8 0, i8* %250, align 1
  %251 = load i8*, i8** %14, align 8
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %251)
  %253 = load i8*, i8** %16, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 1
  store i8* %254, i8** %14, align 8
  br label %258

255:                                              ; preds = %244
  %256 = load i8*, i8** %14, align 8
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %256)
  store i8* null, i8** %14, align 8
  br label %258

258:                                              ; preds = %255, %249
  br label %241

259:                                              ; preds = %241
  %260 = load i8*, i8** %14, align 8
  %261 = call i32 @free(i8* %260)
  br label %273

262:                                              ; preds = %215
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %264 = call i64 @isInlineAssembly(%struct.TYPE_8__* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %262
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 2
  %269 = load i8*, i8** %268, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 1
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %270)
  br label %272

272:                                              ; preds = %266, %262
  br label %273

273:                                              ; preds = %272, %259
  br label %274

274:                                              ; preds = %273, %214
  br label %275

275:                                              ; preds = %274, %151
  br label %276

276:                                              ; preds = %275, %62
  ret void
}

declare dso_local i64 @isStatement(%struct.TYPE_8__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isProcedure(%struct.TYPE_8__*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

declare dso_local i64 @isSigdef(%struct.TYPE_8__*) #1

declare dso_local i64 @isComment(%struct.TYPE_8__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @isInlineAssembly(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
