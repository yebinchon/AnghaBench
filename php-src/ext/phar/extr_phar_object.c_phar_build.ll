; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_phar_object.c_phar_build.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_phar_object.c_phar_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 (%struct.TYPE_32__*, i32*)*, i32* (%struct.TYPE_32__*)* }
%struct._phar_t = type { i64, i8*, i32, i32, %struct.TYPE_23__*, %struct.TYPE_33__* }
%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_26__*, i32* }
%struct.TYPE_26__ = type { i64, i8*, i8*, i64, i64, i32* }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_31__, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 }

@exception = common dso_local global i32 0, align 4
@ZEND_HASH_APPLY_STOP = common dso_local global i32 0, align 4
@spl_ce_UnexpectedValueException = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Iterator %s returned no value\00", align 1
@spl_ce_BadMethodCallException = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Iterator %s returned an invalid stream handle\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Iterator %s returned an invalid key (must return a string)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"[stream]\00", align 1
@spl_ce_SplFileInfo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"Iterator %s returns an SplFileInfo object, so base directory must be specified\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@DEFAULT_SLASH = common dso_local global i32 0, align 4
@FS_IS_DIR = common dso_local global i32 0, align 4
@IS_TRUE = common dso_local global i32 0, align 4
@ZEND_HASH_APPLY_KEEP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Could not resolve file path\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Iterator %s returned an invalid value (must return a string)\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"Iterator %s returned a path \22%s\22 that is not in the base directory \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"Iterator %s returned a path \22%s\22 that open_basedir prevents opening\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@STREAM_MUST_SEEK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [58 x i8] c"Iterator %s returned a file that could not be opened \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c".phar\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Entry %s cannot be created: %s\00", align 1
@PHAR_MOD = common dso_local global i64 0, align 8
@PHAR_UFP = common dso_local global i64 0, align 8
@PHP_STREAM_COPY_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, i8*)* @phar_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phar_build(%struct.TYPE_32__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._phar_t*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_33__*, align 8
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_21__*, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 1, i32* %7, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = bitcast i8* %29 to %struct._phar_t*
  store %struct._phar_t* %30, %struct._phar_t** %8, align 8
  %31 = load %struct._phar_t*, %struct._phar_t** %8, align 8
  %32 = getelementptr inbounds %struct._phar_t, %struct._phar_t* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  store i8* null, i8** %16, align 8
  %34 = load %struct._phar_t*, %struct._phar_t** %8, align 8
  %35 = getelementptr inbounds %struct._phar_t, %struct._phar_t* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %37 = load %struct._phar_t*, %struct._phar_t** %8, align 8
  %38 = getelementptr inbounds %struct._phar_t, %struct._phar_t* %37, i32 0, i32 5
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %38, align 8
  store %struct.TYPE_33__* %39, %struct.TYPE_33__** %22, align 8
  %40 = load %struct._phar_t*, %struct._phar_t** %8, align 8
  %41 = getelementptr inbounds %struct._phar_t, %struct._phar_t* %40, i32 0, i32 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %41, align 8
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %23, align 8
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 1
  %47 = load i32* (%struct.TYPE_32__*)*, i32* (%struct.TYPE_32__*)** %46, align 8
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %49 = call i32* %47(%struct.TYPE_32__* %48)
  store i32* %49, i32** %6, align 8
  %50 = load i32, i32* @exception, align 4
  %51 = call i64 @EG(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %2
  %54 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %54, i32* %3, align 4
  br label %613

55:                                               ; preds = %2
  %56 = load i32*, i32** %6, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %61 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @ZSTR_VAL(i32 %62)
  %64 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %59, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %65, i32* %3, align 4
  br label %613

66:                                               ; preds = %55
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @Z_TYPE_P(i32* %67)
  switch i32 %68, label %228 [
    i32 131, label %69
    i32 132, label %70
    i32 133, label %136
  ]

69:                                               ; preds = %66
  br label %236

70:                                               ; preds = %66
  %71 = load i32*, i32** %12, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @php_stream_from_zval_no_verify(i32* %71, i32* %72)
  %74 = load i32*, i32** %12, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @spl_ce_BadMethodCallException, align 4
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @ZSTR_VAL(i32 %80)
  %82 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %77, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %83, i32* %3, align 4
  br label %613

84:                                               ; preds = %70
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_32__*, i32*)*, i32 (%struct.TYPE_32__*, i32*)** %88, align 8
  %90 = icmp ne i32 (%struct.TYPE_32__*, i32*)* %89, null
  br i1 %90, label %91, label %126

91:                                               ; preds = %84
  %92 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_32__*, i32*)*, i32 (%struct.TYPE_32__*, i32*)** %95, align 8
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %98 = call i32 %96(%struct.TYPE_32__* %97, i32* %24)
  %99 = load i32, i32* @exception, align 4
  %100 = call i64 @EG(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %103, i32* %3, align 4
  br label %613

104:                                              ; preds = %91
  %105 = load i32, i32* %24, align 4
  %106 = call i32 @Z_TYPE(i32 %105)
  %107 = icmp ne i32 %106, 131
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = call i32 @zval_ptr_dtor(i32* %24)
  %110 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @ZSTR_VAL(i32 %113)
  %115 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %110, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %114)
  %116 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %116, i32* %3, align 4
  br label %613

