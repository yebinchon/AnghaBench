; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_file_open.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i64, i32, i32*, i32, i32* }
%struct.stat = type { i32 }
%struct.anon = type { i8*, i8 }

@.str = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"localhost/\00", align 1
@OSSL_STORE_F_FILE_OPEN = common dso_local global i32 0, align 4
@OSSL_STORE_R_URI_AUTHORITY_UNSUPPORTED = common dso_local global i32 0, align 4
@OSSL_STORE_R_PATH_MUST_BE_ABSOLUTE = common dso_local global i32 0, align 4
@ERR_LIB_SYS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"calling stat(%s)\00", align 1
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@is_dir = common dso_local global i32 0, align 4
@ERR_R_SYS_LIB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1
@is_pem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, i8*, i32*, i8*)* @file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @file_open(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca [2 x %struct.anon], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [256 x i8], align 16
  %18 = alloca i32*, align 8
  %19 = alloca [4096 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  store i64 0, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1
  %23 = load i8, i8* %22, align 8
  %24 = and i8 %23, -2
  store i8 %24, i8* %22, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %13, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %13, align 8
  %28 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %26
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  store i8* %25, i8** %29, align 16
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @strncasecmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %4
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  store i8* %35, i8** %16, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 5
  %38 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %33
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %13, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 7
  %45 = call i64 @strncasecmp(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 16
  store i8* %49, i8** %16, align 8
  br label %64

50:                                               ; preds = %40
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 7
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 47
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 7
  store i8* %58, i8** %16, align 8
  br label %63

59:                                               ; preds = %50
  %60 = load i32, i32* @OSSL_STORE_F_FILE_OPEN, align 4
  %61 = load i32, i32* @OSSL_STORE_R_URI_AUTHORITY_UNSUPPORTED, align 4
  %62 = call i32 @OSSL_STOREerr(i32 %60, i32 %61)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %276

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %47
  br label %65

65:                                               ; preds = %64, %33
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 1
  %69 = load i8, i8* %68, align 8
  %70 = and i8 %69, -2
  %71 = or i8 %70, 1
  store i8 %71, i8* %68, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %13, align 8
  %75 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %73
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 0
  store i8* %72, i8** %76, align 16
  br label %77

77:                                               ; preds = %65, %4
  store i64 0, i64* %14, align 8
  store i8* null, i8** %15, align 8
  br label %78

78:                                               ; preds = %134, %77
  %79 = load i8*, i8** %15, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* %13, align 8
  %84 = icmp ult i64 %82, %83
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi i1 [ false, %78 ], [ %84, %81 ]
  br i1 %86, label %87, label %137

87:                                               ; preds = %85
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %89, i32 0, i32 1
  %91 = load i8, i8* %90, align 8
  %92 = and i8 %91, 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %87
  %96 = load i64, i64* %14, align 8
  %97 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 16
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 47
  br i1 %103, label %104, label %113

104:                                              ; preds = %95
  %105 = load i32, i32* @OSSL_STORE_F_FILE_OPEN, align 4
  %106 = load i32, i32* @OSSL_STORE_R_PATH_MUST_BE_ABSOLUTE, align 4
  %107 = call i32 @OSSL_STOREerr(i32 %105, i32 %106)
  %108 = load i64, i64* %14, align 8
  %109 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 16
  %112 = call i32 @ERR_add_error_data(i32 1, i8* %111)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %276

113:                                              ; preds = %95, %87
  %114 = load i64, i64* %14, align 8
  %115 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 16
  %118 = call i64 @stat(i8* %117, %struct.stat* %11)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load i32, i32* @ERR_LIB_SYS, align 4
  %122 = load i64, i64* @errno, align 8
  %123 = load i64, i64* %14, align 8
  %124 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %123
  %125 = getelementptr inbounds %struct.anon, %struct.anon* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 16
  %127 = call i32 @ERR_raise_data(i32 %121, i64 %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %126)
  br label %133

128:                                              ; preds = %113
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %129
  %131 = getelementptr inbounds %struct.anon, %struct.anon* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 16
  store i8* %132, i8** %15, align 8
  br label %133

133:                                              ; preds = %128, %120
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %14, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %14, align 8
  br label %78

137:                                              ; preds = %85
  %138 = load i8*, i8** %15, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %276

141:                                              ; preds = %137
  %142 = call i32 (...) @ERR_clear_error()
  %143 = call %struct.TYPE_11__* @OPENSSL_zalloc(i32 56)
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %10, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %145 = icmp eq %struct.TYPE_11__* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i32, i32* @OSSL_STORE_F_FILE_OPEN, align 4
  %148 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %149 = call i32 @OSSL_STOREerr(i32 %147, i32 %148)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %276

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @S_ISDIR(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %224

155:                                              ; preds = %150
  %156 = load i8*, i8** %7, align 8
  %157 = call i32* @OPENSSL_strdup(i8* %156)
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 4
  store i32* %157, i32** %161, align 8
  %162 = load i32, i32* @is_dir, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %155
  br label %273

172:                                              ; preds = %155
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 3
  %177 = load i8*, i8** %15, align 8
  %178 = call i32* @OPENSSL_DIR_read(i32* %176, i8* %177)
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  store i32* %178, i32** %182, align 8
  %183 = load i64, i64* @errno, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  store i64 %183, i64* %187, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = icmp eq i32* %192, null
  br i1 %193, label %194, label %223

194:                                              ; preds = %172
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %218

201:                                              ; preds = %194
  %202 = load i32, i32* @OSSL_STORE_F_FILE_OPEN, align 4
  %203 = load i32, i32* @ERR_R_SYS_LIB, align 4
  %204 = call i32 @OSSL_STOREerr(i32 %202, i32 %203)
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* @errno, align 8
  %210 = load i64, i64* @errno, align 8
  %211 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %212 = call i64 @openssl_strerror_r(i64 %210, i8* %211, i32 256)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %201
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %216 = call i32 @ERR_add_error_data(i32 1, i8* %215)
  br label %217

217:                                              ; preds = %214, %201
  br label %273

218:                                              ; preds = %194
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  store i32 1, i32* %222, align 8
  br label %223

223:                                              ; preds = %218, %172
  br label %271

224:                                              ; preds = %150
  store i32* null, i32** %18, align 8
  %225 = bitcast [4096 x i8]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %225, i8 0, i64 4096, i1 false)
  %226 = call i32 (...) @BIO_f_buffer()
  %227 = call i32* @BIO_new(i32 %226)
  store i32* %227, i32** %18, align 8
  %228 = icmp eq i32* %227, null
  br i1 %228, label %237, label %229

229:                                              ; preds = %224
  %230 = load i8*, i8** %15, align 8
  %231 = call i32* @BIO_new_file(i8* %230, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  store i32* %231, i32** %235, align 8
  %236 = icmp eq i32* %231, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %229, %224
  %238 = load i32*, i32** %18, align 8
  %239 = call i32 @BIO_free_all(i32* %238)
  br label %273

240:                                              ; preds = %229
  %241 = load i32*, i32** %18, align 8
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = call i32* @BIO_push(i32* %241, i32* %246)
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  store i32* %247, i32** %251, align 8
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %258 = call i64 @BIO_buffer_peek(i32* %256, i8* %257, i32 4095)
  %259 = icmp sgt i64 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %240
  %261 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 4095
  store i8 0, i8* %261, align 1
  %262 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %263 = call i32* @strstr(i8* %262, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %269

265:                                              ; preds = %260
  %266 = load i32, i32* @is_pem, align 4
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  br label %269

269:                                              ; preds = %265, %260
  br label %270

270:                                              ; preds = %269, %240
  br label %271

271:                                              ; preds = %270, %223
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %272, %struct.TYPE_11__** %5, align 8
  br label %276

273:                                              ; preds = %237, %217, %171
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %275 = call i32 @OSSL_STORE_LOADER_CTX_free(%struct.TYPE_11__* %274)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %276

276:                                              ; preds = %273, %271, %146, %140, %104, %59
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %277
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @ERR_raise_data(i32, i64, i8*, i8*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local %struct.TYPE_11__* @OPENSSL_zalloc(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32* @OPENSSL_strdup(i8*) #1

declare dso_local i32* @OPENSSL_DIR_read(i32*, i8*) #1

declare dso_local i64 @openssl_strerror_r(i64, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_buffer(...) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32* @BIO_push(i32*, i32*) #1

declare dso_local i64 @BIO_buffer_peek(i32*, i8*, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @OSSL_STORE_LOADER_CTX_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
