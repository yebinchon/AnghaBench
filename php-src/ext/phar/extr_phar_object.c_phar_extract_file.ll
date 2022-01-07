; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_phar_object.c_phar_extract_file.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_phar_object.c_phar_extract_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i8*, i32 }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".phar\00", align 1
@DEFAULT_SLASH = common dso_local global i8 0, align 1
@CWD_EXPAND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [81 x i8] c"Cannot extract \22%s...\22 to \22%s...\22, extracted filename is too long for filesystem\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot extract \22%s\22, internal error\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@MAXPATHLEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [78 x i8] c"Cannot extract \22%s\22 to \22%s...\22, extracted filename is too long for filesystem\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"Cannot extract \22%s\22 to \22%s\22, openbasedir/safe mode restrictions in effect\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Cannot extract \22%s\22 to \22%s\22, path already exists\00", align 1
@PHAR_ENT_PERM_MASK = common dso_local global i32 0, align 4
@PHP_STREAM_MKDIR_RECURSIVE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"Cannot extract \22%s\22, could not create directory \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@REPORT_ERRORS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [53 x i8] c"Cannot extract \22%s\22, could not open for writing \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"Cannot extract \22%s\22 to \22%s\22, unable to open internal file pointer: %s\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"Cannot extract \22%s\22 to \22%s\22, unable to open internal file pointer\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [66 x i8] c"Cannot extract \22%s\22 to \22%s\22, unable to seek internal file pointer\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Cannot extract \22%s\22 to \22%s\22, copying contents failed\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"Cannot extract \22%s\22 to \22%s\22, setting file permissions failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, i8*, i64, i8**)* @phar_extract_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phar_extract_file(i32 %0, %struct.TYPE_8__* %1, i8* %2, i64 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8** %4, i8*** %11, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @SUCCESS, align 4
  store i32 %28, i32* %6, align 4
  br label %419

29:                                               ; preds = %5
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp uge i64 %33, 5
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @memcmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @SUCCESS, align 4
  store i32 %42, i32* %6, align 4
  br label %419

43:                                               ; preds = %35, %29
  %44 = call i64 @emalloc(i32 2)
  %45 = inttoptr i64 %44 to i8*
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = load i8, i8* @DEFAULT_SLASH, align 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 %47, i8* %50, align 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 0, i8* %53, align 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store i32 1, i32* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @CWD_EXPAND, align 4
  %59 = call i64 @virtual_file_ex(%struct.TYPE_9__* %18, i8* %57, i32* null, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %43
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sle i32 %63, 1
  br i1 %64, label %65, label %96

65:                                               ; preds = %61, %43
  %66 = load i64, i64* @EINVAL, align 8
  %67 = load i64, i64* @errno, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 50
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @estrndup(i8* %77, i32 50)
  store i8* %78, i8** %21, align 8
  %79 = load i8**, i8*** %11, align 8
  %80 = load i8*, i8** %21, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %79, i32 4096, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* %80, i8* %81)
  %83 = load i8*, i8** %21, align 8
  %84 = call i32 @efree(i8* %83)
  br label %91

85:                                               ; preds = %69, %65
  %86 = load i8**, i8*** %11, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %86, i32 4096, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %85, %74
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @efree(i8* %93)
  %95 = load i32, i32* @FAILURE, align 4
  store i32 %95, i32* %6, align 4
  br label %419

96:                                               ; preds = %61
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8* %99, i8** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %20, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i8*, i8** %19, align 8
  %106 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %15, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %104, i8* %105)
  store i64 %106, i64* %13, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* @MAXPATHLEN, align 8
  %109 = icmp uge i64 %107, %108
  br i1 %109, label %110, label %142

110:                                              ; preds = %96
  %111 = load i8*, i8** %15, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 50
  store i8 0, i8* %112, align 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sgt i32 %115, 50
  br i1 %116, label %117, label %128

117:                                              ; preds = %110
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i8* @estrndup(i8* %120, i32 50)
  store i8* %121, i8** %22, align 8
  %122 = load i8**, i8*** %11, align 8
  %123 = load i8*, i8** %22, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %122, i32 4096, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* %123, i8* %124)
  %126 = load i8*, i8** %22, align 8
  %127 = call i32 @efree(i8* %126)
  br label %135

128:                                              ; preds = %110
  %129 = load i8**, i8*** %11, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %129, i32 4096, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i8* %132, i8* %133)
  br label %135