117:                                              ; preds = %104
  %118 = load i32, i32* %24, align 4
  %119 = call i64 @Z_STRLEN(i32 %118)
  store i64 %119, i64* %9, align 8
  %120 = load i32, i32* %24, align 4
  %121 = call i32 @Z_STRVAL(i32 %120)
  %122 = load i64, i64* %9, align 8
  %123 = call i8* @estrndup(i32 %121, i64 %122)
  store i8* %123, i8** %21, align 8
  %124 = load i8*, i8** %21, align 8
  store i8* %124, i8** %18, align 8
  %125 = call i32 @zval_ptr_dtor_str(i32* %24)
  br label %134

126:                                              ; preds = %84
  %127 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @ZSTR_VAL(i32 %130)
  %132 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %127, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %131)
  %133 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %133, i32* %3, align 4
  br label %613

134:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  %135 = call i32* @zend_string_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8, i32 0)
  store i32* %135, i32** %20, align 8
  br label %425

136:                                              ; preds = %66
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @Z_OBJCE_P(i32* %137)
  %139 = load i32, i32* @spl_ce_SplFileInfo, align 4
  %140 = call i32 @instanceof_function(i32 %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %227

142:                                              ; preds = %136
  store i8* null, i8** %25, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = call %struct.TYPE_25__* @Z_OBJ_P(i32* %143)
  %145 = bitcast %struct.TYPE_25__* %144 to i8*
  %146 = load i32*, i32** %6, align 8
  %147 = call %struct.TYPE_25__* @Z_OBJ_P(i32* %146)
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = sub i64 0, %152
  %154 = getelementptr inbounds i8, i8* %145, i64 %153
  %155 = bitcast i8* %154 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %155, %struct.TYPE_21__** %27, align 8
  %156 = load i64, i64* %10, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %142
  %159 = load i32, i32* @spl_ce_BadMethodCallException, align 4
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %161 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @ZSTR_VAL(i32 %162)
  %164 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %159, i32 0, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i8* %163)
  %165 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %165, i32* %3, align 4
  br label %613

166:                                              ; preds = %142
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  switch i32 %169, label %226 [
    i32 130, label %170
    i32 128, label %211
    i32 129, label %211
  ]

