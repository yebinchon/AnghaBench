; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_object_create_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_object_create_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i8*, i32, i8*, i32, %struct.TYPE_26__, i32, %struct.TYPE_27__*, %struct.TYPE_27__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i8*, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_27__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }

@EH_THROW = common dso_local global i32 0, align 4
@spl_ce_RuntimeException = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Could not open file\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@spl_ce_SplFileInfo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"__construct\00", align 1
@spl_ce_SplFileObject = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"|sbr\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Operation not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_28__* (i32, %struct.TYPE_28__*, i32, %struct.TYPE_27__*, i32*)* @spl_filesystem_object_create_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_28__* @spl_filesystem_object_create_type(i32 %0, %struct.TYPE_28__* %1, i32 %2, %struct.TYPE_27__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* @EH_THROW, align 4
  %18 = load i32, i32* @spl_ce_RuntimeException, align 4
  %19 = call i32 @zend_replace_error_handling(i32 %17, i32 %18, i32* %16)
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %39 [
    i32 128, label %23
    i32 129, label %23
    i32 130, label %24
  ]

23:                                               ; preds = %5, %5
  br label %39

24:                                               ; preds = %5
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @spl_ce_RuntimeException, align 4
  %36 = call i32 @zend_throw_exception_ex(i32 %35, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @zend_restore_error_handling(i32* %16)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %6, align 8
  br label %263

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %5, %23
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %261 [
    i32 128, label %41
    i32 129, label %124
    i32 130, label %257
  ]

41:                                               ; preds = %39
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %43 = icmp ne %struct.TYPE_27__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  br label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %48, align 8
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi %struct.TYPE_27__* [ %45, %44 ], [ %49, %46 ]
  store %struct.TYPE_27__* %51, %struct.TYPE_27__** %10, align 8
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %53 = call i32 @zend_update_class_constants(%struct.TYPE_27__* %52)
  %54 = load i32, i32* @SUCCESS, align 4
  %55 = icmp ne i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @UNEXPECTED(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %261

60:                                               ; preds = %50
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %62 = call i32 @spl_filesystem_object_new_ex(%struct.TYPE_27__* %61)
  %63 = call %struct.TYPE_28__* @spl_filesystem_from_obj(i32 %62)
  store %struct.TYPE_28__* %63, %struct.TYPE_28__** %12, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 6
  %67 = call i32 @ZVAL_OBJ(i32* %64, i32* %66)
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %69 = call i32 @spl_filesystem_object_get_file_name(%struct.TYPE_28__* %68)
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @spl_ce_SplFileInfo, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %60
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ZVAL_STRINGL(i32* %14, i8* %81, i32 %84)
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @Z_OBJ_P(i32* %86)
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  %91 = call i32 @zend_call_method_with_1_params(i32 %87, %struct.TYPE_27__* %88, %struct.TYPE_21__** %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* %14)
  %92 = call i32 @zval_ptr_dtor(i32* %14)
  br label %123

93:                                               ; preds = %60
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @estrndup(i8* %96, i32 %99)
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 4
  %111 = call i8* @spl_filesystem_object_get_path(%struct.TYPE_28__* %108, i32* %110)
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @estrndup(i8* %116, i32 %119)
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %93, %78
  br label %261

124:                                              ; preds = %39
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %126 = icmp ne %struct.TYPE_27__* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  br label %133

129:                                              ; preds = %124
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 7
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %131, align 8
  br label %133

133:                                              ; preds = %129, %127
  %134 = phi %struct.TYPE_27__* [ %128, %127 ], [ %132, %129 ]
  store %struct.TYPE_27__* %134, %struct.TYPE_27__** %10, align 8
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %136 = call i32 @zend_update_class_constants(%struct.TYPE_27__* %135)
  %137 = load i32, i32* @SUCCESS, align 4
  %138 = icmp ne i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @UNEXPECTED(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %261

143:                                              ; preds = %133
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %145 = call i32 @spl_filesystem_object_new_ex(%struct.TYPE_27__* %144)
  %146 = call %struct.TYPE_28__* @spl_filesystem_from_obj(i32 %145)
  store %struct.TYPE_28__* %146, %struct.TYPE_28__** %12, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 6
  %150 = call i32 @ZVAL_OBJ(i32* %147, i32* %149)
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %152 = call i32 @spl_filesystem_object_get_file_name(%struct.TYPE_28__* %151)
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @spl_ce_SplFileObject, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %143
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ZVAL_STRINGL(i32* %14, i8* %164, i32 %167)
  %169 = call i32 @ZVAL_STRINGL(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %170 = load i32*, i32** %11, align 8
  %171 = call i32 @Z_OBJ_P(i32* %170)
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 0
  %175 = call i32 @zend_call_method_with_2_params(i32 %171, %struct.TYPE_27__* %172, %struct.TYPE_21__** %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* %14, i32* %15)
  %176 = call i32 @zval_ptr_dtor(i32* %14)
  %177 = call i32 @zval_ptr_dtor(i32* %15)
  br label %256

178:                                              ; preds = %143
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 4
  %192 = call i8* @spl_filesystem_object_get_path(%struct.TYPE_28__* %189, i32* %191)
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 3
  store i8* %192, i8** %194, align 8
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = call i8* @estrndup(i8* %197, i32 %200)
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 3
  store i8* %201, i8** %203, align 8
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %207, align 8
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 1
  store i32 1, i32* %211, align 8
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %243

214:                                              ; preds = %178
  %215 = load i32, i32* %7, align 4
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 5
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 2
  %228 = call i32 @zend_parse_parameters(i32 %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %219, i32* %223, i32* %13, i32* %227)
  %229 = load i32, i32* @FAILURE, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %243

231:                                              ; preds = %214
  %232 = call i32 @zend_restore_error_handling(i32* %16)
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %235, i32 0, i32 0
  store i8* null, i8** %236, align 8
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 1
  store i8* null, i8** %238, align 8
  %239 = load i32*, i32** %11, align 8
  %240 = call i32 @zval_ptr_dtor(i32* %239)
  %241 = load i32*, i32** %11, align 8
  %242 = call i32 @ZVAL_NULL(i32* %241)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %6, align 8
  br label %263

243:                                              ; preds = %214, %178
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %245 = load i32, i32* %13, align 4
  %246 = call i32 @spl_filesystem_file_open(%struct.TYPE_28__* %244, i32 %245, i32 0)
  %247 = load i32, i32* @FAILURE, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %243
  %250 = call i32 @zend_restore_error_handling(i32* %16)
  %251 = load i32*, i32** %11, align 8
  %252 = call i32 @zval_ptr_dtor(i32* %251)
  %253 = load i32*, i32** %11, align 8
  %254 = call i32 @ZVAL_NULL(i32* %253)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %6, align 8
  br label %263

255:                                              ; preds = %243
  br label %256

256:                                              ; preds = %255, %161
  br label %261

257:                                              ; preds = %39
  %258 = call i32 @zend_restore_error_handling(i32* %16)
  %259 = load i32, i32* @spl_ce_RuntimeException, align 4
  %260 = call i32 @zend_throw_exception_ex(i32 %259, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %6, align 8
  br label %263

261:                                              ; preds = %39, %256, %142, %123, %59
  %262 = call i32 @zend_restore_error_handling(i32* %16)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %6, align 8
  br label %263

263:                                              ; preds = %261, %257, %249, %231, %34
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  ret %struct.TYPE_28__* %264
}

declare dso_local i32 @zend_replace_error_handling(i32, i32, i32*) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*) #1

declare dso_local i32 @zend_restore_error_handling(i32*) #1

declare dso_local i32 @UNEXPECTED(i32) #1

declare dso_local i32 @zend_update_class_constants(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_28__* @spl_filesystem_from_obj(i32) #1

declare dso_local i32 @spl_filesystem_object_new_ex(%struct.TYPE_27__*) #1

declare dso_local i32 @ZVAL_OBJ(i32*, i32*) #1

declare dso_local i32 @spl_filesystem_object_get_file_name(%struct.TYPE_28__*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @zend_call_method_with_1_params(i32, %struct.TYPE_27__*, %struct.TYPE_21__**, i8*, i32*, i32*) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i8* @estrndup(i8*, i32) #1

declare dso_local i8* @spl_filesystem_object_get_path(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @zend_call_method_with_2_params(i32, %struct.TYPE_27__*, %struct.TYPE_21__**, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @zend_parse_parameters(i32, i8*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @spl_filesystem_file_open(%struct.TYPE_28__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
