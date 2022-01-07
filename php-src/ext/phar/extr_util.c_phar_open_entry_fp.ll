; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_open_entry_fp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_open_entry_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_24__*, i32, %struct.TYPE_27__*, %struct.TYPE_25__* }

@SUCCESS = common dso_local global i32 0, align 4
@PHAR_TMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@STREAM_MUST_SEEK = common dso_local global i32 0, align 4
@PHAR_FP = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"phar error: Cannot open phar archive \22%s\22 for reading\00", align 1
@PHAR_ENT_COMPRESSION_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [85 x i8] c"phar error: Cannot open temporary file for decompressing phar archive \22%s\22 file \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"phar error: unable to read phar \22%s\22 (cannot create %s filter while decompressing file \22%s\22)\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [85 x i8] c"phar error: internal corruption of phar \22%s\22 (actual filesize mismatch on file \22%s\22)\00", align 1
@PHAR_UFP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phar_open_entry_fp(%struct.TYPE_25__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_26__, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 12
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  store %struct.TYPE_27__* %17, %struct.TYPE_27__** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %3
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 11
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %27 = call %struct.TYPE_25__* @phar_get_link_source(%struct.TYPE_25__* %26)
  store %struct.TYPE_25__* %27, %struct.TYPE_25__** %14, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %29 = icmp ne %struct.TYPE_25__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %33 = icmp ne %struct.TYPE_25__* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = call i32 @phar_open_entry_fp(%struct.TYPE_25__* %35, i8** %36, i32 1)
  store i32 %37, i32* %4, align 4
  br label %307

38:                                               ; preds = %30, %25
  br label %39

39:                                               ; preds = %38, %20, %3
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 10
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @SUCCESS, align 4
  store i32 %45, i32* %4, align 4
  br label %307

46:                                               ; preds = %39
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PHAR_TMP, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 9
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @STREAM_MUST_SEEK, align 4
  %62 = call i64 @php_stream_open_wrapper(i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %61, i32* null)
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 9
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %57, %52
  %66 = load i32, i32* @SUCCESS, align 4
  store i32 %66, i32* %4, align 4
  br label %307

67:                                               ; preds = %46
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PHAR_FP, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @SUCCESS, align 4
  store i32 %74, i32* %4, align 4
  br label %307

75:                                               ; preds = %67
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %77 = call i8* @phar_get_pharfp(%struct.TYPE_27__* %76)
  %78 = icmp ne i8* %77, null
  br i1 %78, label %93, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* @FAILURE, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %82 = call i64 @phar_open_archive_fp(%struct.TYPE_27__* %81)
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i8**, i8*** %6, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %85, i32 4096, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i64, i64* @FAILURE, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %4, align 4
  br label %307

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %75
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PHAR_ENT_COMPRESSION_MASK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %98, %93
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PHAR_ENT_COMPRESSION_MASK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %137, label %112

112:                                              ; preds = %105, %98
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  store %struct.TYPE_25__* %113, %struct.TYPE_25__** %114, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  store %struct.TYPE_27__* %115, %struct.TYPE_27__** %116, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  store i32 %119, i32* %120, align 8
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %122 = call i8* @phar_get_pharfp(%struct.TYPE_27__* %121)
  %123 = bitcast i8* %122 to %struct.TYPE_24__*
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  store %struct.TYPE_24__* %123, %struct.TYPE_24__** %124, align 8
  %125 = load i64, i64* @FAILURE, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i8**, i8*** %6, align 8
  %130 = call i64 @phar_postprocess_file(%struct.TYPE_26__* %13, i32 %128, i8** %129, i32 1)
  %131 = icmp eq i64 %125, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %112
  %133 = load i64, i64* @FAILURE, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %4, align 4
  br label %307

135:                                              ; preds = %112
  %136 = load i32, i32* @SUCCESS, align 4
  store i32 %136, i32* %4, align 4
  br label %307

137:                                              ; preds = %105
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %139 = call %struct.TYPE_24__* @phar_get_entrypufp(%struct.TYPE_25__* %138)
  %140 = icmp ne %struct.TYPE_24__* %139, null
  br i1 %140, label %160, label %141

141:                                              ; preds = %137
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %143 = call i32 (...) @php_stream_fopen_tmpfile()
  %144 = call i32 @phar_set_entrypufp(%struct.TYPE_25__* %142, i32 %143)
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %146 = call %struct.TYPE_24__* @phar_get_entrypufp(%struct.TYPE_25__* %145)
  %147 = icmp ne %struct.TYPE_24__* %146, null
  br i1 %147, label %159, label %148

148:                                              ; preds = %141
  %149 = load i8**, i8*** %6, align 8
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %149, i32 4096, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 %152, i32 %155)
  %157 = load i64, i64* @FAILURE, align 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %4, align 4
  br label %307