170:                                              ; preds = %166
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %172 = call i8* @spl_filesystem_object_get_path(%struct.TYPE_21__* %171, i32* null)
  store i8* %172, i8** %25, align 8
  %173 = load i8*, i8** %25, align 8
  %174 = load i32, i32* @DEFAULT_SLASH, align 4
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @spprintf(i8** %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %173, i32 %174, i32 %180)
  store i64 %181, i64* %13, align 8
  %182 = load i8*, i8** %15, align 8
  %183 = load i64, i64* %13, align 8
  %184 = load i32, i32* @FS_IS_DIR, align 4
  %185 = call i32 @php_stat(i8* %182, i64 %183, i32 %184, i32* %26)
  %186 = load i32, i32* %26, align 4
  %187 = call i32 @Z_TYPE(i32 %186)
  %188 = load i32, i32* @IS_TRUE, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %170
  %191 = load i8*, i8** %15, align 8
  %192 = call i32 @efree(i8* %191)
  %193 = load i32, i32* @ZEND_HASH_APPLY_KEEP, align 4
  store i32 %193, i32* %3, align 4
  br label %613

194:                                              ; preds = %170
  %195 = load i8*, i8** %15, align 8
  %196 = call i8* @expand_filepath(i8* %195, i32* null)
  store i8* %196, i8** %25, align 8
  %197 = load i8*, i8** %15, align 8
  %198 = call i32 @efree(i8* %197)
  %199 = load i8*, i8** %25, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %194
  %202 = load i8*, i8** %25, align 8
  store i8* %202, i8** %15, align 8
  %203 = load i8*, i8** %15, align 8
  %204 = call i64 @strlen(i8* %203)
  store i64 %204, i64* %13, align 8
  br label %209

205:                                              ; preds = %194
  %206 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %207 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %206, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %208 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %208, i32* %3, align 4
  br label %613

209:                                              ; preds = %201
  %210 = load i8*, i8** %15, align 8
  store i8* %210, i8** %18, align 8
  br label %241

211:                                              ; preds = %166, %166
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = call i8* @expand_filepath(i8* %214, i32* null)
  store i8* %215, i8** %15, align 8
  %216 = load i8*, i8** %15, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %222, label %218

218:                                              ; preds = %211
  %219 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %220 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %219, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %221 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %221, i32* %3, align 4
  br label %613

222:                                              ; preds = %211
  %223 = load i8*, i8** %15, align 8
  %224 = call i64 @strlen(i8* %223)
  store i64 %224, i64* %13, align 8
  %225 = load i8*, i8** %15, align 8
  store i8* %225, i8** %18, align 8
  br label %241

226:                                              ; preds = %166
  br label %227

227:                                              ; preds = %226, %136
  br label %228

228:                                              ; preds = %66, %227
  %229 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %230 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %231 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i8* @ZSTR_VAL(i32 %232)
  %234 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %229, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* %233)
  %235 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %235, i32* %3, align 4
  br label %613

236:                                              ; preds = %69
  %237 = load i32*, i32** %6, align 8
  %238 = call i8* @Z_STRVAL_P(i32* %237)
  store i8* %238, i8** %15, align 8
  %239 = load i32*, i32** %6, align 8
  %240 = call i64 @Z_STRLEN_P(i32* %239)
  store i64 %240, i64* %13, align 8
  br label %241

241:                                              ; preds = %236, %222, %209
  %242 = load i64, i64* %10, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %321

244:                                              ; preds = %241
  %245 = load i8*, i8** %17, align 8
  %246 = call i8* @expand_filepath(i8* %245, i32* null)
  store i8* %246, i8** %19, align 8
  %247 = load i8*, i8** %19, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %259, label %249

249:                                              ; preds = %244
  %250 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %251 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %250, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %252 = load i8*, i8** %18, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load i8*, i8** %18, align 8
  %256 = call i32 @efree(i8* %255)
  br label %257

257:                                              ; preds = %254, %249
  %258 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %258, i32* %3, align 4
  br label %613

