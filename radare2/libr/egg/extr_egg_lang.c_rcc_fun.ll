; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/extr_egg_lang.c_rcc_fun.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/extr_egg_lang.c_rcc_fun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i8*, i32)*, i32 (%struct.TYPE_11__*, i8*, i64, i32)* }

@CTX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"rcc_fun %d (%s)\00", align 1
@NORMAL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"fastcall\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@SYSCALL = common dso_local global i8* null, align 8
@INLINE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@INCLUDE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@ALIAS = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@DATA = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"naked\00", align 1
@NAKED = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"\0A.%s %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"LABEL %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"\0A%s:\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@GOTO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i8*)* @rcc_fun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcc_fun(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @skipspaces(i8* %11)
  store i8* %12, i8** %4, align 8
  %13 = load i64, i64* @CTX, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 61)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  store i8 0, i8* %21, align 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i8*, i8** %4, align 8
  %29 = call i8* @skipspaces(i8* %28)
  %30 = call i8* @strdup(i8* %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @skipspaces(i8* %34)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %20
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i8* @skipspaces(i8* %41)
  %43 = call i32 @rcc_set_callname(%struct.TYPE_11__* %40, i8* %42)
  br label %44

44:                                               ; preds = %39, %20
  br label %64

45:                                               ; preds = %15
  %46 = load i8*, i8** %4, align 8
  %47 = call i8* @skipspaces(i8* %46)
  store i8* %47, i8** %4, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i8* @skipspaces(i8* %49)
  %51 = call i32 @rcc_set_callname(%struct.TYPE_11__* %48, i8* %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_11__*, i8*, i64, i32)*, i32 (%struct.TYPE_11__*, i8*, i64, i32)** %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = load i64, i64* @CTX, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %56(%struct.TYPE_11__* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %58, i32 %62)
  br label %64

64:                                               ; preds = %45, %44
  br label %316

65:                                               ; preds = %2
  %66 = load i8*, i8** %4, align 8
  %67 = call i8* @strchr(i8* %66, i8 signext 64)
  store i8* %67, i8** %5, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %288

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %5, align 8
  store i8 0, i8* %71, align 1
  %73 = load i8*, i8** @NORMAL, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  store i8* %73, i8** %76, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i64 @strstr(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %70
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load i8*, i8** %4, align 8
  %87 = call i8* @skipspaces(i8* %86)
  %88 = call i8* @strdup(i8* %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 7
  store i64 0, i64* %94, align 8
  br label %287

95:                                               ; preds = %70
  %96 = load i8*, i8** %5, align 8
  %97 = call i64 @strstr(i8* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %286

100:                                              ; preds = %95
  %101 = load i8*, i8** %5, align 8
  %102 = call i64 @strstr(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %153

104:                                              ; preds = %100
  %105 = load i8*, i8** %4, align 8
  %106 = load i8, i8* %105, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = load i8*, i8** @SYSCALL, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 5
  store i8* %109, i8** %112, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = call i8* @skipspaces(i8* %113)
  %115 = call i8* @strdup(i8* %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  store i8* %115, i8** %118, align 8
  br label %152

119:                                              ; preds = %104
  %120 = load i8*, i8** @INLINE, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 5
  store i8* %120, i8** %123, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @free(i8* %127)
  %129 = call i8* @malloc(i32 4096)
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  store i8* %129, i8** %132, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  store i8* %136, i8** %139, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @R_FREE(i8* %143)
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 6
  store i64 0, i64* %147, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  store i8 0, i8* %151, align 1
  br label %152

152:                                              ; preds = %119, %108
  br label %285

153:                                              ; preds = %100
  %154 = load i8*, i8** %5, align 8
  %155 = call i64 @strstr(i8* %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %153
  %158 = load i8*, i8** @INCLUDE, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 5
  store i8* %158, i8** %161, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @free(i8* %165)
  %167 = load i8*, i8** %4, align 8
  %168 = call i8* @skipspaces(i8* %167)
  %169 = call i8* @strdup(i8* %168)
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 4
  store i8* %169, i8** %172, align 8
  br label %284

173:                                              ; preds = %153
  %174 = load i8*, i8** %5, align 8
  %175 = call i64 @strstr(i8* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %206

177:                                              ; preds = %173
  %178 = load i8*, i8** @ALIAS, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 5
  store i8* %178, i8** %181, align 8
  %182 = load i8*, i8** %4, align 8
  %183 = call i8* @skipspaces(i8* %182)
  %184 = call i8* @strdup(i8* %183)
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  store i8* %184, i8** %187, align 8
  store i8* %184, i8** %6, align 8
  br label %188

188:                                              ; preds = %201, %177
  %189 = load i8*, i8** %6, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load i8*, i8** %6, align 8
  %195 = load i8, i8* %194, align 1
  %196 = call i32 @is_space(i8 signext %195)
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  br label %199

199:                                              ; preds = %193, %188
  %200 = phi i1 [ false, %188 ], [ %198, %193 ]
  br i1 %200, label %201, label %204

201:                                              ; preds = %199
  %202 = load i8*, i8** %6, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %6, align 8
  br label %188

204:                                              ; preds = %199
  %205 = load i8*, i8** %6, align 8
  store i8 0, i8* %205, align 1
  br label %283

206:                                              ; preds = %173
  %207 = load i8*, i8** %5, align 8
  %208 = call i64 @strstr(i8* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %228

210:                                              ; preds = %206
  %211 = load i8*, i8** @DATA, align 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 5
  store i8* %211, i8** %214, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 6
  store i64 0, i64* %217, align 8
  %218 = load i8*, i8** %4, align 8
  %219 = call i8* @skipspaces(i8* %218)
  %220 = call i8* @strdup(i8* %219)
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  store i8* %220, i8** %223, align 8
  %224 = call i8* @malloc(i32 4096)
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 3
  store i8* %224, i8** %227, align 8
  br label %282

228:                                              ; preds = %206
  %229 = load i8*, i8** %5, align 8
  %230 = call i64 @strstr(i8* %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %228
  %233 = load i8*, i8** @NAKED, align 8
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 5
  store i8* %233, i8** %236, align 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %238 = load i8*, i8** %4, align 8
  %239 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @r_egg_printf(%struct.TYPE_11__* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %238)
  br label %281

240:                                              ; preds = %228
  %241 = load i8*, i8** %5, align 8
  %242 = call i64 @strstr(i8* %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %267

244:                                              ; preds = %240
  %245 = load i8*, i8** @INLINE, align 8
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 5
  store i8* %245, i8** %248, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @free(i8* %252)
  %254 = load i8*, i8** %4, align 8
  %255 = call i8* @skipspaces(i8* %254)
  %256 = call i8* @strdup(i8* %255)
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  store i8* %256, i8** %259, align 8
  %260 = call i8* @malloc(i32 4096)
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 3
  store i8* %260, i8** %263, align 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 6
  store i64 0, i64* %266, align 8
  br label %280

267:                                              ; preds = %240
  %268 = load i8*, i8** %5, align 8
  %269 = load i8, i8* %268, align 1
  %270 = icmp ne i8 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %267
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %273 = load i8*, i8** %5, align 8
  %274 = load i8*, i8** %4, align 8
  %275 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @r_egg_printf(%struct.TYPE_11__* %272, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %273, i8* %274)
  br label %276

276:                                              ; preds = %271, %267
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %278 = load i8*, i8** %4, align 8
  %279 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @r_egg_printf(%struct.TYPE_11__* %277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %278)
  br label %280

280:                                              ; preds = %276, %244
  br label %281

281:                                              ; preds = %280, %232
  br label %282

282:                                              ; preds = %281, %210
  br label %283

283:                                              ; preds = %282, %204
  br label %284

284:                                              ; preds = %283, %157
  br label %285

285:                                              ; preds = %284, %152
  br label %286

286:                                              ; preds = %285, %99
  br label %287

287:                                              ; preds = %286, %80
  br label %315

288:                                              ; preds = %65
  %289 = load i64, i64* @CTX, align 8
  %290 = icmp sgt i64 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %288
  %292 = load i64, i64* @CTX, align 8
  %293 = call i32 @eprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 %292)
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %295 = load i8*, i8** %4, align 8
  %296 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @r_egg_printf(%struct.TYPE_11__* %294, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %295)
  br label %314

297:                                              ; preds = %288
  %298 = load i8*, i8** %4, align 8
  %299 = call i32 @strcmp(i8* %298, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %306, label %301

301:                                              ; preds = %297
  %302 = load i8*, i8** @GOTO, align 8
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 5
  store i8* %302, i8** %305, align 8
  br label %313

306:                                              ; preds = %297
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  %309 = load i32 (%struct.TYPE_11__*, i8*, i32)*, i32 (%struct.TYPE_11__*, i8*, i32)** %308, align 8
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %311 = load i8*, i8** %4, align 8
  %312 = call i32 %309(%struct.TYPE_11__* %310, i8* %311, i32 0)
  br label %313

313:                                              ; preds = %306, %301
  br label %314

314:                                              ; preds = %313, %291
  br label %315

315:                                              ; preds = %314, %287
  br label %316

316:                                              ; preds = %315, %64
  ret void
}

declare dso_local i8* @skipspaces(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @rcc_set_callname(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @R_FREE(i8*) #1

declare dso_local i32 @is_space(i8 signext) #1

declare dso_local i32 @r_egg_printf(%struct.TYPE_11__*, i8*, i8*, ...) #1

declare dso_local i32 @eprintf(i8*, i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