135:                                              ; preds = %128, %117
  %136 = load i8*, i8** %15, align 8
  %137 = call i32 @efree(i8* %136)
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @efree(i8* %139)
  %141 = load i32, i32* @FAILURE, align 4
  store i32 %141, i32* %6, align 4
  br label %419

142:                                              ; preds = %96
  %143 = load i64, i64* %13, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %142
  %146 = load i8**, i8*** %11, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %146, i32 4096, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %149)
  %151 = load i8*, i8** %15, align 8
  %152 = call i32 @efree(i8* %151)
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @efree(i8* %154)
  %156 = load i32, i32* @FAILURE, align 4
  store i32 %156, i32* %6, align 4
  br label %419

157:                                              ; preds = %142
  %158 = load i8*, i8** %15, align 8
  %159 = call i64 @php_check_open_basedir(i8* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %157
  %162 = load i8**, i8*** %11, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load i8*, i8** %15, align 8
  %167 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %162, i32 4096, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i8* %165, i8* %166)
  %168 = load i8*, i8** %15, align 8
  %169 = call i32 @efree(i8* %168)
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @efree(i8* %171)
  %173 = load i32, i32* @FAILURE, align 4
  store i32 %173, i32* %6, align 4
  br label %419

174:                                              ; preds = %157
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %195, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* @SUCCESS, align 4
  %179 = load i8*, i8** %15, align 8
  %180 = call i32 @php_stream_stat_path(i8* %179, i32* %12)
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %195

182:                                              ; preds = %177
  %183 = load i8**, i8*** %11, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = load i8*, i8** %15, align 8
  %188 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %183, i32 4096, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %186, i8* %187)
  %189 = load i8*, i8** %15, align 8
  %190 = call i32 @efree(i8* %189)
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @efree(i8* %192)
  %194 = load i32, i32* @FAILURE, align 4
  store i32 %194, i32* %6, align 4
  br label %419

195:                                              ; preds = %177, %174
  %196 = load i8*, i8** %19, align 8
  %197 = load i64, i64* %20, align 8
  %198 = call i8* @zend_memrchr(i8* %196, i8 signext 47, i64 %197)
  store i8* %198, i8** %16, align 8
  %199 = load i8*, i8** %16, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %212

201:                                              ; preds = %195
  %202 = load i8*, i8** %15, align 8
  %203 = load i64, i64* %10, align 8
  %204 = load i8*, i8** %16, align 8
  %205 = load i8*, i8** %19, align 8
  %206 = ptrtoint i8* %204 to i64
  %207 = ptrtoint i8* %205 to i64
  %208 = sub i64 %206, %207
  %209 = add i64 %203, %208
  %210 = add i64 %209, 1
  %211 = getelementptr inbounds i8, i8* %202, i64 %210
  store i8 0, i8* %211, align 1
  br label %216

212:                                              ; preds = %195
  %213 = load i8*, i8** %15, align 8
  %214 = load i64, i64* %10, align 8
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8 0, i8* %215, align 1
  br label %216

216:                                              ; preds = %212, %201
  %217 = load i32, i32* @FAILURE, align 4
  %218 = load i8*, i8** %15, align 8
  %219 = call i32 @php_stream_stat_path(i8* %218, i32* %12)
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %221, label %270

221:                                              ; preds = %216
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %250

226:                                              ; preds = %221
  %227 = load i8*, i8** %15, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @PHAR_ENT_PERM_MASK, align 4
  %232 = and i32 %230, %231
  %233 = load i32, i32* @PHP_STREAM_MKDIR_RECURSIVE, align 4
  %234 = call i32 @php_stream_mkdir(i8* %227, i32 %232, i32 %233, i32* null)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %249, label %236

236:                                              ; preds = %226
  %237 = load i8**, i8*** %11, align 8
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  %241 = load i8*, i8** %15, align 8
  %242 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %237, i32 4096, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %240, i8* %241)
  %243 = load i8*, i8** %15, align 8
  %244 = call i32 @efree(i8* %243)
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @efree(i8* %246)
  %248 = load i32, i32* @FAILURE, align 4
  store i32 %248, i32* %6, align 4
  br label %419

249:                                              ; preds = %226
  br label %269

250:                                              ; preds = %221
  %251 = load i8*, i8** %15, align 8
  %252 = load i32, i32* @PHP_STREAM_MKDIR_RECURSIVE, align 4
  %253 = call i32 @php_stream_mkdir(i8* %251, i32 511, i32 %252, i32* null)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %268, label %255