259:                                              ; preds = %244
  %260 = load i8*, i8** %19, align 8
  store i8* %260, i8** %17, align 8
  %261 = load i8*, i8** %17, align 8
  %262 = call i64 @strlen(i8* %261)
  store i64 %262, i64* %10, align 8
  %263 = load i8*, i8** %15, align 8
  %264 = load i8*, i8** %17, align 8
  %265 = call i64 @strstr(i8* %263, i8* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %302

267:                                              ; preds = %259
  %268 = load i64, i64* %13, align 8
  %269 = load i64, i64* %10, align 8
  %270 = sub i64 %268, %269
  store i64 %270, i64* %9, align 8
  %271 = load i64, i64* %9, align 8
  %272 = icmp ule i64 %271, 0
  br i1 %272, label %273, label %283

273:                                              ; preds = %267
  %274 = load i8*, i8** %18, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  %277 = load i8*, i8** %18, align 8
  %278 = call i32 @efree(i8* %277)
  %279 = load i8*, i8** %19, align 8
  %280 = call i32 @efree(i8* %279)
  br label %281

281:                                              ; preds = %276, %273
  %282 = load i32, i32* @ZEND_HASH_APPLY_KEEP, align 4
  store i32 %282, i32* %3, align 4
  br label %613

283:                                              ; preds = %267
  %284 = load i8*, i8** %15, align 8
  %285 = load i64, i64* %10, align 8
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  store i8* %286, i8** %21, align 8
  %287 = load i8*, i8** %21, align 8
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 47
  br i1 %290, label %296, label %291

291:                                              ; preds = %283
  %292 = load i8*, i8** %21, align 8
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 92
  br i1 %295, label %296, label %301

296:                                              ; preds = %291, %283
  %297 = load i8*, i8** %21, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %21, align 8
  %299 = load i64, i64* %9, align 8
  %300 = add i64 %299, -1
  store i64 %300, i64* %9, align 8
  br label %301

301:                                              ; preds = %296, %291
  br label %320

302:                                              ; preds = %259
  %303 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %304 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %305 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i8* @ZSTR_VAL(i32 %306)
  %308 = load i8*, i8** %15, align 8
  %309 = load i8*, i8** %17, align 8
  %310 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %303, i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0), i8* %307, i8* %308, i8* %309)
  %311 = load i8*, i8** %18, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %313, label %318

313:                                              ; preds = %302
  %314 = load i8*, i8** %18, align 8
  %315 = call i32 @efree(i8* %314)
  %316 = load i8*, i8** %19, align 8
  %317 = call i32 @efree(i8* %316)
  br label %318

318:                                              ; preds = %313, %302
  %319 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %319, i32* %3, align 4
  br label %613

320:                                              ; preds = %301
  br label %372

321:                                              ; preds = %241
  %322 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_27__*, %struct.TYPE_27__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %324, i32 0, i32 0
  %326 = load i32 (%struct.TYPE_32__*, i32*)*, i32 (%struct.TYPE_32__*, i32*)** %325, align 8
  %327 = icmp ne i32 (%struct.TYPE_32__*, i32*)* %326, null
  br i1 %327, label %328, label %363

328:                                              ; preds = %321
  %329 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 0
  %333 = load i32 (%struct.TYPE_32__*, i32*)*, i32 (%struct.TYPE_32__*, i32*)** %332, align 8
  %334 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %335 = call i32 %333(%struct.TYPE_32__* %334, i32* %28)
  %336 = load i32, i32* @exception, align 4
  %337 = call i64 @EG(i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %328
  %340 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %340, i32* %3, align 4
  br label %613

341:                                              ; preds = %328
  %342 = load i32, i32* %28, align 4
  %343 = call i32 @Z_TYPE(i32 %342)
  %344 = icmp ne i32 %343, 131
  br i1 %344, label %345, label %354

345:                                              ; preds = %341
  %346 = call i32 @zval_ptr_dtor(i32* %28)
  %347 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %348 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %349 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i8* @ZSTR_VAL(i32 %350)
  %352 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %347, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %351)
  %353 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %353, i32* %3, align 4
  br label %613

