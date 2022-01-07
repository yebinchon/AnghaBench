; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_shared_alloc_win32.c_create_segments.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_shared_alloc_win32.c_create_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i8* }
%struct.TYPE_5__ = type { i8* }

@FILE_MAP_READ = common dso_local global i32 0, align 4
@FILE_MAP_WRITE = common dso_local global i32 0, align 4
@FILE_MAP_EXECUTE = common dso_local global i32 0, align 4
@ACCEL_FILEMAP_NAME = common dso_local global i32 0, align 4
@memfile = common dso_local global i32* null, align 8
@ALLOC_FAIL_MAPPING = common dso_local global i32 0, align 4
@MAX_MAP_RETRIES = common dso_local global i32 0, align 4
@ACCEL_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unable to open file mapping\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"OpenFileMapping\00", align 1
@ALLOC_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"calloc() failed\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@PAGE_EXECUTE_READWRITE = common dso_local global i32 0, align 4
@SEC_COMMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Unable to create file mapping\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"CreateFileMapping\00", align 1
@accel_directives = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Bad mapping address specified in opcache.mmap_base\00", align 1
@FILE_MAP_ALL_ACCESS = common dso_local global i32 0, align 4
@mapping_base = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"Unable to create view for file mapping\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"MapViewOfFile\00", align 1
@execute_ex = common dso_local global i64 0, align 8
@PAGE_READWRITE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"VirtualProtect() failed\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@ACCEL_LOG_WARNING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"Unable to write base address\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@ALLOC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_4__***, i32*, i8**)* @create_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_segments(i64 %0, %struct.TYPE_4__*** %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i8*], align 16
  %15 = alloca [6 x i8*], align 16
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8**, align 8
  %19 = alloca %struct.TYPE_5__, align 8
  %20 = alloca %struct.TYPE_5__, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_5__, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_4__*** %1, %struct.TYPE_4__**** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %27 = bitcast [2 x i8*]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 16, i1 false)
  %28 = bitcast [6 x i8*]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 48, i1 false)
  %29 = bitcast i8* %28 to [6 x i8*]*
  %30 = getelementptr inbounds [6 x i8*], [6 x i8*]* %29, i32 0, i32 0
  store i8* inttoptr (i64 536870912 to i8*), i8** %30, align 16
  %31 = getelementptr inbounds [6 x i8*], [6 x i8*]* %29, i32 0, i32 1
  store i8* inttoptr (i64 553648128 to i8*), i8** %31, align 8
  %32 = getelementptr inbounds [6 x i8*], [6 x i8*]* %29, i32 0, i32 2
  store i8* inttoptr (i64 805306368 to i8*), i8** %32, align 16
  %33 = getelementptr inbounds [6 x i8*], [6 x i8*]* %29, i32 0, i32 3
  store i8* inttoptr (i64 822083584 to i8*), i8** %33, align 8
  %34 = getelementptr inbounds [6 x i8*], [6 x i8*]* %29, i32 0, i32 4
  store i8* inttoptr (i64 1342177280 to i8*), i8** %34, align 16
  store i64 0, i64* %16, align 8
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %17, align 8
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  store i8** %36, i8*** %18, align 8
  %37 = call i32 (...) @zend_shared_alloc_lock_win32()
  br label %38

38:                                               ; preds = %78, %4
  %39 = load i32, i32* @FILE_MAP_READ, align 4
  %40 = load i32, i32* @FILE_MAP_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FILE_MAP_EXECUTE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ACCEL_FILEMAP_NAME, align 4
  %45 = call i32 @create_name_with_username(i32 %44)
  %46 = call i32* @OpenFileMapping(i32 %43, i32 0, i32 %45)
  store i32* %46, i32** @memfile, align 8
  %47 = load i32*, i32** @memfile, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = call i32 (...) @GetLastError()
  store i32 %50, i32* %10, align 4
  br label %79