159:                                              ; preds = %141
  br label %160

160:                                              ; preds = %159, %137
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  store %struct.TYPE_25__* %161, %struct.TYPE_25__** %162, align 8
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  store %struct.TYPE_27__* %163, %struct.TYPE_27__** %164, align 8
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  store i32 %167, i32* %168, align 8
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %170 = call i8* @phar_get_pharfp(%struct.TYPE_27__* %169)
  %171 = bitcast i8* %170 to %struct.TYPE_24__*
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  store %struct.TYPE_24__* %171, %struct.TYPE_24__** %172, align 8
  %173 = load i64, i64* @FAILURE, align 8
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load i8**, i8*** %6, align 8
  %178 = call i64 @phar_postprocess_file(%struct.TYPE_26__* %13, i32 %176, i8** %177, i32 1)
  %179 = icmp eq i64 %173, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %160
  %181 = load i64, i64* @FAILURE, align 8
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %4, align 4
  br label %307

183:                                              ; preds = %160
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %185 = call %struct.TYPE_24__* @phar_get_entrypufp(%struct.TYPE_25__* %184)
  store %struct.TYPE_24__* %185, %struct.TYPE_24__** %12, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %187 = call i8* @phar_decompress_filter(%struct.TYPE_25__* %186, i32 0)
  store i8* %187, i8** %10, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load i8*, i8** %10, align 8
  %191 = call i32* @php_stream_filter_create(i8* %190, i32* null, i32 0)
  store i32* %191, i32** %8, align 8
  br label %193

192:                                              ; preds = %183
  store i32* null, i32** %8, align 8
  br label %193

193:                                              ; preds = %192, %189
  %194 = load i32*, i32** %8, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %209, label %196

196:                                              ; preds = %193
  %197 = load i8**, i8*** %6, align 8
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %202 = call i8* @phar_decompress_filter(%struct.TYPE_25__* %201, i32 1)
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %197, i32 4096, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), i32 %200, i8* %202, i32 %205)
  %207 = load i64, i64* @FAILURE, align 8
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %4, align 4
  br label %307

209:                                              ; preds = %193
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %211 = load i32, i32* @SEEK_END, align 4
  %212 = call i32 @php_stream_seek(%struct.TYPE_24__* %210, i32 0, i32 %211)
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %214 = call i64 @php_stream_tell(%struct.TYPE_24__* %213)
  store i64 %214, i64* %11, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 0
  %217 = load i32*, i32** %8, align 8
  %218 = call i32 @php_stream_filter_append(i32* %216, i32* %217)
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %220 = call %struct.TYPE_24__* @phar_get_entrypfp(%struct.TYPE_25__* %219)
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %222 = call i32 @phar_get_fp_offset(%struct.TYPE_25__* %221)
  %223 = load i32, i32* @SEEK_SET, align 4
  %224 = call i32 @php_stream_seek(%struct.TYPE_24__* %220, i32 %222, i32 %223)
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %253

229:                                              ; preds = %209
  %230 = load i32, i32* @SUCCESS, align 4
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %232 = call %struct.TYPE_24__* @phar_get_entrypfp(%struct.TYPE_25__* %231)
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @php_stream_copy_to_stream_ex(%struct.TYPE_24__* %232, %struct.TYPE_24__* %233, i32 %236, i32* null)
  %238 = icmp ne i32 %230, %237
  br i1 %238, label %239, label %252