354:                                              ; preds = %341
  %355 = load i32, i32* %28, align 4
  %356 = call i64 @Z_STRLEN(i32 %355)
  store i64 %356, i64* %9, align 8
  %357 = load i32, i32* %28, align 4
  %358 = call i32 @Z_STRVAL(i32 %357)
  %359 = load i64, i64* %9, align 8
  %360 = call i8* @estrndup(i32 %358, i64 %359)
  store i8* %360, i8** %21, align 8
  %361 = load i8*, i8** %21, align 8
  store i8* %361, i8** %18, align 8
  %362 = call i32 @zval_ptr_dtor_str(i32* %28)
  br label %371

363:                                              ; preds = %321
  %364 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %365 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %366 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = call i8* @ZSTR_VAL(i32 %367)
  %369 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %364, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %368)
  %370 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %370, i32* %3, align 4
  br label %613

371:                                              ; preds = %354
  br label %372

372:                                              ; preds = %371, %320
  %373 = load i8*, i8** %15, align 8
  %374 = call i64 @php_check_open_basedir(i8* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %397

376:                                              ; preds = %372
  %377 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %378 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %379 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = call i8* @ZSTR_VAL(i32 %380)
  %382 = load i8*, i8** %15, align 8
  %383 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %377, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i8* %381, i8* %382)
  %384 = load i8*, i8** %18, align 8
  %385 = icmp ne i8* %384, null
  br i1 %385, label %386, label %389

386:                                              ; preds = %376
  %387 = load i8*, i8** %18, align 8
  %388 = call i32 @efree(i8* %387)
  br label %389

389:                                              ; preds = %386, %376
  %390 = load i8*, i8** %19, align 8
  %391 = icmp ne i8* %390, null
  br i1 %391, label %392, label %395

392:                                              ; preds = %389
  %393 = load i8*, i8** %19, align 8
  %394 = call i32 @efree(i8* %393)
  br label %395

395:                                              ; preds = %392, %389
  %396 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %396, i32* %3, align 4
  br label %613

397:                                              ; preds = %372
  %398 = load i8*, i8** %15, align 8
  %399 = load i32, i32* @STREAM_MUST_SEEK, align 4
  %400 = call i32* @php_stream_open_wrapper(i8* %398, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %399, i32** %20)
  store i32* %400, i32** %12, align 8
  %401 = load i32*, i32** %12, align 8
  %402 = icmp ne i32* %401, null
  br i1 %402, label %424, label %403

403:                                              ; preds = %397
  %404 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %405 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %406 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = call i8* @ZSTR_VAL(i32 %407)
  %409 = load i8*, i8** %15, align 8
  %410 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %404, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0), i8* %408, i8* %409)
  %411 = load i8*, i8** %18, align 8
  %412 = icmp ne i8* %411, null
  br i1 %412, label %413, label %416

413:                                              ; preds = %403
  %414 = load i8*, i8** %18, align 8
  %415 = call i32 @efree(i8* %414)
  br label %416

416:                                              ; preds = %413, %403
  %417 = load i8*, i8** %19, align 8
  %418 = icmp ne i8* %417, null
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = load i8*, i8** %19, align 8
  %421 = call i32 @efree(i8* %420)
  br label %422

422:                                              ; preds = %419, %416
  %423 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %423, i32* %3, align 4
  br label %613

424:                                              ; preds = %397
  br label %425

425:                                              ; preds = %424, %134
  %426 = load i64, i64* %9, align 8
  %427 = icmp uge i64 %426, 5
  br i1 %427, label %428, label %458

428:                                              ; preds = %425
  %429 = load i8*, i8** %21, align 8
  %430 = call i32 @memcmp(i8* %429, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 5)
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %458, label %432

432:                                              ; preds = %428
  %433 = load i8*, i8** %18, align 8
  %434 = icmp ne i8* %433, null
  br i1 %434, label %435, label %438