255:                                              ; preds = %250
  %256 = load i8**, i8*** %11, align 8
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = load i8*, i8** %15, align 8
  %261 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %256, i32 4096, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %259, i8* %260)
  %262 = load i8*, i8** %15, align 8
  %263 = call i32 @efree(i8* %262)
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @efree(i8* %265)
  %267 = load i32, i32* @FAILURE, align 4
  store i32 %267, i32* %6, align 4
  br label %419

268:                                              ; preds = %250
  br label %269

269:                                              ; preds = %268, %249
  br label %270

270:                                              ; preds = %269, %216
  %271 = load i8*, i8** %16, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %284

273:                                              ; preds = %270
  %274 = load i8*, i8** %15, align 8
  %275 = load i64, i64* %10, align 8
  %276 = load i8*, i8** %16, align 8
  %277 = load i8*, i8** %19, align 8
  %278 = ptrtoint i8* %276 to i64
  %279 = ptrtoint i8* %277 to i64
  %280 = sub i64 %278, %279
  %281 = add i64 %275, %280
  %282 = add i64 %281, 1
  %283 = getelementptr inbounds i8, i8* %274, i64 %282
  store i8 47, i8* %283, align 1
  br label %288

284:                                              ; preds = %270
  %285 = load i8*, i8** %15, align 8
  %286 = load i64, i64* %10, align 8
  %287 = getelementptr inbounds i8, i8* %285, i64 %286
  store i8 47, i8* %287, align 1
  br label %288

288:                                              ; preds = %284, %273
  store i8* null, i8** %19, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 @efree(i8* %290)
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %288
  %297 = load i8*, i8** %15, align 8
  %298 = call i32 @efree(i8* %297)
  %299 = load i32, i32* @SUCCESS, align 4
  store i32 %299, i32* %6, align 4
  br label %419

300:                                              ; preds = %288
  %301 = load i8*, i8** %15, align 8
  %302 = load i32, i32* @REPORT_ERRORS, align 4
  %303 = call i32* @php_stream_open_wrapper(i8* %301, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %302, i32* null)
  store i32* %303, i32** %14, align 8
  %304 = load i32*, i32** %14, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %316, label %306

306:                                              ; preds = %300
  %307 = load i8**, i8*** %11, align 8
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = load i8*, i8** %15, align 8
  %312 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %307, i32 4096, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i8* %310, i8* %311)
  %313 = load i8*, i8** %15, align 8
  %314 = call i32 @efree(i8* %313)
  %315 = load i32, i32* @FAILURE, align 4
  store i32 %315, i32* %6, align 4
  br label %419

316:                                              ; preds = %300
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %318 = call i32 @phar_get_efp(%struct.TYPE_8__* %317, i32 0)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %352, label %320

320:                                              ; preds = %316
  %321 = load i32, i32* @FAILURE, align 4
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %323 = load i8**, i8*** %11, align 8
  %324 = call i32 @phar_open_entry_fp(%struct.TYPE_8__* %322, i8** %323, i32 1)
  %325 = icmp eq i32 %321, %324
  br i1 %325, label %326, label %351

326:                                              ; preds = %320
  %327 = load i8**, i8*** %11, align 8
  %328 = icmp ne i8** %327, null
  br i1 %328, label %329, label %338

329:                                              ; preds = %326
  %330 = load i8**, i8*** %11, align 8
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 1
  %333 = load i8*, i8** %332, align 8
  %334 = load i8*, i8** %15, align 8
  %335 = load i8**, i8*** %11, align 8
  %336 = load i8*, i8** %335, align 8
  %337 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %330, i32 4096, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0), i8* %333, i8* %334, i8* %336)
  br label %345

338:                                              ; preds = %326
  %339 = load i8**, i8*** %11, align 8
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 1
  %342 = load i8*, i8** %341, align 8
  %343 = load i8*, i8** %15, align 8
  %344 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %339, i32 4096, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0), i8* %342, i8* %343)
  br label %345

345:                                              ; preds = %338, %329
  %346 = load i8*, i8** %15, align 8
  %347 = call i32 @efree(i8* %346)
  %348 = load i32*, i32** %14, align 8
  %349 = call i32 @php_stream_close(i32* %348)
  %350 = load i32, i32* @FAILURE, align 4
  store i32 %350, i32* %6, align 4
  br label %419

351:                                              ; preds = %320
  br label %352

352:                                              ; preds = %351, %316
  %353 = load i32, i32* @FAILURE, align 4
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %355 = load i32, i32* @SEEK_SET, align 4
  %356 = call i32 @phar_seek_efp(%struct.TYPE_8__* %354, i32 0, i32 %355, i32 0, i32 0)
  %357 = icmp eq i32 %353, %356
  br i1 %357, label %358, label %370