51:                                               ; preds = %38
  %52 = load i64, i64* %6, align 8
  %53 = load i8**, i8*** %9, align 8
  %54 = call i32 @zend_shared_alloc_reattach(i64 %52, i8** %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @ALLOC_FAIL_MAPPING, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = call i32 (...) @GetLastError()
  store i32 %59, i32* %10, align 4
  %60 = load i32*, i32** @memfile, align 8
  %61 = call i32 @CloseHandle(i32* %60)
  store i32* null, i32** @memfile, align 8
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* @MAX_MAP_RETRIES, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %79

67:                                               ; preds = %58
  %68 = call i32 (...) @zend_shared_alloc_unlock_win32()
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  %71 = mul nsw i32 1000, %70
  %72 = call i32 @Sleep(i32 %71)
  %73 = call i32 (...) @zend_shared_alloc_lock_win32()
  br label %77

74:                                               ; preds = %51
  %75 = call i32 (...) @zend_shared_alloc_unlock_win32()
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %5, align 4
  br label %264

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77
  br i1 true, label %38, label %79

79:                                               ; preds = %78, %66, %49
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @MAX_MAP_RETRIES, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = call i32 (...) @zend_shared_alloc_unlock_win32()
  %85 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @zend_win_error_message(i32 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %88, align 8
  %89 = load i32, i32* @ALLOC_FAILURE, align 4
  store i32 %89, i32* %5, align 4
  br label %264

90:                                               ; preds = %79
  %91 = load i32*, i32** %8, align 8
  store i32 1, i32* %91, align 4
  %92 = call i64 @calloc(i32 1, i32 32)
  %93 = inttoptr i64 %92 to %struct.TYPE_4__**
  %94 = load %struct.TYPE_4__***, %struct.TYPE_4__**** %7, align 8
  store %struct.TYPE_4__** %93, %struct.TYPE_4__*** %94, align 8
  %95 = load %struct.TYPE_4__***, %struct.TYPE_4__**** %7, align 8
  %96 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %95, align 8
  %97 = icmp ne %struct.TYPE_4__** %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %90
  %99 = call i32 (...) @GetLastError()
  store i32 %99, i32* %10, align 4
  %100 = call i32 (...) @zend_shared_alloc_unlock_win32()
  %101 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @zend_win_error_message(i32 %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %104, align 8
  %105 = load i32, i32* @ALLOC_FAILURE, align 4
  store i32 %105, i32* %5, align 4
  br label %264

106:                                              ; preds = %90
  %107 = load %struct.TYPE_4__***, %struct.TYPE_4__**** %7, align 8
  %108 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %107, align 8
  %109 = bitcast %struct.TYPE_4__** %108 to i8*
  %110 = getelementptr inbounds i8, i8* %109, i64 8
  %111 = bitcast i8* %110 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %111, %struct.TYPE_4__** %12, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %113 = load %struct.TYPE_4__***, %struct.TYPE_4__**** %7, align 8
  %114 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %114, i64 0
  store %struct.TYPE_4__* %112, %struct.TYPE_4__** %115, align 8
  %116 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %117 = load i32, i32* @PAGE_EXECUTE_READWRITE, align 4
  %118 = load i32, i32* @SEC_COMMIT, align 4
  %119 = or i32 %117, %118
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %17, align 8
  %122 = load i32, i32* @ACCEL_FILEMAP_NAME, align 4
  %123 = call i32 @create_name_with_username(i32 %122)
  %124 = call i32* @CreateFileMapping(i32 %116, i32* null, i32 %119, i64 %120, i64 %121, i32 %123)
  store i32* %124, i32** @memfile, align 8
  %125 = load i32*, i32** @memfile, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %106
  %128 = call i32 (...) @GetLastError()
  store i32 %128, i32* %10, align 4
  %129 = call i32 (...) @zend_shared_alloc_unlock_win32()
  %130 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @zend_win_error_message(i32 %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  %133 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %133, align 8
  %134 = load i32, i32* @ALLOC_FAILURE, align 4
  store i32 %134, i32* %5, align 4
  br label %264

135:                                              ; preds = %106
  %136 = load i32, i32* @accel_directives, align 4
  %137 = call i8* @ZCG(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i8* %137, i8** %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %135
  %143 = load i32, i32* @accel_directives, align 4
  %144 = call i8* @ZCG(i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i8* %144, i8** %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i8, i8* %147, align 1
  %149 = icmp ne i8 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %142, %135
  %151 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 0
  store i8** %151, i8*** %18, align 8
  br label %183

152:                                              ; preds = %142
  %153 = load i32, i32* @accel_directives, align 4
  %154 = call i8* @ZCG(i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i8* %154, i8** %155, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  store i8* %157, i8** %21, align 8
  %158 = load i8*, i8** %21, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 48
  br i1 %161, label %162, label %171

162:                                              ; preds = %152
  %163 = load i8*, i8** %21, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 120
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load i8*, i8** %21, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 2
  store i8* %170, i8** %21, align 8
  br label %171

171:                                              ; preds = %168, %162, %152
  %172 = load i8*, i8** %21, align 8
  %173 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %174 = call i32 @sscanf(i8* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %173)
  %175 = icmp ne i32 %174, 1
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = call i32 (...) @zend_shared_alloc_unlock_win32()
  %178 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @zend_win_error_message(i32 %178, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* @ALLOC_FAILURE, align 4
  store i32 %181, i32* %5, align 4
  br label %264

182:                                              ; preds = %171
  br label %183

183:                                              ; preds = %182, %150
  br label %184

184:                                              ; preds = %201, %183
  %185 = load i32*, i32** @memfile, align 8
  %186 = load i32, i32* @FILE_MAP_ALL_ACCESS, align 4
  %187 = load i32, i32* @FILE_MAP_EXECUTE, align 4
  %188 = or i32 %186, %187
  %189 = load i8**, i8*** %18, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = call i8* @MapViewOfFileEx(i32* %185, i32 %188, i32 0, i32 0, i32 0, i8* %190)
  store i8* %191, i8** @mapping_base, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  store i8* %191, i8** %193, align 8
  %194 = load i8**, i8*** %18, align 8
  %195 = load i8*, i8** %194, align 8
  %196 = icmp eq i8* %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %184
  br label %205

198:                                              ; preds = %184
  %199 = load i8**, i8*** %18, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i32 1
  store i8** %200, i8*** %18, align 8
  br label %201

201:                                              ; preds = %198
  %202 = load i8*, i8** @mapping_base, align 8
  %203 = icmp ne i8* %202, null
  %204 = xor i1 %203, true
  br i1 %204, label %184, label %205

205:                                              ; preds = %201, %197
  %206 = load i8*, i8** @mapping_base, align 8
  %207 = icmp eq i8* %206, null
  br i1 %207, label %208, label %216

208:                                              ; preds = %205
  %209 = call i32 (...) @GetLastError()
  store i32 %209, i32* %10, align 4
  %210 = call i32 (...) @zend_shared_alloc_unlock_win32()
  %211 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @zend_win_error_message(i32 %211, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %212)
  %214 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %214, align 8
  %215 = load i32, i32* @ALLOC_FAILURE, align 4
  store i32 %215, i32* %5, align 4
  br label %264

216:                                              ; preds = %205
  %217 = load i64, i64* @execute_ex, align 8
  %218 = inttoptr i64 %217 to i8*
  store i8* %218, i8** %24, align 8
  %219 = load i8*, i8** @mapping_base, align 8
  %220 = load i64, i64* %6, align 8
  %221 = load i32, i32* @PAGE_READWRITE, align 4
  %222 = call i32 @VirtualProtect(i8* %219, i64 %220, i32 %221, i64* %26)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %216
  %225 = call i32 (...) @GetLastError()
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @zend_win_error_message(i32 %226, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @ALLOC_FAILURE, align 4
  store i32 %229, i32* %5, align 4
  br label %264

230:                                              ; preds = %216
  %231 = call i8* (...) @get_mmap_base_file()
  store i8* %231, i8** %23, align 8
  %232 = load i8*, i8** %23, align 8
  %233 = call i32* @fopen(i8* %232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32* %233, i32** %25, align 8
  %234 = load i32*, i32** %25, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %247, label %236

236:                                              ; preds = %230
  %237 = call i32 (...) @GetLastError()
  store i32 %237, i32* %10, align 4
  %238 = call i32 (...) @zend_shared_alloc_unlock_win32()
  %239 = load i32, i32* @ACCEL_LOG_WARNING, align 4
  %240 = load i8*, i8** %23, align 8
  %241 = load i32, i32* %10, align 4
  %242 = call i32 @zend_win_error_message(i32 %239, i8* %240, i32 %241)
  %243 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @zend_win_error_message(i32 %243, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* @ALLOC_FAILURE, align 4
  store i32 %246, i32* %5, align 4
  br label %264

247:                                              ; preds = %230
  %248 = load i32*, i32** %25, align 8
  %249 = load i8*, i8** @mapping_base, align 8
  %250 = call i32 @fprintf(i32* %248, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %249)
  %251 = load i32*, i32** %25, align 8
  %252 = load i8*, i8** %24, align 8
  %253 = call i32 @fprintf(i32* %251, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %252)
  %254 = load i32*, i32** %25, align 8
  %255 = call i32 @fclose(i32* %254)
  br label %256

256:                                              ; preds = %247
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 1
  store i64 0, i64* %258, align 8
  %259 = load i64, i64* %6, align 8
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  %262 = call i32 (...) @zend_shared_alloc_unlock_win32()
  %263 = load i32, i32* @ALLOC_SUCCESS, align 4
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %256, %236, %224, %208, %176, %127, %98, %83, %74
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @zend_shared_alloc_lock_win32(...) #2

declare dso_local i32* @OpenFileMapping(i32, i32, i32) #2

declare dso_local i32 @create_name_with_username(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @zend_shared_alloc_reattach(i64, i8**) #2

declare dso_local i32 @CloseHandle(i32*) #2

declare dso_local i32 @zend_shared_alloc_unlock_win32(...) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i32 @zend_win_error_message(i32, i8*, i32) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32* @CreateFileMapping(i32, i32*, i32, i64, i64, i32) #2

declare dso_local i8* @ZCG(i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i8**) #2

declare dso_local i8* @MapViewOfFileEx(i32*, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @VirtualProtect(i8*, i64, i32, i64*) #2

declare dso_local i8* @get_mmap_base_file(...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