435:                                              ; preds = %432
  %436 = load i8*, i8** %18, align 8
  %437 = call i32 @efree(i8* %436)
  br label %438

438:                                              ; preds = %435, %432
  %439 = load i8*, i8** %19, align 8
  %440 = icmp ne i8* %439, null
  br i1 %440, label %441, label %444

441:                                              ; preds = %438
  %442 = load i8*, i8** %19, align 8
  %443 = call i32 @efree(i8* %442)
  br label %444

444:                                              ; preds = %441, %438
  %445 = load i32*, i32** %20, align 8
  %446 = icmp ne i32* %445, null
  br i1 %446, label %447, label %450

447:                                              ; preds = %444
  %448 = load i32*, i32** %20, align 8
  %449 = call i32 @zend_string_release_ex(i32* %448, i32 0)
  br label %450

450:                                              ; preds = %447, %444
  %451 = load i32, i32* %7, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %450
  %454 = load i32*, i32** %12, align 8
  %455 = call i32 @php_stream_close(i32* %454)
  br label %456

456:                                              ; preds = %453, %450
  %457 = load i32, i32* @ZEND_HASH_APPLY_KEEP, align 4
  store i32 %457, i32* %3, align 4
  br label %613

458:                                              ; preds = %428, %425
  %459 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %460 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %459, i32 0, i32 0
  %461 = load %struct.TYPE_24__*, %struct.TYPE_24__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %465 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %464, i32 0, i32 0
  %466 = load %struct.TYPE_24__*, %struct.TYPE_24__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = load i8*, i8** %21, align 8
  %470 = load i64, i64* %9, align 8
  %471 = call %struct.TYPE_22__* @phar_get_or_create_entry_data(i32 %463, i32 %468, i8* %469, i64 %470, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 0, i8** %16, i32 1)
  store %struct.TYPE_22__* %471, %struct.TYPE_22__** %11, align 8
  %472 = icmp ne %struct.TYPE_22__* %471, null
  br i1 %472, label %505, label %473

473:                                              ; preds = %458
  %474 = load i32, i32* @spl_ce_BadMethodCallException, align 4
  %475 = load i8*, i8** %21, align 8
  %476 = load i8*, i8** %16, align 8
  %477 = call i32 (i32, i32, i8*, ...) @zend_throw_exception_ex(i32 %474, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8* %475, i8* %476)
  %478 = load i8*, i8** %16, align 8
  %479 = call i32 @efree(i8* %478)
  %480 = load i8*, i8** %18, align 8
  %481 = icmp ne i8* %480, null
  br i1 %481, label %482, label %485

482:                                              ; preds = %473
  %483 = load i8*, i8** %18, align 8
  %484 = call i32 @efree(i8* %483)
  br label %485

485:                                              ; preds = %482, %473
  %486 = load i32*, i32** %20, align 8
  %487 = icmp ne i32* %486, null
  br i1 %487, label %488, label %491

488:                                              ; preds = %485
  %489 = load i32*, i32** %20, align 8
  %490 = call i32 @zend_string_release_ex(i32* %489, i32 0)
  br label %491

491:                                              ; preds = %488, %485
  %492 = load i8*, i8** %19, align 8
  %493 = icmp ne i8* %492, null
  br i1 %493, label %494, label %497

494:                                              ; preds = %491
  %495 = load i8*, i8** %19, align 8
  %496 = call i32 @efree(i8* %495)
  br label %497

497:                                              ; preds = %494, %491
  %498 = load i32, i32* %7, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %503

500:                                              ; preds = %497
  %501 = load i32*, i32** %12, align 8
  %502 = call i32 @php_stream_close(i32* %501)
  br label %503

503:                                              ; preds = %500, %497
  %504 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %504, i32* %3, align 4
  br label %613

505:                                              ; preds = %458
  %506 = load i8*, i8** %16, align 8
  %507 = icmp ne i8* %506, null
  br i1 %507, label %508, label %511

