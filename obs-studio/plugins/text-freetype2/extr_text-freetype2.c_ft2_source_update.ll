; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-freetype2.c_ft2_source_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-freetype2.c_ft2_source_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft2_source = type { i32, i32, i32*, i32, i32, i64, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i32*, i32, i64, i32*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"face\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"drop_shadow\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"outline\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"word_wrap\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"color1\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"color2\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"custom_width\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"from_file\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"log_mode\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"log_lines\00", align 1
@ft2_lib = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"text_default.effect\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"FT2-text: Failed to load font %s\00", align 1
@FT_ENCODING_UNICODE = common dso_local global i32 0, align 4
@texbuf_w = common dso_local global i32 0, align 4
@texbuf_h = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"text_file\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"FT2-text: Failed to open %s for reading\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @ft2_source_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft2_source_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ft2_source*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = bitcast i8* %23 to %struct.ft2_source*
  store %struct.ft2_source* %24, %struct.ft2_source** %5, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @obs_data_get_obj(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @obs_data_get_string(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %11, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i8* @obs_data_get_string(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %30, i8** %12, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @obs_data_get_int(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i64 %32, i64* %13, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @obs_data_get_int(i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %14, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  br label %428

39:                                               ; preds = %2
  %40 = load i32*, i32** %4, align 8
  %41 = call i8* @obs_data_get_bool(i32* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %42 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %43 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %42, i32 0, i32 19
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @obs_data_get_bool(i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %46 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %47 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %46, i32 0, i32 18
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i8* @obs_data_get_bool(i32* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @obs_data_get_int(i32* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i64 @obs_data_get_int(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @obs_data_get_int(i32* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sge i32 %62, 100
  br i1 %63, label %64, label %75

64:                                               ; preds = %39
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %67 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %73 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  store i32 1, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %64
  br label %84

75:                                               ; preds = %39
  %76 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %77 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 100
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 1, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %75
  %82 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %83 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %87 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %93 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  store i32 1, i32* %7, align 4
  br label %94

94:                                               ; preds = %90, %84
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %98 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %96, %101
  br i1 %102, label %112, label %103

103:                                              ; preds = %94
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %107 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %105, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %103, %94
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %116 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 %114, i32* %118, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %122 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %120, i32* %124, align 4
  store i32 1, i32* %7, align 4
  br label %125

125:                                              ; preds = %112, %103
  %126 = load i32*, i32** %4, align 8
  %127 = call i8* @obs_data_get_bool(i32* %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %15, align 4
  %129 = load i32*, i32** %4, align 8
  %130 = call i8* @obs_data_get_bool(i32* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %131 = ptrtoint i8* %130 to i32
  store i32 %131, i32* %16, align 4
  %132 = load i32*, i32** %4, align 8
  %133 = call i64 @obs_data_get_int(i32* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %17, align 4
  %135 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %136 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %17, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %125
  %141 = load i32, i32* %17, align 4
  %142 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %143 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  store i32 1, i32* %7, align 4
  br label %144

144:                                              ; preds = %140, %125
  %145 = load i32, i32* %16, align 4
  %146 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %147 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 4
  %148 = load i32*, i32** @ft2_lib, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %425

151:                                              ; preds = %144
  %152 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %153 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %152, i32 0, i32 17
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %176

156:                                              ; preds = %151
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %157 = call i8* @obs_module_file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  store i8* %157, i8** %18, align 8
  %158 = load i8*, i8** %18, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = call i32 (...) @obs_enter_graphics()
  %162 = load i8*, i8** %18, align 8
  %163 = call i32* @gs_effect_create_from_file(i8* %162, i8** %19)
  %164 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %165 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %164, i32 0, i32 17
  store i32* %163, i32** %165, align 8
  %166 = call i32 (...) @obs_leave_graphics()
  %167 = load i8*, i8** %18, align 8
  %168 = call i32 @bfree(i8* %167)
  %169 = load i8*, i8** %19, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %160
  %172 = load i8*, i8** %19, align 8
  %173 = call i32 @bfree(i8* %172)
  br label %174

174:                                              ; preds = %171, %160
  br label %175

175:                                              ; preds = %174, %156
  br label %176

176:                                              ; preds = %175, %151
  %177 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %178 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %13, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %188, label %182

182:                                              ; preds = %176
  %183 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %184 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %182, %176
  store i32 1, i32* %7, align 4
  br label %189

189:                                              ; preds = %188, %182
  %190 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %191 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %190, i32 0, i32 7
  store i32 0, i32* %191, align 4
  %192 = load i32, i32* %15, align 4
  %193 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %194 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 8
  %195 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %196 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %195, i32 0, i32 8
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %241

199:                                              ; preds = %189
  %200 = load i8*, i8** %11, align 8
  %201 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %202 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %201, i32 0, i32 8
  %203 = load i8*, i8** %202, align 8
  %204 = call i64 @strcmp(i8* %200, i8* %203)
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %226

206:                                              ; preds = %199
  %207 = load i8*, i8** %12, align 8
  %208 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %209 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %208, i32 0, i32 9
  %210 = load i8*, i8** %209, align 8
  %211 = call i64 @strcmp(i8* %207, i8* %210)
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %206
  %214 = load i32, i32* %14, align 4
  %215 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %216 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %215, i32 0, i32 10
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %214, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %213
  %220 = load i64, i64* %13, align 8
  %221 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %222 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %220, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %219
  br label %310

226:                                              ; preds = %219, %213, %206, %199
  %227 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %228 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %227, i32 0, i32 8
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @bfree(i8* %229)
  %231 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %232 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %231, i32 0, i32 9
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @bfree(i8* %233)
  %235 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %236 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %235, i32 0, i32 8
  store i8* null, i8** %236, align 8
  %237 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %238 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %237, i32 0, i32 9
  store i8* null, i8** %238, align 8
  %239 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %240 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %239, i32 0, i32 16
  store i64 0, i64* %240, align 8
  store i32 1, i32* %7, align 4
  br label %241

241:                                              ; preds = %226, %189
  %242 = load i8*, i8** %11, align 8
  %243 = call i8* @bstrdup(i8* %242)
  %244 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %245 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %244, i32 0, i32 8
  store i8* %243, i8** %245, align 8
  %246 = load i8*, i8** %12, align 8
  %247 = call i8* @bstrdup(i8* %246)
  %248 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %249 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %248, i32 0, i32 9
  store i8* %247, i8** %249, align 8
  %250 = load i64, i64* %13, align 8
  %251 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %252 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %251, i32 0, i32 5
  store i64 %250, i64* %252, align 8
  %253 = load i32, i32* %14, align 4
  %254 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %255 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %254, i32 0, i32 10
  store i32 %253, i32* %255, align 8
  %256 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %257 = call i32 @init_font(%struct.ft2_source* %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %241
  %260 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %261 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %260, i32 0, i32 14
  %262 = load i32*, i32** %261, align 8
  %263 = icmp eq i32* %262, null
  br i1 %263, label %264, label %270

264:                                              ; preds = %259, %241
  %265 = load i32, i32* @LOG_WARNING, align 4
  %266 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %267 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %266, i32 0, i32 8
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @blog(i32 %265, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i8* %268)
  br label %425

270:                                              ; preds = %259
  %271 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %272 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %271, i32 0, i32 14
  %273 = load i32*, i32** %272, align 8
  %274 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %275 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %274, i32 0, i32 5
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @FT_Set_Pixel_Sizes(i32* %273, i32 0, i64 %276)
  %278 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %279 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %278, i32 0, i32 14
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* @FT_ENCODING_UNICODE, align 4
  %282 = call i32 @FT_Select_Charmap(i32* %280, i32 %281)
  br label %283

283:                                              ; preds = %270
  %284 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %285 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %284, i32 0, i32 11
  %286 = load i8*, i8** %285, align 8
  %287 = icmp ne i8* %286, null
  br i1 %287, label %288, label %295

288:                                              ; preds = %283
  %289 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %290 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %289, i32 0, i32 11
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @bfree(i8* %291)
  %293 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %294 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %293, i32 0, i32 11
  store i8* null, i8** %294, align 8
  br label %295

295:                                              ; preds = %288, %283
  %296 = load i32, i32* @texbuf_w, align 4
  %297 = load i32, i32* @texbuf_h, align 4
  %298 = mul nsw i32 %296, %297
  %299 = call i8* @bzalloc(i32 %298)
  %300 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %301 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %300, i32 0, i32 11
  store i8* %299, i8** %301, align 8
  %302 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %303 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %302, i32 0, i32 14
  %304 = load i32*, i32** %303, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %309

306:                                              ; preds = %295
  %307 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %308 = call i32 @cache_standard_glyphs(%struct.ft2_source* %307)
  br label %309

309:                                              ; preds = %306, %295
  br label %310

310:                                              ; preds = %309, %225
  %311 = load i32, i32* %15, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %382

313:                                              ; preds = %310
  %314 = load i32*, i32** %4, align 8
  %315 = call i8* @obs_data_get_string(i32* %314, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  store i8* %315, i8** %20, align 8
  %316 = load i8*, i8** %20, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %318, label %326

318:                                              ; preds = %313
  %319 = load i8*, i8** %20, align 8
  %320 = load i8, i8* %319, align 1
  %321 = icmp ne i8 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %318
  %323 = load i8*, i8** %20, align 8
  %324 = call i32 @os_file_exists(i8* %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %342, label %326

326:                                              ; preds = %322, %318, %313
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8** %21, align 8
  %327 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %328 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %327, i32 0, i32 12
  %329 = load i8*, i8** %328, align 8
  %330 = call i32 @bfree(i8* %329)
  %331 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %332 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %331, i32 0, i32 12
  store i8* null, i8** %332, align 8
  %333 = load i8*, i8** %21, align 8
  %334 = load i8*, i8** %21, align 8
  %335 = call i32 @strlen(i8* %334)
  %336 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %337 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %336, i32 0, i32 12
  %338 = call i32 @os_utf8_to_wcs_ptr(i8* %333, i32 %335, i8** %337)
  %339 = load i32, i32* @LOG_WARNING, align 4
  %340 = load i8*, i8** %20, align 8
  %341 = call i32 @blog(i32 %339, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i8* %340)
  br label %381

342:                                              ; preds = %322
  %343 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %344 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %343, i32 0, i32 13
  %345 = load i8*, i8** %344, align 8
  %346 = icmp ne i8* %345, null
  br i1 %346, label %347, label %358

347:                                              ; preds = %342
  %348 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %349 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %348, i32 0, i32 13
  %350 = load i8*, i8** %349, align 8
  %351 = load i8*, i8** %20, align 8
  %352 = call i64 @strcmp(i8* %350, i8* %351)
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %347
  %355 = load i32, i32* %7, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %358, label %357

357:                                              ; preds = %354
  br label %425

358:                                              ; preds = %354, %347, %342
  %359 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %360 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %359, i32 0, i32 13
  %361 = load i8*, i8** %360, align 8
  %362 = call i32 @bfree(i8* %361)
  %363 = load i8*, i8** %20, align 8
  %364 = call i8* @bstrdup(i8* %363)
  %365 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %366 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %365, i32 0, i32 13
  store i8* %364, i8** %366, align 8
  %367 = load i32, i32* %16, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %358
  %370 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %371 = load i8*, i8** %20, align 8
  %372 = call i32 @read_from_end(%struct.ft2_source* %370, i8* %371)
  br label %377

373:                                              ; preds = %358
  %374 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %375 = load i8*, i8** %20, align 8
  %376 = call i32 @load_text_from_file(%struct.ft2_source* %374, i8* %375)
  br label %377

377:                                              ; preds = %373, %369
  %378 = call i32 (...) @os_gettime_ns()
  %379 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %380 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %379, i32 0, i32 15
  store i32 %378, i32* %380, align 8
  br label %381

381:                                              ; preds = %377, %326
  br label %411

382:                                              ; preds = %310
  %383 = load i32*, i32** %4, align 8
  %384 = call i8* @obs_data_get_string(i32* %383, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  store i8* %384, i8** %22, align 8
  %385 = load i8*, i8** %22, align 8
  %386 = icmp ne i8* %385, null
  br i1 %386, label %387, label %391

387:                                              ; preds = %382
  %388 = load i8*, i8** %22, align 8
  %389 = load i8, i8* %388, align 1
  %390 = icmp ne i8 %389, 0
  br i1 %390, label %392, label %391

391:                                              ; preds = %387, %382
  br label %425

392:                                              ; preds = %387
  %393 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %394 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %393, i32 0, i32 12
  %395 = load i8*, i8** %394, align 8
  %396 = icmp ne i8* %395, null
  br i1 %396, label %397, label %404

397:                                              ; preds = %392
  %398 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %399 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %398, i32 0, i32 12
  %400 = load i8*, i8** %399, align 8
  %401 = call i32 @bfree(i8* %400)
  %402 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %403 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %402, i32 0, i32 12
  store i8* null, i8** %403, align 8
  br label %404

404:                                              ; preds = %397, %392
  %405 = load i8*, i8** %22, align 8
  %406 = load i8*, i8** %22, align 8
  %407 = call i32 @strlen(i8* %406)
  %408 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %409 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %408, i32 0, i32 12
  %410 = call i32 @os_utf8_to_wcs_ptr(i8* %405, i32 %407, i8** %409)
  br label %411

411:                                              ; preds = %404, %381
  %412 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %413 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %412, i32 0, i32 14
  %414 = load i32*, i32** %413, align 8
  %415 = icmp ne i32* %414, null
  br i1 %415, label %416, label %424

416:                                              ; preds = %411
  %417 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %418 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %419 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %418, i32 0, i32 12
  %420 = load i8*, i8** %419, align 8
  %421 = call i32 @cache_glyphs(%struct.ft2_source* %417, i8* %420)
  %422 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %423 = call i32 @set_up_vertex_buffer(%struct.ft2_source* %422)
  br label %424

424:                                              ; preds = %416, %411
  br label %425

425:                                              ; preds = %424, %391, %357, %264, %150
  %426 = load i32*, i32** %6, align 8
  %427 = call i32 @obs_data_release(i32* %426)
  br label %428

428:                                              ; preds = %425, %38
  ret void
}

declare dso_local i32* @obs_data_get_obj(i32*, i8*) #1

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i8* @obs_data_get_bool(i32*, i8*) #1

declare dso_local i8* @obs_module_file(i8*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32* @gs_effect_create_from_file(i8*, i8**) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i32 @init_font(%struct.ft2_source*) #1

declare dso_local i32 @blog(i32, i8*, i8*) #1

declare dso_local i32 @FT_Set_Pixel_Sizes(i32*, i32, i64) #1

declare dso_local i32 @FT_Select_Charmap(i32*, i32) #1

declare dso_local i8* @bzalloc(i32) #1

declare dso_local i32 @cache_standard_glyphs(%struct.ft2_source*) #1

declare dso_local i32 @os_file_exists(i8*) #1

declare dso_local i32 @os_utf8_to_wcs_ptr(i8*, i32, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @read_from_end(%struct.ft2_source*, i8*) #1

declare dso_local i32 @load_text_from_file(%struct.ft2_source*, i8*) #1

declare dso_local i32 @os_gettime_ns(...) #1

declare dso_local i32 @cache_glyphs(%struct.ft2_source*, i8*) #1

declare dso_local i32 @set_up_vertex_buffer(%struct.ft2_source*) #1

declare dso_local i32 @obs_data_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
