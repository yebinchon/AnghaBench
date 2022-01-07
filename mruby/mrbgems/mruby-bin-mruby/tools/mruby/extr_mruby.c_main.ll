; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-mruby/tools/mruby/extr_mruby.c_main.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-mruby/tools/mruby/extr_mruby.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct._args = type { i8*, i32, i8**, i32, i8**, i64, i32*, i64, i64, i32 }
%struct.TYPE_28__ = type { i8*, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: Invalid mrb_state, exiting mruby\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ARGV\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"$DEBUG\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"$0\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%s: Cannot open library file: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Syntax OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._args, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = call %struct.TYPE_29__* (...) @mrb_open()
  store %struct.TYPE_29__* %19, %struct.TYPE_29__** %6, align 8
  store i32 -1, i32* %7, align 4
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %21 = icmp eq %struct.TYPE_29__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %27, i32* %3, align 4
  br label %272

28:                                               ; preds = %2
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @parse_args(%struct.TYPE_29__* %29, i32 %30, i8** %31, %struct._args* %9)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %28
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %46 = call i32 @cleanup(%struct.TYPE_29__* %45, %struct._args* %9)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %272

48:                                               ; preds = %40, %36
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %50 = call i32 @mrb_gc_arena_save(%struct.TYPE_29__* %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %52 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mrb_ary_new_capa(%struct.TYPE_29__* %51, i32 %53)
  store i32 %54, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %80, %48
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @mrb_utf8_from_locale(i8* %66, i32 -1)
  store i8* %67, i8** %15, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %60
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @mrb_str_new_cstr(%struct.TYPE_29__* %73, i8* %74)
  %76 = call i32 @mrb_ary_push(%struct.TYPE_29__* %71, i32 %72, i32 %75)
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @mrb_utf8_free(i8* %77)
  br label %79

79:                                               ; preds = %70, %60
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %55

83:                                               ; preds = %55
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @mrb_define_global_const(%struct.TYPE_29__* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %89 = call i32 @mrb_intern_lit(%struct.TYPE_29__* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %90 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 9
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @mrb_bool_value(i32 %91)
  %93 = call i32 @mrb_gv_set(%struct.TYPE_29__* %87, i32 %89, i32 %92)
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %95 = call %struct.TYPE_28__* @mrbc_context_new(%struct.TYPE_29__* %94)
  store %struct.TYPE_28__* %95, %struct.TYPE_28__** %11, align 8
  %96 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %83
  %100 = load i8*, i8** @TRUE, align 8
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %99, %83
  %104 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i8*, i8** @TRUE, align 8
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %107, %103
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %113 = call i32 @mrb_intern_lit(%struct.TYPE_29__* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %113, i32* %13, align 4
  %114 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %137

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  br label %125

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %121
  %126 = phi i8* [ %123, %121 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %124 ]
  store i8* %126, i8** %16, align 8
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %129 = load i8*, i8** %16, align 8
  %130 = call i32 @mrbc_filename(%struct.TYPE_29__* %127, %struct.TYPE_28__* %128, i8* %129)
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %134 = load i8*, i8** %16, align 8
  %135 = call i32 @mrb_str_new_cstr(%struct.TYPE_29__* %133, i8* %134)
  %136 = call i32 @mrb_gv_set(%struct.TYPE_29__* %131, i32 %132, i32 %135)
  br label %146

137:                                              ; preds = %111
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %140 = call i32 @mrbc_filename(%struct.TYPE_29__* %138, %struct.TYPE_28__* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %144 = call i32 @mrb_str_new_lit(%struct.TYPE_29__* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %145 = call i32 @mrb_gv_set(%struct.TYPE_29__* %141, i32 %142, i32 %144)
  br label %146

146:                                              ; preds = %137, %125
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %201, %146
  %148 = load i32, i32* %8, align 4
  %149 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %204

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 4
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 7
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %164 = call i32* @fopen(i8* %158, i8* %163)
  store i32* %164, i32** %17, align 8
  %165 = load i32*, i32** %17, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %184

167:                                              ; preds = %152
  %168 = load i32, i32* @stderr, align 4
  %169 = load i8**, i8*** %5, align 8
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 4
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %168, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %170, i8* %176)
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %180 = call i32 @mrbc_context_free(%struct.TYPE_29__* %178, %struct.TYPE_28__* %179)
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %182 = call i32 @cleanup(%struct.TYPE_29__* %181, %struct._args* %9)
  %183 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %183, i32* %3, align 4
  br label %272

184:                                              ; preds = %152
  %185 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 7
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %190 = load i32*, i32** %17, align 8
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %192 = call i32 @mrb_load_irep_file_cxt(%struct.TYPE_29__* %189, i32* %190, %struct.TYPE_28__* %191)
  store i32 %192, i32* %12, align 4
  br label %198

193:                                              ; preds = %184
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %195 = load i32*, i32** %17, align 8
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %197 = call i32 @mrb_load_file_cxt(%struct.TYPE_29__* %194, i32* %195, %struct.TYPE_28__* %196)
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %193, %188
  %199 = load i32*, i32** %17, align 8
  %200 = call i32 @fclose(i32* %199)
  br label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %147

204:                                              ; preds = %147
  %205 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %210 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 6
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %213 = call i32 @mrb_load_irep_file_cxt(%struct.TYPE_29__* %209, i32* %211, %struct.TYPE_28__* %212)
  store i32 %213, i32* %12, align 4
  br label %240

214:                                              ; preds = %204
  %215 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 6
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %224

218:                                              ; preds = %214
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %220 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 6
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %223 = call i32 @mrb_load_file_cxt(%struct.TYPE_29__* %219, i32* %221, %struct.TYPE_28__* %222)
  store i32 %223, i32* %12, align 4
  br label %239

224:                                              ; preds = %214
  %225 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i8* @mrb_utf8_from_locale(i8* %226, i32 -1)
  store i8* %227, i8** %18, align 8
  %228 = load i8*, i8** %18, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %232, label %230

230:                                              ; preds = %224
  %231 = call i32 (...) @abort() #3
  unreachable

232:                                              ; preds = %224
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %234 = load i8*, i8** %18, align 8
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %236 = call i32 @mrb_load_string_cxt(%struct.TYPE_29__* %233, i8* %234, %struct.TYPE_28__* %235)
  store i32 %236, i32* %12, align 4
  %237 = load i8*, i8** %18, align 8
  %238 = call i32 @mrb_utf8_free(i8* %237)
  br label %239

239:                                              ; preds = %232, %218
  br label %240

240:                                              ; preds = %239, %208
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %242 = load i32, i32* %14, align 4
  %243 = call i32 @mrb_gc_arena_restore(%struct.TYPE_29__* %241, i32 %242)
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %246 = call i32 @mrbc_context_free(%struct.TYPE_29__* %244, %struct.TYPE_28__* %245)
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %240
  %252 = load i32, i32* %12, align 4
  %253 = call i32 @mrb_undef_p(i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %257 = call i32 @mrb_print_error(%struct.TYPE_29__* %256)
  br label %258

258:                                              ; preds = %255, %251
  %259 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %259, i32* %7, align 4
  br label %267

260:                                              ; preds = %240
  %261 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 5
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %260
  br label %267

267:                                              ; preds = %266, %258
  br label %268

268:                                              ; preds = %267
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %270 = call i32 @cleanup(%struct.TYPE_29__* %269, %struct._args* %9)
  %271 = load i32, i32* %7, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %268, %167, %44, %22
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local %struct.TYPE_29__* @mrb_open(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @parse_args(%struct.TYPE_29__*, i32, i8**, %struct._args*) #1

declare dso_local i32 @cleanup(%struct.TYPE_29__*, %struct._args*) #1

declare dso_local i32 @mrb_gc_arena_save(%struct.TYPE_29__*) #1

declare dso_local i32 @mrb_ary_new_capa(%struct.TYPE_29__*, i32) #1

declare dso_local i8* @mrb_utf8_from_locale(i8*, i32) #1

declare dso_local i32 @mrb_ary_push(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @mrb_str_new_cstr(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @mrb_utf8_free(i8*) #1

declare dso_local i32 @mrb_define_global_const(%struct.TYPE_29__*, i8*, i32) #1

declare dso_local i32 @mrb_gv_set(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @mrb_bool_value(i32) #1

declare dso_local %struct.TYPE_28__* @mrbc_context_new(%struct.TYPE_29__*) #1

declare dso_local i32 @mrbc_filename(%struct.TYPE_29__*, %struct.TYPE_28__*, i8*) #1

declare dso_local i32 @mrb_str_new_lit(%struct.TYPE_29__*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @mrbc_context_free(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @mrb_load_irep_file_cxt(%struct.TYPE_29__*, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @mrb_load_file_cxt(%struct.TYPE_29__*, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mrb_load_string_cxt(%struct.TYPE_29__*, i8*, %struct.TYPE_28__*) #1

declare dso_local i32 @mrb_gc_arena_restore(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @mrb_undef_p(i32) #1

declare dso_local i32 @mrb_print_error(%struct.TYPE_29__*) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