508:                                              ; preds = %505
  %509 = load i8*, i8** %16, align 8
  %510 = call i32 @efree(i8* %509)
  br label %511

511:                                              ; preds = %508, %505
  %512 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %513 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %512, i32 0, i32 0
  %514 = load %struct.TYPE_26__*, %struct.TYPE_26__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = load i64, i64* @PHAR_MOD, align 8
  %518 = icmp eq i64 %516, %517
  br i1 %518, label %519, label %526

519:                                              ; preds = %511
  %520 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %521 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %520, i32 0, i32 0
  %522 = load %struct.TYPE_26__*, %struct.TYPE_26__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %522, i32 0, i32 5
  %524 = load i32*, i32** %523, align 8
  %525 = call i32 @php_stream_close(i32* %524)
  br label %526

526:                                              ; preds = %519, %511
  %527 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %528 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %527, i32 0, i32 0
  %529 = load %struct.TYPE_26__*, %struct.TYPE_26__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %529, i32 0, i32 5
  store i32* null, i32** %530, align 8
  %531 = load i64, i64* @PHAR_UFP, align 8
  %532 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %533 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %532, i32 0, i32 0
  %534 = load %struct.TYPE_26__*, %struct.TYPE_26__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %534, i32 0, i32 0
  store i64 %531, i64* %535, align 8
  %536 = load %struct._phar_t*, %struct._phar_t** %8, align 8
  %537 = getelementptr inbounds %struct._phar_t, %struct._phar_t* %536, i32 0, i32 3
  %538 = load i32, i32* %537, align 4
  %539 = call i8* @php_stream_tell(i32 %538)
  %540 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %541 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %540, i32 0, i32 0
  %542 = load %struct.TYPE_26__*, %struct.TYPE_26__** %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %542, i32 0, i32 2
  store i8* %539, i8** %543, align 8
  %544 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %545 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %544, i32 0, i32 0
  %546 = load %struct.TYPE_26__*, %struct.TYPE_26__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %546, i32 0, i32 1
  store i8* %539, i8** %547, align 8
  %548 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %549 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %548, i32 0, i32 1
  store i32* null, i32** %549, align 8
  %550 = load i32*, i32** %12, align 8
  %551 = load %struct._phar_t*, %struct._phar_t** %8, align 8
  %552 = getelementptr inbounds %struct._phar_t, %struct._phar_t* %551, i32 0, i32 3
  %553 = load i32, i32* %552, align 4
  %554 = load i32, i32* @PHP_STREAM_COPY_ALL, align 4
  %555 = call i32 @php_stream_copy_to_stream_ex(i32* %550, i32 %553, i32 %554, i64* %14)
  %556 = load %struct._phar_t*, %struct._phar_t** %8, align 8
  %557 = getelementptr inbounds %struct._phar_t, %struct._phar_t* %556, i32 0, i32 3
  %558 = load i32, i32* %557, align 4
  %559 = call i8* @php_stream_tell(i32 %558)
  %560 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %561 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %560, i32 0, i32 0
  %562 = load %struct.TYPE_26__*, %struct.TYPE_26__** %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %562, i32 0, i32 2
  %564 = load i8*, i8** %563, align 8
  %565 = ptrtoint i8* %559 to i64
  %566 = ptrtoint i8* %564 to i64
  %567 = sub i64 %565, %566
  %568 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %569 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %568, i32 0, i32 0
  %570 = load %struct.TYPE_26__*, %struct.TYPE_26__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %570, i32 0, i32 4
  store i64 %567, i64* %571, align 8
  %572 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %573 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %572, i32 0, i32 0
  %574 = load %struct.TYPE_26__*, %struct.TYPE_26__** %573, align 8
  %575 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %574, i32 0, i32 3
  store i64 %567, i64* %575, align 8
  br label %576

576:                                              ; preds = %526
  %577 = load i32, i32* %7, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %582