239:                                              ; preds = %229
  %240 = load i8**, i8*** %6, align 8
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %240, i32 4096, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i32 %243, i32 %246)
  %248 = load i32*, i32** %8, align 8
  %249 = call i32 @php_stream_filter_remove(i32* %248, i32 1)
  %250 = load i64, i64* @FAILURE, align 8
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %4, align 4
  br label %307

252:                                              ; preds = %229
  br label %253

253:                                              ; preds = %252, %209
  %254 = load i32*, i32** %8, align 8
  %255 = call i32 @php_stream_filter_flush(i32* %254, i32 1)
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %257 = call i32 @php_stream_flush(%struct.TYPE_24__* %256)
  %258 = load i32*, i32** %8, align 8
  %259 = call i32 @php_stream_filter_remove(i32* %258, i32 1)
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %261 = call i64 @php_stream_tell(%struct.TYPE_24__* %260)
  %262 = load i64, i64* %11, align 8
  %263 = sub nsw i64 %261, %262
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 6
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %263, %266
  br i1 %267, label %268, label %279

268:                                              ; preds = %253
  %269 = load i8**, i8*** %6, align 8
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %269, i32 4096, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i32 %272, i32 %275)
  %277 = load i64, i64* @FAILURE, align 8
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %4, align 4
  br label %307

279:                                              ; preds = %253
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 8
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %286 = load i32, i32* @PHAR_UFP, align 4
  %287 = load i64, i64* %11, align 8
  %288 = call i32 @phar_set_fp_type(%struct.TYPE_25__* %285, i32 %286, i64 %287)
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  store i32 %291, i32* %292, align 8
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  store %struct.TYPE_24__* %293, %struct.TYPE_24__** %294, align 8
  %295 = load i64, i64* @FAILURE, align 8
  %296 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = load i8**, i8*** %6, align 8
  %300 = call i64 @phar_postprocess_file(%struct.TYPE_26__* %13, i32 %298, i8** %299, i32 0)
  %301 = icmp eq i64 %295, %300
  br i1 %301, label %302, label %305

302:                                              ; preds = %279
  %303 = load i64, i64* @FAILURE, align 8
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %4, align 4
  br label %307

305:                                              ; preds = %279
  %306 = load i32, i32* @SUCCESS, align 4
  store i32 %306, i32* %4, align 4
  br label %307

307:                                              ; preds = %305, %302, %268, %239, %196, %180, %148, %135, %132, %84, %73, %65, %44, %34
  %308 = load i32, i32* %4, align 4
  ret i32 %308
}

declare dso_local %struct.TYPE_25__* @phar_get_link_source(%struct.TYPE_25__*) #1

declare dso_local i64 @php_stream_open_wrapper(i32, i8*, i32, i32*) #1

declare dso_local i8* @phar_get_pharfp(%struct.TYPE_27__*) #1

declare dso_local i64 @phar_open_archive_fp(%struct.TYPE_27__*) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i32, ...) #1

declare dso_local i64 @phar_postprocess_file(%struct.TYPE_26__*, i32, i8**, i32) #1

declare dso_local %struct.TYPE_24__* @phar_get_entrypufp(%struct.TYPE_25__*) #1

declare dso_local i32 @phar_set_entrypufp(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @php_stream_fopen_tmpfile(...) #1

declare dso_local i8* @phar_decompress_filter(%struct.TYPE_25__*, i32) #1

declare dso_local i32* @php_stream_filter_create(i8*, i32*, i32) #1

declare dso_local i32 @php_stream_seek(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i64 @php_stream_tell(%struct.TYPE_24__*) #1

declare dso_local i32 @php_stream_filter_append(i32*, i32*) #1

declare dso_local %struct.TYPE_24__* @phar_get_entrypfp(%struct.TYPE_25__*) #1

declare dso_local i32 @phar_get_fp_offset(%struct.TYPE_25__*) #1

declare dso_local i32 @php_stream_copy_to_stream_ex(%struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @php_stream_filter_remove(i32*, i32) #1

declare dso_local i32 @php_stream_filter_flush(i32*, i32) #1

declare dso_local i32 @php_stream_flush(%struct.TYPE_24__*) #1

declare dso_local i32 @phar_set_fp_type(%struct.TYPE_25__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
