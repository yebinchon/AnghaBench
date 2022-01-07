; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_executeMetaCommand.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_executeMetaCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, i32, i8**, i64, i32* }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i64 }

@sql_script = common dso_local global %struct.TYPE_12__* null, align 8
@META_COMMAND = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"client %d executing \\%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@META_SLEEP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"execution of meta-command failed\00", align 1
@CSTATE_ABORTED = common dso_local global i32 0, align 4
@CSTATE_SLEEP = common dso_local global i32 0, align 4
@META_SET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"evaluation of meta-command failed\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"assignment of meta-command failed\00", align 1
@META_IF = common dso_local global i64 0, align 8
@META_ELIF = common dso_local global i64 0, align 8
@CSTATE_END_COMMAND = common dso_local global i32 0, align 4
@META_ELSE = common dso_local global i64 0, align 8
@META_ENDIF = common dso_local global i64 0, align 8
@META_SETSHELL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"setshell\00", align 1
@META_SHELL = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @executeMetaCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @executeMetaCommand(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sql_script, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %25, i64 %28
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %6, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @META_COMMAND, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %33, %2
  %40 = phi i1 [ false, %2 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %7, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  store i8** %48, i8*** %8, align 8
  %49 = load i64, i64* @debug, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %39
  %52 = load i32, i32* @stderr, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i8**, i8*** %8, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %55, i8* %58)
  store i32 1, i32* %9, align 4
  br label %60

60:                                               ; preds = %72, %51
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32, i32* @stderr, align 4
  %66 = load i8**, i8*** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %60

75:                                               ; preds = %60
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %39
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @META_SLEEP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %78
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i8**, i8*** %8, align 8
  %88 = call i32 @evaluateSleep(%struct.TYPE_11__* %85, i32 %86, i8** %87, i32* %10)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = call i32 @commandFailed(%struct.TYPE_11__* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @CSTATE_ABORTED, align 4
  store i32 %93, i32* %3, align 4
  br label %316

94:                                               ; preds = %84
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @INSTR_TIME_SET_CURRENT_LAZY(i32 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @INSTR_TIME_GET_MICROSEC(i32 %99)
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 4
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* @CSTATE_SLEEP, align 4
  store i32 %106, i32* %3, align 4
  br label %316

107:                                              ; preds = %78
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @META_SET, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %107
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %11, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @evaluateExpr(%struct.TYPE_11__* %117, i32* %118, i32* %12)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %113
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = load i8**, i8*** %8, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @commandFailed(%struct.TYPE_11__* %122, i8* %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %127 = load i32, i32* @CSTATE_ABORTED, align 4
  store i32 %127, i32* %3, align 4
  br label %316

128:                                              ; preds = %113
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = load i8**, i8*** %8, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i8**, i8*** %8, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @putVariableValue(%struct.TYPE_11__* %129, i8* %132, i8* %135, i32* %12)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %128
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = call i32 @commandFailed(%struct.TYPE_11__* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %141 = load i32, i32* @CSTATE_ABORTED, align 4
  store i32 %141, i32* %3, align 4
  br label %316

142:                                              ; preds = %128
  br label %310

143:                                              ; preds = %107
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @META_IF, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %174

149:                                              ; preds = %143
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %13, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %154 = load i32*, i32** %13, align 8
  %155 = call i32 @evaluateExpr(%struct.TYPE_11__* %153, i32* %154, i32* %14)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %149
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %159 = load i8**, i8*** %8, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @commandFailed(%struct.TYPE_11__* %158, i8* %161, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %163 = load i32, i32* @CSTATE_ABORTED, align 4
  store i32 %163, i32* %3, align 4
  br label %316

164:                                              ; preds = %149
  %165 = call i32 @valueTruth(i32* %14)
  store i32 %165, i32* %15, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 128, i32 131
  %173 = call i32 @conditional_stack_push(i32 %168, i32 %172)
  br label %309

174:                                              ; preds = %143
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @META_ELIF, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %224

180:                                              ; preds = %174
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  store i32* %183, i32** %16, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @conditional_stack_peek(i32 %186)
  %188 = icmp eq i32 %187, 128
  br i1 %188, label %189, label %195

189:                                              ; preds = %180
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @conditional_stack_poke(i32 %192, i32 130)
  %194 = load i32, i32* @CSTATE_END_COMMAND, align 4
  store i32 %194, i32* %3, align 4
  br label %316

195:                                              ; preds = %180
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %197 = load i32*, i32** %16, align 8
  %198 = call i32 @evaluateExpr(%struct.TYPE_11__* %196, i32* %197, i32* %17)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %195
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %202 = load i8**, i8*** %8, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 0
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @commandFailed(%struct.TYPE_11__* %201, i8* %204, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %206 = load i32, i32* @CSTATE_ABORTED, align 4
  store i32 %206, i32* %3, align 4
  br label %316

207:                                              ; preds = %195
  %208 = call i32 @valueTruth(i32* %17)
  store i32 %208, i32* %18, align 4
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @conditional_stack_peek(i32 %211)
  %213 = icmp eq i32 %212, 131
  %214 = zext i1 %213 to i32
  %215 = call i32 @Assert(i32 %214)
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %18, align 4
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i32 128, i32 131
  %223 = call i32 @conditional_stack_poke(i32 %218, i32 %222)
  br label %308

224:                                              ; preds = %174
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @META_ELSE, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %244

230:                                              ; preds = %224
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @conditional_stack_peek(i32 %233)
  switch i32 %234, label %241 [
    i32 128, label %235
    i32 131, label %240
    i32 130, label %240
    i32 129, label %240
    i32 132, label %240
    i32 133, label %240
  ]

235:                                              ; preds = %230
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @conditional_stack_poke(i32 %238, i32 133)
  br label %243

240:                                              ; preds = %230, %230, %230, %230, %230
  br label %241

241:                                              ; preds = %230, %240
  %242 = call i32 @Assert(i32 0)
  br label %243

243:                                              ; preds = %241, %235
  br label %307

244:                                              ; preds = %224
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @META_ENDIF, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %263

250:                                              ; preds = %244
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @conditional_stack_empty(i32 %253)
  %255 = icmp ne i32 %254, 0
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i32
  %258 = call i32 @Assert(i32 %257)
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @conditional_stack_pop(i32 %261)
  br label %306

263:                                              ; preds = %244
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @META_SETSHELL, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %285

269:                                              ; preds = %263
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %271 = load i8**, i8*** %8, align 8
  %272 = getelementptr inbounds i8*, i8** %271, i64 1
  %273 = load i8*, i8** %272, align 8
  %274 = load i8**, i8*** %8, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i64 2
  %276 = load i32, i32* %7, align 4
  %277 = sub nsw i32 %276, 2
  %278 = call i32 @runShellCommand(%struct.TYPE_11__* %270, i8* %273, i8** %275, i32 %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %269
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %282 = call i32 @commandFailed(%struct.TYPE_11__* %281, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %283 = load i32, i32* @CSTATE_ABORTED, align 4
  store i32 %283, i32* %3, align 4
  br label %316

284:                                              ; preds = %269
  br label %305

285:                                              ; preds = %263
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @META_SHELL, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %304

291:                                              ; preds = %285
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %293 = load i8**, i8*** %8, align 8
  %294 = getelementptr inbounds i8*, i8** %293, i64 1
  %295 = load i32, i32* %7, align 4
  %296 = sub nsw i32 %295, 1
  %297 = call i32 @runShellCommand(%struct.TYPE_11__* %292, i8* null, i8** %294, i32 %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %303, label %299

299:                                              ; preds = %291
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %301 = call i32 @commandFailed(%struct.TYPE_11__* %300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %302 = load i32, i32* @CSTATE_ABORTED, align 4
  store i32 %302, i32* %3, align 4
  br label %316

303:                                              ; preds = %291
  br label %304

304:                                              ; preds = %303, %285
  br label %305

305:                                              ; preds = %304, %284
  br label %306

306:                                              ; preds = %305, %250
  br label %307

307:                                              ; preds = %306, %243
  br label %308

308:                                              ; preds = %307, %207
  br label %309

309:                                              ; preds = %308, %164
  br label %310

310:                                              ; preds = %309, %142
  br label %311

311:                                              ; preds = %310
  %312 = load i32*, i32** %5, align 8
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @INSTR_TIME_SET_ZERO(i32 %313)
  %315 = load i32, i32* @CSTATE_END_COMMAND, align 4
  store i32 %315, i32* %3, align 4
  br label %316

316:                                              ; preds = %311, %299, %280, %200, %189, %157, %138, %121, %94, %90
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @evaluateSleep(%struct.TYPE_11__*, i32, i8**, i32*) #1

declare dso_local i32 @commandFailed(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @INSTR_TIME_SET_CURRENT_LAZY(i32) #1

declare dso_local i64 @INSTR_TIME_GET_MICROSEC(i32) #1

declare dso_local i32 @evaluateExpr(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @putVariableValue(%struct.TYPE_11__*, i8*, i8*, i32*) #1

declare dso_local i32 @valueTruth(i32*) #1

declare dso_local i32 @conditional_stack_push(i32, i32) #1

declare dso_local i32 @conditional_stack_peek(i32) #1

declare dso_local i32 @conditional_stack_poke(i32, i32) #1

declare dso_local i32 @conditional_stack_empty(i32) #1

declare dso_local i32 @conditional_stack_pop(i32) #1

declare dso_local i32 @runShellCommand(%struct.TYPE_11__*, i8*, i8**, i32) #1

declare dso_local i32 @INSTR_TIME_SET_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