579:                                              ; preds = %576
  %580 = load i32*, i32** %12, align 8
  %581 = call i32 @php_stream_close(i32* %580)
  br label %582

582:                                              ; preds = %579, %576
  %583 = load %struct._phar_t*, %struct._phar_t** %8, align 8
  %584 = getelementptr inbounds %struct._phar_t, %struct._phar_t* %583, i32 0, i32 2
  %585 = load i32, i32* %584, align 8
  %586 = load i8*, i8** %21, align 8
  %587 = load i32*, i32** %20, align 8
  %588 = call i32 @add_assoc_str(i32 %585, i8* %586, i32* %587)
  %589 = load i8*, i8** %18, align 8
  %590 = icmp ne i8* %589, null
  br i1 %590, label %591, label %594

591:                                              ; preds = %582
  %592 = load i8*, i8** %18, align 8
  %593 = call i32 @efree(i8* %592)
  br label %594

594:                                              ; preds = %591, %582
  %595 = load i8*, i8** %19, align 8
  %596 = icmp ne i8* %595, null
  br i1 %596, label %597, label %600

597:                                              ; preds = %594
  %598 = load i8*, i8** %19, align 8
  %599 = call i32 @efree(i8* %598)
  br label %600

600:                                              ; preds = %597, %594
  %601 = load i64, i64* %14, align 8
  %602 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %603 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %602, i32 0, i32 0
  %604 = load %struct.TYPE_26__*, %struct.TYPE_26__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %604, i32 0, i32 3
  store i64 %601, i64* %605, align 8
  %606 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %607 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %606, i32 0, i32 0
  %608 = load %struct.TYPE_26__*, %struct.TYPE_26__** %607, align 8
  %609 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %608, i32 0, i32 4
  store i64 %601, i64* %609, align 8
  %610 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %611 = call i32 @phar_entry_delref(%struct.TYPE_22__* %610)
  %612 = load i32, i32* @ZEND_HASH_APPLY_KEEP, align 4
  store i32 %612, i32* %3, align 4
  br label %613

613:                                              ; preds = %600, %503, %456, %422, %395, %363, %345, %339, %318, %281, %257, %228, %218, %205, %190, %158, %126, %108, %102, %76, %58, %53
  %614 = load i32, i32* %3, align 4
  ret i32 %614
}

declare dso_local i64 @EG(i32) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, ...) #1

declare dso_local i8* @ZSTR_VAL(i32) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @php_stream_from_zval_no_verify(i32*, i32*) #1

declare dso_local i32 @Z_TYPE(i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i64 @Z_STRLEN(i32) #1

declare dso_local i8* @estrndup(i32, i64) #1

declare dso_local i32 @Z_STRVAL(i32) #1

declare dso_local i32 @zval_ptr_dtor_str(i32*) #1

declare dso_local i32* @zend_string_init(i8*, i32, i32) #1

declare dso_local i32 @instanceof_function(i32, i32) #1

declare dso_local i32 @Z_OBJCE_P(i32*) #1

declare dso_local %struct.TYPE_25__* @Z_OBJ_P(i32*) #1

declare dso_local i8* @spl_filesystem_object_get_path(%struct.TYPE_21__*, i32*) #1

declare dso_local i64 @spprintf(i8**, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @php_stat(i8*, i64, i32, i32*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i8* @expand_filepath(i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @php_check_open_basedir(i8*) #1

declare dso_local i32* @php_stream_open_wrapper(i8*, i8*, i32, i32**) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @php_stream_close(i32*) #1

declare dso_local %struct.TYPE_22__* @phar_get_or_create_entry_data(i32, i32, i8*, i64, i8*, i32, i8**, i32) #1

declare dso_local i8* @php_stream_tell(i32) #1

declare dso_local i32 @php_stream_copy_to_stream_ex(i32*, i32, i32, i64*) #1

declare dso_local i32 @add_assoc_str(i32, i8*, i32*) #1

declare dso_local i32 @phar_entry_delref(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
