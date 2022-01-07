; ModuleID = '/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_extract_file.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_extract_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32 }
%struct.zip_file = type { i32 }
%struct.zip_stat = type { i32 }
%struct.TYPE_3__ = type { i8*, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@CWD_EXPAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PHP_STREAM_URL_STAT_QUIET = common dso_local global i32 0, align 4
@PHP_STREAM_MKDIR_RECURSIVE = common dso_local global i32 0, align 4
@REPORT_ERRORS = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Full extraction path exceed MAXPATHLEN (%i)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip*, i8*, i8*, i64)* @php_zip_extract_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_zip_extract_file(%struct.zip* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.zip_file*, align 8
  %12 = alloca %struct.zip_stat, align 4
  %13 = alloca [8192 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_3__, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store %struct.zip* %0, %struct.zip** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %29 = load i32, i32* @MAXPATHLEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %19, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %20, align 8
  store i32 0, i32* %23, align 4
  %33 = call i8* @CWD_STATE_ALLOC(i32 1)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @CWD_EXPAND, align 4
  %41 = call i32 @virtual_file_ex(%struct.TYPE_3__* %26, i8* %39, i32* null, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @php_zip_make_relative_path(i8* %43, i64 %45)
  store i8* %46, i8** %24, align 8
  %47 = load i8*, i8** %24, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %243

50:                                               ; preds = %4
  %51 = load i8*, i8** %24, align 8
  %52 = call i64 @strlen(i8* %51)
  store i64 %52, i64* %25, align 8
  %53 = load i64, i64* %25, align 8
  %54 = load i32, i32* @MAXPATHLEN, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp uge i64 %53, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.zip*, %struct.zip** %6, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @zip_stat(%struct.zip* %58, i8* %59, i32 0, %struct.zip_stat* %12)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %50
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %243

63:                                               ; preds = %57
  %64 = load i64, i64* %25, align 8
  %65 = icmp ugt i64 %64, 1
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i8*, i8** %24, align 8
  %68 = load i64, i64* %25, align 8
  %69 = sub i64 %68, 1
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @IS_SLASH(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %24, align 8
  %77 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %18, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %75, i8* %76)
  store i64 %77, i64* %22, align 8
  store i32 1, i32* %23, align 4
  br label %116

78:                                               ; preds = %66, %63
  %79 = load i8*, i8** %24, align 8
  %80 = load i64, i64* %25, align 8
  %81 = call i32 @memcpy(i8* %32, i8* %79, i64 %80)
  %82 = load i64, i64* %25, align 8
  %83 = call i64 @php_dirname(i8* %32, i64 %82)
  store i64 %83, i64* %21, align 8
  %84 = load i64, i64* %21, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load i64, i64* %21, align 8
  %88 = icmp eq i64 %87, 1
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = getelementptr inbounds i8, i8* %32, i64 0
  %91 = load i8, i8* %90, align 16
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 46
  br i1 %93, label %94, label %97

94:                                               ; preds = %89, %78
  %95 = load i8*, i8** %7, align 8
  %96 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %18, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  store i64 %96, i64* %22, align 8
  br label %100

97:                                               ; preds = %89, %86
  %98 = load i8*, i8** %7, align 8
  %99 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %18, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %98, i8* %32)
  store i64 %99, i64* %22, align 8
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i8*, i8** %24, align 8
  %102 = load i64, i64* %25, align 8
  %103 = call i32* @php_basename(i8* %101, i64 %102, i32* null, i32 0)
  store i32* %103, i32** %27, align 8
  %104 = load i8*, i8** %18, align 8
  %105 = call i64 @ZIP_OPENBASEDIR_CHECKPATH(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load i8*, i8** %18, align 8
  %109 = call i32 @efree(i8* %108)
  %110 = load i32*, i32** %27, align 8
  %111 = call i32 @zend_string_release_ex(i32* %110, i32 0)
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @CWD_STATE_FREE(i8* %113)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %243

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115, %74
  %117 = load i8*, i8** %18, align 8
  %118 = load i32, i32* @PHP_STREAM_URL_STAT_QUIET, align 4
  %119 = call i64 @php_stream_stat_path_ex(i8* %117, i32 %118, i32* %10, i32* null)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %116
  %122 = load i8*, i8** %18, align 8
  %123 = load i32, i32* @PHP_STREAM_MKDIR_RECURSIVE, align 4
  %124 = load i32, i32* @REPORT_ERRORS, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @php_stream_mkdir(i8* %122, i32 511, i32 %125, i32* null)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %121
  %130 = load i8*, i8** %18, align 8
  %131 = call i32 @efree(i8* %130)
  %132 = load i32, i32* %23, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = load i32*, i32** %27, align 8
  %136 = call i32 @zend_string_release_ex(i32* %135, i32 0)
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @CWD_STATE_FREE(i8* %138)
  br label %140

140:                                              ; preds = %134, %129
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %243

141:                                              ; preds = %121
  br label %142

142:                                              ; preds = %141, %116
  %143 = load i32, i32* %23, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i8*, i8** %18, align 8
  %147 = call i32 @efree(i8* %146)
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @CWD_STATE_FREE(i8* %149)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %243

151:                                              ; preds = %142
  %152 = load i8*, i8** %18, align 8
  %153 = load i32*, i32** %27, align 8
  %154 = call i8* @ZSTR_VAL(i32* %153)
  %155 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %17, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %152, i8* %154)
  store i64 %155, i64* %22, align 8
  %156 = load i64, i64* %22, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %151
  %159 = load i8*, i8** %18, align 8
  %160 = call i32 @efree(i8* %159)
  %161 = load i32*, i32** %27, align 8
  %162 = call i32 @zend_string_release_ex(i32* %161, i32 0)
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @CWD_STATE_FREE(i8* %164)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %243

166:                                              ; preds = %151
  %167 = load i64, i64* %22, align 8
  %168 = load i32, i32* @MAXPATHLEN, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp ugt i64 %167, %169
  br i1 %170, label %171, label %182

171:                                              ; preds = %166
  %172 = load i32, i32* @E_WARNING, align 4
  %173 = load i32, i32* @MAXPATHLEN, align 4
  %174 = call i32 @php_error_docref(i32* null, i32 %172, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  %175 = load i8*, i8** %18, align 8
  %176 = call i32 @efree(i8* %175)
  %177 = load i32*, i32** %27, align 8
  %178 = call i32 @zend_string_release_ex(i32* %177, i32 0)
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @CWD_STATE_FREE(i8* %180)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %243

182:                                              ; preds = %166
  br label %183

183:                                              ; preds = %182
  %184 = load i8*, i8** %17, align 8
  %185 = call i64 @ZIP_OPENBASEDIR_CHECKPATH(i8* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %183
  %188 = load i8*, i8** %17, align 8
  %189 = call i32 @efree(i8* %188)
  %190 = load i8*, i8** %18, align 8
  %191 = call i32 @efree(i8* %190)
  %192 = load i32*, i32** %27, align 8
  %193 = call i32 @zend_string_release_ex(i32* %192, i32 0)
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @CWD_STATE_FREE(i8* %195)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %243

197:                                              ; preds = %183
  %198 = load %struct.zip*, %struct.zip** %6, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = call %struct.zip_file* @zip_fopen(%struct.zip* %198, i8* %199, i32 0)
  store %struct.zip_file* %200, %struct.zip_file** %11, align 8
  %201 = load %struct.zip_file*, %struct.zip_file** %11, align 8
  %202 = icmp eq %struct.zip_file* %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  store i32 -1, i32* %14, align 4
  br label %229

204:                                              ; preds = %197
  %205 = load i8*, i8** %17, align 8
  %206 = load i32, i32* @REPORT_ERRORS, align 4
  %207 = call i32* @php_stream_open_wrapper(i8* %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %206, i32* null)
  store i32* %207, i32** %16, align 8
  %208 = load i32*, i32** %16, align 8
  %209 = icmp eq i32* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  store i32 -1, i32* %14, align 4
  %211 = load %struct.zip_file*, %struct.zip_file** %11, align 8
  %212 = call i32 @zip_fclose(%struct.zip_file* %211)
  br label %229

213:                                              ; preds = %204
  store i32 0, i32* %14, align 4
  br label %214

214:                                              ; preds = %219, %213
  %215 = load %struct.zip_file*, %struct.zip_file** %11, align 8
  %216 = getelementptr inbounds [8192 x i8], [8192 x i8]* %13, i64 0, i64 0
  %217 = call i32 @zip_fread(%struct.zip_file* %215, i8* %216, i32 8192)
  store i32 %217, i32* %14, align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load i32*, i32** %16, align 8
  %221 = getelementptr inbounds [8192 x i8], [8192 x i8]* %13, i64 0, i64 0
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @php_stream_write(i32* %220, i8* %221, i32 %222)
  br label %214

224:                                              ; preds = %214
  %225 = load i32*, i32** %16, align 8
  %226 = call i32 @php_stream_close(i32* %225)
  %227 = load %struct.zip_file*, %struct.zip_file** %11, align 8
  %228 = call i32 @zip_fclose(%struct.zip_file* %227)
  store i32 %228, i32* %14, align 4
  br label %229

229:                                              ; preds = %224, %210, %203
  %230 = load i8*, i8** %17, align 8
  %231 = call i32 @efree(i8* %230)
  %232 = load i32*, i32** %27, align 8
  %233 = call i32 @zend_string_release_ex(i32* %232, i32 0)
  %234 = load i8*, i8** %18, align 8
  %235 = call i32 @efree(i8* %234)
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @CWD_STATE_FREE(i8* %237)
  %239 = load i32, i32* %14, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %229
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %243

242:                                              ; preds = %229
  store i32 1, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %243

243:                                              ; preds = %242, %241, %187, %171, %158, %145, %140, %107, %62, %49
  %244 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %244)
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @CWD_STATE_ALLOC(i32) #2

declare dso_local i32 @virtual_file_ex(%struct.TYPE_3__*, i8*, i32*, i32) #2

declare dso_local i8* @php_zip_make_relative_path(i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @zip_stat(%struct.zip*, i8*, i32, %struct.zip_stat*) #2

declare dso_local i64 @IS_SLASH(i8 signext) #2

declare dso_local i64 @spprintf(i8**, i32, i8*, i8*, ...) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i64 @php_dirname(i8*, i64) #2

declare dso_local i32* @php_basename(i8*, i64, i32*, i32) #2

declare dso_local i64 @ZIP_OPENBASEDIR_CHECKPATH(i8*) #2

declare dso_local i32 @efree(i8*) #2

declare dso_local i32 @zend_string_release_ex(i32*, i32) #2

declare dso_local i32 @CWD_STATE_FREE(i8*) #2

declare dso_local i64 @php_stream_stat_path_ex(i8*, i32, i32*, i32*) #2

declare dso_local i32 @php_stream_mkdir(i8*, i32, i32, i32*) #2

declare dso_local i8* @ZSTR_VAL(i32*) #2

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32) #2

declare dso_local %struct.zip_file* @zip_fopen(%struct.zip*, i8*, i32) #2

declare dso_local i32* @php_stream_open_wrapper(i8*, i8*, i32, i32*) #2

declare dso_local i32 @zip_fclose(%struct.zip_file*) #2

declare dso_local i32 @zip_fread(%struct.zip_file*, i8*, i32) #2

declare dso_local i32 @php_stream_write(i32*, i8*, i32) #2

declare dso_local i32 @php_stream_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
