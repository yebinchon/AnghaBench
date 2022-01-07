; ModuleID = '/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__function_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__function_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32*, i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_37__, %struct.TYPE_35__ }
%struct.TYPE_37__ = type { i32, %struct.TYPE_36__*, i32*, %struct.TYPE_28__*, %struct.TYPE_34__* }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_35__ = type { i32, i32, i32, i32*, i32* }
%struct.TYPE_28__ = type { i32*, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_38__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i8* }

@ZEND_USER_FUNCTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@ZEND_ACC_CLOSURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Closure [ \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Method [ \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Function [ \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"<user\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"<internal\00", align 1
@ZEND_ACC_DEPRECATED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c", deprecated\00", align 1
@ZEND_INTERNAL_FUNCTION = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c", inherits %s\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c", overwrites %s\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c", prototype %s\00", align 1
@ZEND_ACC_CTOR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c", ctor\00", align 1
@ZEND_ACC_DTOR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c", dtor\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@ZEND_ACC_ABSTRACT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"abstract \00", align 1
@ZEND_ACC_FINAL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"final \00", align 1
@ZEND_ACC_STATIC = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@ZEND_ACC_PPP_MASK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"public \00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"private \00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"protected \00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"<visibility error> \00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"method \00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"function \00", align 1
@ZEND_ACC_RETURN_REFERENCE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [8 x i8] c"%s ] {\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"%s  @@ %s %d - %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%s  \00", align 1
@ZEND_ACC_HAS_RETURN_TYPE = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"  %s- Return [ \00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"%s}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_27__*, %struct.TYPE_28__*, i8*)* @_function_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_function_string(%struct.TYPE_29__* %0, %struct.TYPE_27__* %1, %struct.TYPE_28__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_29__, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = bitcast %struct.TYPE_29__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ZEND_USER_FUNCTION, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %4
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = call i8* @ZSTR_VAL(i32* %31)
  %33 = call i32 (%struct.TYPE_29__*, i8*, ...) @smart_str_append_printf(%struct.TYPE_29__* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %32)
  br label %34

34:                                               ; preds = %25, %19, %4
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = call i32 @smart_str_appendl(%struct.TYPE_29__* %35, i8* %36, i32 %38)
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ZEND_ACC_CLOSURE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %57

49:                                               ; preds = %34
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %52, align 8
  %54 = icmp ne %struct.TYPE_28__* %53, null
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  br label %57

57:                                               ; preds = %49, %48
  %58 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %48 ], [ %56, %49 ]
  %59 = call i32 (%struct.TYPE_29__*, i8*, ...) @smart_str_append_printf(%struct.TYPE_29__* %40, i8* %58)
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ZEND_USER_FUNCTION, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %68 = call i32 (%struct.TYPE_29__*, i8*, ...) @smart_str_append_printf(%struct.TYPE_29__* %60, i8* %67)
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @ZEND_ACC_DEPRECATED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %57
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %78 = call i32 @smart_str_appends(%struct.TYPE_29__* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %57
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ZEND_INTERNAL_FUNCTION, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %87 = bitcast %struct.TYPE_27__* %86 to %struct.TYPE_38__*
  %88 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %88, align 8
  %90 = icmp ne %struct.TYPE_30__* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %94 = bitcast %struct.TYPE_27__* %93 to %struct.TYPE_38__*
  %95 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (%struct.TYPE_29__*, i8*, ...) @smart_str_append_printf(%struct.TYPE_29__* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %91, %85, %79
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %102 = icmp ne %struct.TYPE_28__* %101, null
  br i1 %102, label %103, label %176

103:                                              ; preds = %100
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %106, align 8
  %108 = icmp ne %struct.TYPE_28__* %107, null
  br i1 %108, label %109, label %176

109:                                              ; preds = %103
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %112, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %115 = icmp ne %struct.TYPE_28__* %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %109
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i8* @ZSTR_VAL(i32* %123)
  %125 = call i32 (%struct.TYPE_29__*, i8*, ...) @smart_str_append_printf(%struct.TYPE_29__* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %124)
  br label %175

126:                                              ; preds = %109
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %131, align 8
  %133 = icmp ne %struct.TYPE_31__* %132, null
  br i1 %133, label %134, label %174

134:                                              ; preds = %126
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = call i32* @zend_string_tolower(i32* %138)
  store i32* %139, i32** %11, align 8
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 0
  %147 = load i32*, i32** %11, align 8
  %148 = call %struct.TYPE_27__* @zend_hash_find_ptr(i32* %146, i32* %147)
  store %struct.TYPE_27__* %148, %struct.TYPE_27__** %10, align 8
  %149 = icmp ne %struct.TYPE_27__* %148, null
  br i1 %149, label %150, label %171

150:                                              ; preds = %134
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %153, align 8
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %157, align 8
  %159 = icmp ne %struct.TYPE_28__* %154, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %150
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = call i8* @ZSTR_VAL(i32* %167)
  %169 = call i32 (%struct.TYPE_29__*, i8*, ...) @smart_str_append_printf(%struct.TYPE_29__* %161, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %160, %150
  br label %171

171:                                              ; preds = %170, %134
  %172 = load i32*, i32** %11, align 8
  %173 = call i32 @zend_string_release_ex(i32* %172, i32 0)
  br label %174

174:                                              ; preds = %171, %126
  br label %175

175:                                              ; preds = %174, %116
  br label %176

176:                                              ; preds = %175, %103, %100
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_34__*, %struct.TYPE_34__** %179, align 8
  %181 = icmp ne %struct.TYPE_34__* %180, null
  br i1 %181, label %182, label %204

182:                                              ; preds = %176
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_34__*, %struct.TYPE_34__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %188, align 8
  %190 = icmp ne %struct.TYPE_32__* %189, null
  br i1 %190, label %191, label %204

191:                                              ; preds = %182
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %194, i32 0, i32 4
  %196 = load %struct.TYPE_34__*, %struct.TYPE_34__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_32__*, %struct.TYPE_32__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = call i8* @ZSTR_VAL(i32* %201)
  %203 = call i32 (%struct.TYPE_29__*, i8*, ...) @smart_str_append_printf(%struct.TYPE_29__* %192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %202)
  br label %204

204:                                              ; preds = %191, %182, %176
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @ZEND_ACC_CTOR, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %204
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %214 = call i32 @smart_str_appends(%struct.TYPE_29__* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %204
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @ZEND_ACC_DTOR, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %215
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %225 = call i32 @smart_str_appends(%struct.TYPE_29__* %224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %226

226:                                              ; preds = %223, %215
  %227 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %228 = call i32 @smart_str_appends(%struct.TYPE_29__* %227, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @ZEND_ACC_ABSTRACT, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %226
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %238 = call i32 @smart_str_appends(%struct.TYPE_29__* %237, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %239

239:                                              ; preds = %236, %226
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @ZEND_ACC_FINAL, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %239
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %249 = call i32 @smart_str_appends(%struct.TYPE_29__* %248, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %250

250:                                              ; preds = %247, %239
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %250
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %260 = call i32 @smart_str_appends(%struct.TYPE_29__* %259, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %261

261:                                              ; preds = %258, %250
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %263, i32 0, i32 3
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %264, align 8
  %266 = icmp ne %struct.TYPE_28__* %265, null
  br i1 %266, label %267, label %289

267:                                              ; preds = %261
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @ZEND_ACC_PPP_MASK, align 4
  %273 = and i32 %271, %272
  switch i32 %273, label %283 [
    i32 128, label %274
    i32 130, label %277
    i32 129, label %280
  ]

274:                                              ; preds = %267
  %275 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %276 = call i32 @smart_str_appends(%struct.TYPE_29__* %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %286

277:                                              ; preds = %267
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %279 = call i32 @smart_str_appends(%struct.TYPE_29__* %278, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %286

280:                                              ; preds = %267
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %282 = call i32 @smart_str_appends(%struct.TYPE_29__* %281, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  br label %286

283:                                              ; preds = %267
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %285 = call i32 @smart_str_appends(%struct.TYPE_29__* %284, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  br label %286

286:                                              ; preds = %283, %280, %277, %274
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %288 = call i32 @smart_str_appends(%struct.TYPE_29__* %287, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  br label %292

289:                                              ; preds = %261
  %290 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %291 = call i32 @smart_str_appends(%struct.TYPE_29__* %290, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %292

292:                                              ; preds = %289, %286
  %293 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @ZEND_ACC_RETURN_REFERENCE, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %292
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %302 = call i32 @smart_str_appendc(%struct.TYPE_29__* %301, i8 signext 38)
  br label %303

303:                                              ; preds = %300, %292
  %304 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %305 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %306, i32 0, i32 2
  %308 = load i32*, i32** %307, align 8
  %309 = call i8* @ZSTR_VAL(i32* %308)
  %310 = call i32 (%struct.TYPE_29__*, i8*, ...) @smart_str_append_printf(%struct.TYPE_29__* %304, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* %309)
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @ZEND_USER_FUNCTION, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %333

316:                                              ; preds = %303
  %317 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %318 = load i8*, i8** %8, align 8
  %319 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %320, i32 0, i32 3
  %322 = load i32*, i32** %321, align 8
  %323 = call i8* @ZSTR_VAL(i32* %322)
  %324 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = call i32 (%struct.TYPE_29__*, i8*, ...) @smart_str_append_printf(%struct.TYPE_29__* %317, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8* %318, i8* %323, i32 %327, i32 %331)
  br label %333

333:                                              ; preds = %316, %303
  %334 = load i8*, i8** %8, align 8
  %335 = call i32 (%struct.TYPE_29__*, i8*, ...) @smart_str_append_printf(%struct.TYPE_29__* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* %334)
  %336 = call i32 @smart_str_0(%struct.TYPE_29__* %9)
  %337 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @ZEND_ACC_CLOSURE, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %333
  %345 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = call i8* @ZSTR_VAL(i32* %348)
  %350 = call i32 @_function_closure_string(%struct.TYPE_29__* %345, %struct.TYPE_27__* %346, i8* %349)
  br label %351

351:                                              ; preds = %344, %333
  %352 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %353 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = call i8* @ZSTR_VAL(i32* %355)
  %357 = call i32 @_function_parameter_string(%struct.TYPE_29__* %352, %struct.TYPE_27__* %353, i8* %356)
  %358 = call i32 @smart_str_free(%struct.TYPE_29__* %9)
  %359 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @ZEND_ACC_HAS_RETURN_TYPE, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %397

366:                                              ; preds = %351
  %367 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %368 = load i8*, i8** %8, align 8
  %369 = call i32 (%struct.TYPE_29__*, i8*, ...) @smart_str_append_printf(%struct.TYPE_29__* %367, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i8* %368)
  %370 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_36__*, %struct.TYPE_36__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %373, i64 -1
  %375 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = call i64 @ZEND_TYPE_IS_SET(i32 %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %394

379:                                              ; preds = %366
  %380 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %381, i32 0, i32 1
  %383 = load %struct.TYPE_36__*, %struct.TYPE_36__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %383, i64 -1
  %385 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = call i32* @zend_type_to_string(i32 %386)
  store i32* %387, i32** %12, align 8
  %388 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %389 = load i32*, i32** %12, align 8
  %390 = call i8* @ZSTR_VAL(i32* %389)
  %391 = call i32 (%struct.TYPE_29__*, i8*, ...) @smart_str_append_printf(%struct.TYPE_29__* %388, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* %390)
  %392 = load i32*, i32** %12, align 8
  %393 = call i32 @zend_string_release(i32* %392)
  br label %394

394:                                              ; preds = %379, %366
  %395 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %396 = call i32 @smart_str_appends(%struct.TYPE_29__* %395, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  br label %397

397:                                              ; preds = %394, %351
  %398 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %399 = load i8*, i8** %8, align 8
  %400 = call i32 (%struct.TYPE_29__*, i8*, ...) @smart_str_append_printf(%struct.TYPE_29__* %398, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8* %399)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @smart_str_append_printf(%struct.TYPE_29__*, i8*, ...) #2

declare dso_local i8* @ZSTR_VAL(i32*) #2

declare dso_local i32 @smart_str_appendl(%struct.TYPE_29__*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @smart_str_appends(%struct.TYPE_29__*, i8*) #2

declare dso_local i32* @zend_string_tolower(i32*) #2

declare dso_local %struct.TYPE_27__* @zend_hash_find_ptr(i32*, i32*) #2

declare dso_local i32 @zend_string_release_ex(i32*, i32) #2

declare dso_local i32 @smart_str_appendc(%struct.TYPE_29__*, i8 signext) #2

declare dso_local i32 @smart_str_0(%struct.TYPE_29__*) #2

declare dso_local i32 @_function_closure_string(%struct.TYPE_29__*, %struct.TYPE_27__*, i8*) #2

declare dso_local i32 @_function_parameter_string(%struct.TYPE_29__*, %struct.TYPE_27__*, i8*) #2

declare dso_local i32 @smart_str_free(%struct.TYPE_29__*) #2

declare dso_local i64 @ZEND_TYPE_IS_SET(i32) #2

declare dso_local i32* @zend_type_to_string(i32) #2

declare dso_local i32 @zend_string_release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