358:                                              ; preds = %352
  %359 = load i8**, i8*** %11, align 8
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 1
  %362 = load i8*, i8** %361, align 8
  %363 = load i8*, i8** %15, align 8
  %364 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %359, i32 4096, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0), i8* %362, i8* %363)
  %365 = load i8*, i8** %15, align 8
  %366 = call i32 @efree(i8* %365)
  %367 = load i32*, i32** %14, align 8
  %368 = call i32 @php_stream_close(i32* %367)
  %369 = load i32, i32* @FAILURE, align 4
  store i32 %369, i32* %6, align 4
  br label %419

370:                                              ; preds = %352
  %371 = load i32, i32* @SUCCESS, align 4
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %373 = call i32 @phar_get_efp(%struct.TYPE_8__* %372, i32 0)
  %374 = load i32*, i32** %14, align 8
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @php_stream_copy_to_stream_ex(i32 %373, i32* %374, i32 %377, i32* null)
  %379 = icmp ne i32 %371, %378
  br i1 %379, label %380, label %392

380:                                              ; preds = %370
  %381 = load i8**, i8*** %11, align 8
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 1
  %384 = load i8*, i8** %383, align 8
  %385 = load i8*, i8** %15, align 8
  %386 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %381, i32 4096, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* %384, i8* %385)
  %387 = load i8*, i8** %15, align 8
  %388 = call i32 @efree(i8* %387)
  %389 = load i32*, i32** %14, align 8
  %390 = call i32 @php_stream_close(i32* %389)
  %391 = load i32, i32* @FAILURE, align 4
  store i32 %391, i32* %6, align 4
  br label %419

392:                                              ; preds = %370
  %393 = load i32*, i32** %14, align 8
  %394 = call i32 @php_stream_close(i32* %393)
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @PHAR_ENT_PERM_MASK, align 4
  %399 = and i32 %397, %398
  store i32 %399, i32* %17, align 4
  %400 = load i32, i32* @FAILURE, align 4
  %401 = load i8*, i8** %15, align 8
  %402 = load i32, i32* %17, align 4
  %403 = call i32 @VCWD_CHMOD(i8* %401, i32 %402)
  %404 = icmp eq i32 %400, %403
  br i1 %404, label %405, label %415

405:                                              ; preds = %392
  %406 = load i8**, i8*** %11, align 8
  %407 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 1
  %409 = load i8*, i8** %408, align 8
  %410 = load i8*, i8** %15, align 8
  %411 = call i64 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %406, i32 4096, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0), i8* %409, i8* %410)
  %412 = load i8*, i8** %15, align 8
  %413 = call i32 @efree(i8* %412)
  %414 = load i32, i32* @FAILURE, align 4
  store i32 %414, i32* %6, align 4
  br label %419

415:                                              ; preds = %392
  %416 = load i8*, i8** %15, align 8
  %417 = call i32 @efree(i8* %416)
  %418 = load i32, i32* @SUCCESS, align 4
  store i32 %418, i32* %6, align 4
  br label %419

419:                                              ; preds = %415, %405, %380, %358, %345, %306, %296, %255, %236, %182, %161, %145, %135, %91, %41, %27
  %420 = load i32, i32* %6, align 4
  ret i32 %420
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @emalloc(i32) #1

declare dso_local i64 @virtual_file_ex(%struct.TYPE_9__*, i8*, i32*, i32) #1

declare dso_local i8* @estrndup(i8*, i32) #1

declare dso_local i64 @spprintf(i8**, i32, i8*, i8*, ...) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i64 @php_check_open_basedir(i8*) #1

declare dso_local i32 @php_stream_stat_path(i8*, i32*) #1

declare dso_local i8* @zend_memrchr(i8*, i8 signext, i64) #1

declare dso_local i32 @php_stream_mkdir(i8*, i32, i32, i32*) #1

declare dso_local i32* @php_stream_open_wrapper(i8*, i8*, i32, i32*) #1

declare dso_local i32 @phar_get_efp(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @phar_open_entry_fp(%struct.TYPE_8__*, i8**, i32) #1

declare dso_local i32 @php_stream_close(i32*) #1

declare dso_local i32 @phar_seek_efp(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @php_stream_copy_to_stream_ex(i32, i32*, i32, i32*) #1

declare dso_local i32 @VCWD_CHMOD(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
