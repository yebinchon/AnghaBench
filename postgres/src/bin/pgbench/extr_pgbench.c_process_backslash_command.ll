; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_process_backslash_command.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_process_backslash_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8**, i64, i8*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@MAX_ARGS = common dso_local global i32 0, align 4
@META_COMMAND = common dso_local global i32 0, align 4
@META_SET = common dso_local global i64 0, align 8
@META_IF = common dso_local global i64 0, align 8
@META_ELIF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"missing argument\00", align 1
@expr_parse_result = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@META_SLEEP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"unrecognized time unit, must be us, ms or s\00", align 1
@META_SETSHELL = common dso_local global i64 0, align 8
@META_SHELL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"missing command\00", align 1
@META_ELSE = common dso_local global i64 0, align 8
@META_ENDIF = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"unexpected argument\00", align 1
@META_GSET = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"invalid command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32, i8*)* @process_backslash_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @process_backslash_command(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %17 = load i32, i32* @MAX_ARGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = call i32 @initPQExpBuffer(%struct.TYPE_7__* %7)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @expr_scanner_offset(i32 %22)
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @expr_scanner_get_lineno(i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @expr_lex_one_word(i32 %28, %struct.TYPE_7__* %7, i32* %8)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %2
  %32 = call i32 @termPQExpBuffer(%struct.TYPE_7__* %7)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  store i32 1, i32* %14, align 4
  br label %480

33:                                               ; preds = %2
  %34 = call i64 @pg_malloc0(i32 48)
  %35 = inttoptr i64 %34 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %6, align 8
  %36 = load i32, i32* @META_COMMAND, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 5
  %43 = call i32 @initSimpleStats(i32* %42)
  store i32 0, i32* %13, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %20, i64 %46
  store i32 %44, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @pg_strdup(i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  store i8* %50, i8** %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @getMetaCommand(i8* %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @META_SET, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %87, label %75

75:                                               ; preds = %33
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @META_IF, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @META_ELIF, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %159

87:                                               ; preds = %81, %75, %33
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @META_SET, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %128

93:                                               ; preds = %87
  %94 = load i32, i32* %4, align 4
  %95 = call i64 @expr_lex_one_word(i32 %94, %struct.TYPE_7__* %7, i32* %8)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @syntax_error(i8* %98, i32 %99, i8* %102, i8* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* null, i32 -1)
  br label %109

109:                                              ; preds = %97, %93
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %20, i64 %112
  store i32 %110, i32* %113, align 4
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @pg_strdup(i32 %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8*, i8** %119, i64 %122
  store i8* %116, i8** %123, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %109, %87
  %129 = load i32, i32* %4, align 4
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i8**, i8*** %134, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @expr_scanner_init(i32 %129, i8* %130, i32 %131, i32 %132, i8* %137)
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i64 @expr_yyparse(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %128
  %143 = call i32 @exit(i32 1) #4
  unreachable

144:                                              ; preds = %128
  %145 = load i32, i32* @expr_parse_result, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @expr_scanner_offset(i32 %150)
  %152 = call i8* @expr_scanner_get_substring(i32 %148, i32 %149, i32 %151, i32 1)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @expr_scanner_finish(i32 %155)
  %157 = call i32 @termPQExpBuffer(%struct.TYPE_7__* %7)
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %158, %struct.TYPE_8__** %3, align 8
  store i32 1, i32* %14, align 4
  br label %480

159:                                              ; preds = %81
  br label %160

160:                                              ; preds = %180, %159
  %161 = load i32, i32* %4, align 4
  %162 = call i64 @expr_lex_one_word(i32 %161, %struct.TYPE_7__* %7, i32* %8)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %199

164:                                              ; preds = %160
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @MAX_ARGS, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = load i8*, i8** %5, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i8**, i8*** %175, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @syntax_error(i8* %169, i32 %170, i8* %173, i8* %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 -1)
  br label %180

180:                                              ; preds = %168, %164
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %20, i64 %183
  store i32 %181, i32* %184, align 4
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @pg_strdup(i32 %186)
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i8**, i8*** %189, align 8
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %13, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8*, i8** %190, i64 %193
  store i8* %187, i8** %194, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  br label %160

199:                                              ; preds = %160
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %4, align 4
  %203 = call i32 @expr_scanner_offset(i32 %202)
  %204 = call i8* @expr_scanner_get_substring(i32 %200, i32 %201, i32 %203, i32 1)
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 3
  store i8* %204, i8** %206, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @META_SLEEP, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %359

212:                                              ; preds = %199
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %215, 2
  br i1 %216, label %217, label %229

217:                                              ; preds = %212
  %218 = load i8*, i8** %5, align 8
  %219 = load i32, i32* %12, align 4
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 3
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 1
  %225 = load i8**, i8*** %224, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 0
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @syntax_error(i8* %218, i32 %219, i8* %222, i8* %227, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* null, i32 -1)
  br label %229

229:                                              ; preds = %217, %212
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp sgt i32 %232, 3
  br i1 %233, label %234, label %250

234:                                              ; preds = %229
  %235 = load i8*, i8** %5, align 8
  %236 = load i32, i32* %12, align 4
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 3
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  %242 = load i8**, i8*** %241, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 0
  %244 = load i8*, i8** %243, align 8
  %245 = getelementptr inbounds i32, i32* %20, i64 3
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %11, align 4
  %248 = sub nsw i32 %246, %247
  %249 = call i32 @syntax_error(i8* %235, i32 %236, i8* %239, i8* %244, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 %248)
  br label %250

250:                                              ; preds = %234, %229
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %253, 2
  br i1 %254, label %255, label %307

255:                                              ; preds = %250
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  %258 = load i8**, i8*** %257, align 8
  %259 = getelementptr inbounds i8*, i8** %258, i64 1
  %260 = load i8*, i8** %259, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 0
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp ne i32 %263, 58
  br i1 %264, label %265, label %307

265:                                              ; preds = %255
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 1
  %268 = load i8**, i8*** %267, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i64 1
  %270 = load i8*, i8** %269, align 8
  store i8* %270, i8** %16, align 8
  br label %271

271:                                              ; preds = %276, %265
  %272 = load i8*, i8** %16, align 8
  %273 = load i8, i8* %272, align 1
  %274 = call i64 @isdigit(i8 zeroext %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %271
  %277 = load i8*, i8** %16, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %16, align 8
  br label %271

279:                                              ; preds = %271
  %280 = load i8*, i8** %16, align 8
  %281 = load i8, i8* %280, align 1
  %282 = icmp ne i8 %281, 0
  br i1 %282, label %283, label %306

283:                                              ; preds = %279
  %284 = load i8*, i8** %16, align 8
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 1
  %287 = load i8**, i8*** %286, align 8
  %288 = getelementptr inbounds i8*, i8** %287, i64 2
  store i8* %284, i8** %288, align 8
  %289 = getelementptr inbounds i32, i32* %20, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = load i8*, i8** %16, align 8
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 1
  %295 = load i8**, i8*** %294, align 8
  %296 = getelementptr inbounds i8*, i8** %295, i64 1
  %297 = load i8*, i8** %296, align 8
  %298 = ptrtoint i8* %292 to i64
  %299 = ptrtoint i8* %297 to i64
  %300 = sub i64 %298, %299
  %301 = add nsw i64 %291, %300
  %302 = trunc i64 %301 to i32
  %303 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %302, i32* %303, align 8
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 0
  store i32 3, i32* %305, align 8
  br label %306

306:                                              ; preds = %283, %279
  br label %307

307:                                              ; preds = %306, %255, %250
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = icmp eq i32 %310, 3
  br i1 %311, label %312, label %358

312:                                              ; preds = %307
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 1
  %315 = load i8**, i8*** %314, align 8
  %316 = getelementptr inbounds i8*, i8** %315, i64 2
  %317 = load i8*, i8** %316, align 8
  %318 = call i64 @pg_strcasecmp(i8* %317, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %357

320:                                              ; preds = %312
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 1
  %323 = load i8**, i8*** %322, align 8
  %324 = getelementptr inbounds i8*, i8** %323, i64 2
  %325 = load i8*, i8** %324, align 8
  %326 = call i64 @pg_strcasecmp(i8* %325, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %357

328:                                              ; preds = %320
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 1
  %331 = load i8**, i8*** %330, align 8
  %332 = getelementptr inbounds i8*, i8** %331, i64 2
  %333 = load i8*, i8** %332, align 8
  %334 = call i64 @pg_strcasecmp(i8* %333, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %357

336:                                              ; preds = %328
  %337 = load i8*, i8** %5, align 8
  %338 = load i32, i32* %12, align 4
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 3
  %341 = load i8*, i8** %340, align 8
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 1
  %344 = load i8**, i8*** %343, align 8
  %345 = getelementptr inbounds i8*, i8** %344, i64 0
  %346 = load i8*, i8** %345, align 8
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 1
  %349 = load i8**, i8*** %348, align 8
  %350 = getelementptr inbounds i8*, i8** %349, i64 2
  %351 = load i8*, i8** %350, align 8
  %352 = getelementptr inbounds i32, i32* %20, i64 2
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* %11, align 4
  %355 = sub nsw i32 %353, %354
  %356 = call i32 @syntax_error(i8* %337, i32 %338, i8* %341, i8* %346, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %351, i32 %355)
  br label %357

357:                                              ; preds = %336, %328, %320, %312
  br label %358

358:                                              ; preds = %357, %307
  br label %477

359:                                              ; preds = %199
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @META_SETSHELL, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %383

365:                                              ; preds = %359
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp slt i32 %368, 3
  br i1 %369, label %370, label %382

370:                                              ; preds = %365
  %371 = load i8*, i8** %5, align 8
  %372 = load i32, i32* %12, align 4
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 3
  %375 = load i8*, i8** %374, align 8
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 1
  %378 = load i8**, i8*** %377, align 8
  %379 = getelementptr inbounds i8*, i8** %378, i64 0
  %380 = load i8*, i8** %379, align 8
  %381 = call i32 @syntax_error(i8* %371, i32 %372, i8* %375, i8* %380, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* null, i32 -1)
  br label %382

382:                                              ; preds = %370, %365
  br label %476

383:                                              ; preds = %359
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @META_SHELL, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %407

389:                                              ; preds = %383
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp slt i32 %392, 2
  br i1 %393, label %394, label %406

394:                                              ; preds = %389
  %395 = load i8*, i8** %5, align 8
  %396 = load i32, i32* %12, align 4
  %397 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 3
  %399 = load i8*, i8** %398, align 8
  %400 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 1
  %402 = load i8**, i8*** %401, align 8
  %403 = getelementptr inbounds i8*, i8** %402, i64 0
  %404 = load i8*, i8** %403, align 8
  %405 = call i32 @syntax_error(i8* %395, i32 %396, i8* %399, i8* %404, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* null, i32 -1)
  br label %406

406:                                              ; preds = %394, %389
  br label %475

407:                                              ; preds = %383
  %408 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @META_ELSE, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %419, label %413

413:                                              ; preds = %407
  %414 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i32 0, i32 2
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @META_ENDIF, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %419, label %437

419:                                              ; preds = %413, %407
  %420 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = icmp ne i32 %422, 1
  br i1 %423, label %424, label %436

424:                                              ; preds = %419
  %425 = load i8*, i8** %5, align 8
  %426 = load i32, i32* %12, align 4
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 3
  %429 = load i8*, i8** %428, align 8
  %430 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i32 0, i32 1
  %432 = load i8**, i8*** %431, align 8
  %433 = getelementptr inbounds i8*, i8** %432, i64 0
  %434 = load i8*, i8** %433, align 8
  %435 = call i32 @syntax_error(i8* %425, i32 %426, i8* %429, i8* %434, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* null, i32 -1)
  br label %436

436:                                              ; preds = %424, %419
  br label %474

437:                                              ; preds = %413
  %438 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i32 0, i32 2
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* @META_GSET, align 8
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %443, label %461

443:                                              ; preds = %437
  %444 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = icmp sgt i32 %446, 2
  br i1 %447, label %448, label %460

448:                                              ; preds = %443
  %449 = load i8*, i8** %5, align 8
  %450 = load i32, i32* %12, align 4
  %451 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i32 0, i32 3
  %453 = load i8*, i8** %452, align 8
  %454 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %455 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %454, i32 0, i32 1
  %456 = load i8**, i8*** %455, align 8
  %457 = getelementptr inbounds i8*, i8** %456, i64 0
  %458 = load i8*, i8** %457, align 8
  %459 = call i32 @syntax_error(i8* %449, i32 %450, i8* %453, i8* %458, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 -1)
  br label %460

460:                                              ; preds = %448, %443
  br label %473

461:                                              ; preds = %437
  %462 = load i8*, i8** %5, align 8
  %463 = load i32, i32* %12, align 4
  %464 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i32 0, i32 3
  %466 = load i8*, i8** %465, align 8
  %467 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %467, i32 0, i32 1
  %469 = load i8**, i8*** %468, align 8
  %470 = getelementptr inbounds i8*, i8** %469, i64 0
  %471 = load i8*, i8** %470, align 8
  %472 = call i32 @syntax_error(i8* %462, i32 %463, i8* %466, i8* %471, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* null, i32 -1)
  br label %473

473:                                              ; preds = %461, %460
  br label %474

474:                                              ; preds = %473, %436
  br label %475

475:                                              ; preds = %474, %406
  br label %476

476:                                              ; preds = %475, %382
  br label %477

477:                                              ; preds = %476, %358
  %478 = call i32 @termPQExpBuffer(%struct.TYPE_7__* %7)
  %479 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %479, %struct.TYPE_8__** %3, align 8
  store i32 1, i32* %14, align 4
  br label %480

480:                                              ; preds = %477, %144, %31
  %481 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %481)
  %482 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %482
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_7__*) #2

declare dso_local i32 @expr_scanner_offset(i32) #2

declare dso_local i32 @expr_scanner_get_lineno(i32, i32) #2

declare dso_local i64 @expr_lex_one_word(i32, %struct.TYPE_7__*, i32*) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_7__*) #2

declare dso_local i64 @pg_malloc0(i32) #2

declare dso_local i32 @initSimpleStats(i32*) #2

declare dso_local i8* @pg_strdup(i32) #2

declare dso_local i64 @getMetaCommand(i8*) #2

declare dso_local i32 @syntax_error(i8*, i32, i8*, i8*, i8*, i8*, i32) #2

declare dso_local i32 @expr_scanner_init(i32, i8*, i32, i32, i8*) #2

declare dso_local i64 @expr_yyparse(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i8* @expr_scanner_get_substring(i32, i32, i32, i32) #2

declare dso_local i32 @expr_scanner_finish(i32) #2

declare dso_local i64 @isdigit(i8 zeroext) #2

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
