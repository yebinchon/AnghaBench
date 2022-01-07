; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_object_new_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_object_new_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_56__ = type { i32, %struct.TYPE_55__*, %struct.TYPE_56__* }
%struct.TYPE_55__ = type { %struct.TYPE_62__*, %struct.TYPE_53__*, %struct.TYPE_51__*, %struct.TYPE_50__*, %struct.TYPE_49__* }
%struct.TYPE_62__ = type { %struct.TYPE_61__ }
%struct.TYPE_61__ = type { %struct.TYPE_56__* }
%struct.TYPE_53__ = type { %struct.TYPE_60__ }
%struct.TYPE_60__ = type { %struct.TYPE_56__* }
%struct.TYPE_51__ = type { %struct.TYPE_59__ }
%struct.TYPE_59__ = type { %struct.TYPE_56__* }
%struct.TYPE_50__ = type { %struct.TYPE_58__ }
%struct.TYPE_58__ = type { %struct.TYPE_56__* }
%struct.TYPE_49__ = type { %struct.TYPE_52__ }
%struct.TYPE_52__ = type { %struct.TYPE_56__* }
%struct.TYPE_54__ = type { i32* }
%struct.TYPE_57__ = type { i32, %struct.TYPE_54__, i64, %struct.TYPE_48__*, %struct.TYPE_46__*, %struct.TYPE_44__*, %struct.TYPE_42__*, %struct.TYPE_64__*, i32, %struct.TYPE_56__* }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { %struct.TYPE_56__* }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { %struct.TYPE_56__* }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.TYPE_56__* }
%struct.TYPE_42__ = type { %struct.TYPE_65__ }
%struct.TYPE_65__ = type { %struct.TYPE_56__* }
%struct.TYPE_64__ = type { %struct.TYPE_63__ }
%struct.TYPE_63__ = type { %struct.TYPE_56__* }

@spl_ce_ArrayIterator = common dso_local global %struct.TYPE_56__* null, align 8
@SPL_ARRAY_CLONE_MASK = common dso_local global i32 0, align 4
@SPL_ARRAY_IS_SELF = common dso_local global i32 0, align 4
@spl_handler_ArrayObject = common dso_local global i32 0, align 4
@spl_handler_ArrayIterator = common dso_local global i32 0, align 4
@SPL_ARRAY_USE_OTHER = common dso_local global i32 0, align 4
@spl_ce_RecursiveArrayIterator = common dso_local global %struct.TYPE_56__* null, align 8
@spl_ce_ArrayObject = common dso_local global %struct.TYPE_56__* null, align 8
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Internal compiler error, Class is not child of ArrayObject or ArrayIterator\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"offsetget\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"offsetset\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"offsetexists\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"offsetunset\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"rewind\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@SPL_ARRAY_OVERLOADED_REWIND = common dso_local global i32 0, align 4
@SPL_ARRAY_OVERLOADED_VALID = common dso_local global i32 0, align 4
@SPL_ARRAY_OVERLOADED_KEY = common dso_local global i32 0, align 4
@SPL_ARRAY_OVERLOADED_CURRENT = common dso_local global i32 0, align 4
@SPL_ARRAY_OVERLOADED_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_54__* (%struct.TYPE_56__*, %struct.TYPE_54__*, i32)* @spl_array_object_new_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_54__* @spl_array_object_new_ex(%struct.TYPE_56__* %0, %struct.TYPE_54__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_56__*, align 8
  %5 = alloca %struct.TYPE_54__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_57__*, align 8
  %8 = alloca %struct.TYPE_56__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_57__*, align 8
  %11 = alloca %struct.TYPE_55__*, align 8
  store %struct.TYPE_56__* %0, %struct.TYPE_56__** %4, align 8
  store %struct.TYPE_54__* %1, %struct.TYPE_54__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  store %struct.TYPE_56__* %12, %struct.TYPE_56__** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %14 = call %struct.TYPE_57__* @zend_object_alloc(i32 80, %struct.TYPE_56__* %13)
  store %struct.TYPE_57__* %14, %struct.TYPE_57__** %7, align 8
  %15 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %18 = call i32 @zend_object_std_init(%struct.TYPE_54__* %16, %struct.TYPE_56__* %17)
  %19 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %22 = call i32 @object_properties_init(%struct.TYPE_54__* %20, %struct.TYPE_56__* %21)
  %23 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.TYPE_56__*, %struct.TYPE_56__** @spl_ce_ArrayIterator, align 8
  %26 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %26, i32 0, i32 9
  store %struct.TYPE_56__* %25, %struct.TYPE_56__** %27, align 8
  %28 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %29 = icmp ne %struct.TYPE_54__* %28, null
  br i1 %29, label %30, label %111

30:                                               ; preds = %3
  %31 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %32 = call %struct.TYPE_57__* @spl_array_from_obj(%struct.TYPE_54__* %31)
  store %struct.TYPE_57__* %32, %struct.TYPE_57__** %10, align 8
  %33 = load i32, i32* @SPL_ARRAY_CLONE_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.TYPE_57__*, %struct.TYPE_57__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SPL_ARRAY_CLONE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.TYPE_57__*, %struct.TYPE_57__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %48, i32 0, i32 9
  %50 = load %struct.TYPE_56__*, %struct.TYPE_56__** %49, align 8
  %51 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %51, i32 0, i32 9
  store %struct.TYPE_56__* %50, %struct.TYPE_56__** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %98

55:                                               ; preds = %30
  %56 = load %struct.TYPE_57__*, %struct.TYPE_57__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SPL_ARRAY_IS_SELF, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %63, i32 0, i32 8
  %65 = call i32 @ZVAL_UNDEF(i32* %64)
  br label %97

66:                                               ; preds = %55
  %67 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, @spl_handler_ArrayObject
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %72, i32 0, i32 8
  %74 = load %struct.TYPE_57__*, %struct.TYPE_57__** %10, align 8
  %75 = call i32 @spl_array_get_hash_table(%struct.TYPE_57__* %74)
  %76 = call i32 @zend_array_dup(i32 %75)
  %77 = call i32 @ZVAL_ARR(i32* %73, i32 %76)
  br label %96

78:                                               ; preds = %66
  %79 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, @spl_handler_ArrayIterator
  %83 = zext i1 %82 to i32
  %84 = call i32 @ZEND_ASSERT(i32 %83)
  %85 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %86 = call i32 @GC_ADDREF(%struct.TYPE_54__* %85)
  %87 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %87, i32 0, i32 8
  %89 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %90 = call i32 @ZVAL_OBJ(i32* %88, %struct.TYPE_54__* %89)
  %91 = load i32, i32* @SPL_ARRAY_USE_OTHER, align 4
  %92 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %78, %71
  br label %97

97:                                               ; preds = %96, %62
  br label %110

98:                                               ; preds = %30
  %99 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %100 = call i32 @GC_ADDREF(%struct.TYPE_54__* %99)
  %101 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %101, i32 0, i32 8
  %103 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %104 = call i32 @ZVAL_OBJ(i32* %102, %struct.TYPE_54__* %103)
  %105 = load i32, i32* @SPL_ARRAY_USE_OTHER, align 4
  %106 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %98, %97
  br label %115

111:                                              ; preds = %3
  %112 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %112, i32 0, i32 8
  %114 = call i32 @array_init(i32* %113)
  br label %115

115:                                              ; preds = %111, %110
  br label %116

116:                                              ; preds = %140, %115
  %117 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %118 = icmp ne %struct.TYPE_56__* %117, null
  br i1 %118, label %119, label %144

119:                                              ; preds = %116
  %120 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %121 = load %struct.TYPE_56__*, %struct.TYPE_56__** @spl_ce_ArrayIterator, align 8
  %122 = icmp eq %struct.TYPE_56__* %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %125 = load %struct.TYPE_56__*, %struct.TYPE_56__** @spl_ce_RecursiveArrayIterator, align 8
  %126 = icmp eq %struct.TYPE_56__* %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123, %119
  %128 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %129, i32 0, i32 0
  store i32* @spl_handler_ArrayIterator, i32** %130, align 8
  br label %144

131:                                              ; preds = %123
  %132 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %133 = load %struct.TYPE_56__*, %struct.TYPE_56__** @spl_ce_ArrayObject, align 8
  %134 = icmp eq %struct.TYPE_56__* %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %137, i32 0, i32 0
  store i32* @spl_handler_ArrayObject, i32** %138, align 8
  br label %144

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_56__*, %struct.TYPE_56__** %142, align 8
  store %struct.TYPE_56__* %143, %struct.TYPE_56__** %8, align 8
  store i32 1, i32* %9, align 4
  br label %116

144:                                              ; preds = %135, %127, %116
  %145 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %146 = icmp ne %struct.TYPE_56__* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* @E_COMPILE_ERROR, align 4
  %149 = call i32 @php_error_docref(i32* null, i32 %148, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %244

153:                                              ; preds = %150
  %154 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %154, i32 0, i32 0
  %156 = call i8* @zend_hash_str_find_ptr(i32* %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %157 = bitcast i8* %156 to %struct.TYPE_64__*
  %158 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %158, i32 0, i32 7
  store %struct.TYPE_64__* %157, %struct.TYPE_64__** %159, align 8
  %160 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %160, i32 0, i32 7
  %162 = load %struct.TYPE_64__*, %struct.TYPE_64__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_56__*, %struct.TYPE_56__** %164, align 8
  %166 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %167 = icmp eq %struct.TYPE_56__* %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %153
  %169 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %169, i32 0, i32 7
  store %struct.TYPE_64__* null, %struct.TYPE_64__** %170, align 8
  br label %171

171:                                              ; preds = %168, %153
  %172 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %172, i32 0, i32 0
  %174 = call i8* @zend_hash_str_find_ptr(i32* %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %175 = bitcast i8* %174 to %struct.TYPE_42__*
  %176 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %176, i32 0, i32 6
  store %struct.TYPE_42__* %175, %struct.TYPE_42__** %177, align 8
  %178 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %178, i32 0, i32 6
  %180 = load %struct.TYPE_42__*, %struct.TYPE_42__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_56__*, %struct.TYPE_56__** %182, align 8
  %184 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %185 = icmp eq %struct.TYPE_56__* %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %171
  %187 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %187, i32 0, i32 6
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %188, align 8
  br label %189

189:                                              ; preds = %186, %171
  %190 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %190, i32 0, i32 0
  %192 = call i8* @zend_hash_str_find_ptr(i32* %191, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %193 = bitcast i8* %192 to %struct.TYPE_44__*
  %194 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %194, i32 0, i32 5
  store %struct.TYPE_44__* %193, %struct.TYPE_44__** %195, align 8
  %196 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %196, i32 0, i32 5
  %198 = load %struct.TYPE_44__*, %struct.TYPE_44__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_56__*, %struct.TYPE_56__** %200, align 8
  %202 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %203 = icmp eq %struct.TYPE_56__* %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %189
  %205 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %205, i32 0, i32 5
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %206, align 8
  br label %207

207:                                              ; preds = %204, %189
  %208 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %208, i32 0, i32 0
  %210 = call i8* @zend_hash_str_find_ptr(i32* %209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %211 = bitcast i8* %210 to %struct.TYPE_46__*
  %212 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %212, i32 0, i32 4
  store %struct.TYPE_46__* %211, %struct.TYPE_46__** %213, align 8
  %214 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_46__*, %struct.TYPE_46__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_56__*, %struct.TYPE_56__** %218, align 8
  %220 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %221 = icmp eq %struct.TYPE_56__* %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %207
  %223 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %223, i32 0, i32 4
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %224, align 8
  br label %225

225:                                              ; preds = %222, %207
  %226 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %226, i32 0, i32 0
  %228 = call i8* @zend_hash_str_find_ptr(i32* %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %229 = bitcast i8* %228 to %struct.TYPE_48__*
  %230 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %230, i32 0, i32 3
  store %struct.TYPE_48__* %229, %struct.TYPE_48__** %231, align 8
  %232 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %232, i32 0, i32 3
  %234 = load %struct.TYPE_48__*, %struct.TYPE_48__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_56__*, %struct.TYPE_56__** %236, align 8
  %238 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %239 = icmp eq %struct.TYPE_56__* %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %225
  %241 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %241, i32 0, i32 3
  store %struct.TYPE_48__* null, %struct.TYPE_48__** %242, align 8
  br label %243

243:                                              ; preds = %240, %225
  br label %244

244:                                              ; preds = %243, %150
  %245 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = icmp eq i32* %248, @spl_handler_ArrayIterator
  br i1 %249, label %250, label %369

250:                                              ; preds = %244
  %251 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_55__*, %struct.TYPE_55__** %252, align 8
  store %struct.TYPE_55__* %253, %struct.TYPE_55__** %11, align 8
  %254 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_53__*, %struct.TYPE_53__** %255, align 8
  %257 = icmp ne %struct.TYPE_53__* %256, null
  br i1 %257, label %289, label %258

258:                                              ; preds = %250
  %259 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %259, i32 0, i32 0
  %261 = call i8* @zend_hash_str_find_ptr(i32* %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %262 = bitcast i8* %261 to %struct.TYPE_49__*
  %263 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %263, i32 0, i32 4
  store %struct.TYPE_49__* %262, %struct.TYPE_49__** %264, align 8
  %265 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %265, i32 0, i32 0
  %267 = call i8* @zend_hash_str_find_ptr(i32* %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %268 = bitcast i8* %267 to %struct.TYPE_50__*
  %269 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %269, i32 0, i32 3
  store %struct.TYPE_50__* %268, %struct.TYPE_50__** %270, align 8
  %271 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %271, i32 0, i32 0
  %273 = call i8* @zend_hash_str_find_ptr(i32* %272, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %274 = bitcast i8* %273 to %struct.TYPE_51__*
  %275 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %275, i32 0, i32 2
  store %struct.TYPE_51__* %274, %struct.TYPE_51__** %276, align 8
  %277 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %277, i32 0, i32 0
  %279 = call i8* @zend_hash_str_find_ptr(i32* %278, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 7)
  %280 = bitcast i8* %279 to %struct.TYPE_53__*
  %281 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %281, i32 0, i32 1
  store %struct.TYPE_53__* %280, %struct.TYPE_53__** %282, align 8
  %283 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %283, i32 0, i32 0
  %285 = call i8* @zend_hash_str_find_ptr(i32* %284, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %286 = bitcast i8* %285 to %struct.TYPE_62__*
  %287 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %287, i32 0, i32 0
  store %struct.TYPE_62__* %286, %struct.TYPE_62__** %288, align 8
  br label %289

289:                                              ; preds = %258, %250
  %290 = load i32, i32* %9, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %368

292:                                              ; preds = %289
  %293 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %294 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %293, i32 0, i32 4
  %295 = load %struct.TYPE_49__*, %struct.TYPE_49__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_56__*, %struct.TYPE_56__** %297, align 8
  %299 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %300 = icmp ne %struct.TYPE_56__* %298, %299
  br i1 %300, label %301, label %307

301:                                              ; preds = %292
  %302 = load i32, i32* @SPL_ARRAY_OVERLOADED_REWIND, align 4
  %303 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 8
  br label %307

307:                                              ; preds = %301, %292
  %308 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %308, i32 0, i32 3
  %310 = load %struct.TYPE_50__*, %struct.TYPE_50__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_56__*, %struct.TYPE_56__** %312, align 8
  %314 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %315 = icmp ne %struct.TYPE_56__* %313, %314
  br i1 %315, label %316, label %322

316:                                              ; preds = %307
  %317 = load i32, i32* @SPL_ARRAY_OVERLOADED_VALID, align 4
  %318 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 8
  br label %322

322:                                              ; preds = %316, %307
  %323 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %323, i32 0, i32 2
  %325 = load %struct.TYPE_51__*, %struct.TYPE_51__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_56__*, %struct.TYPE_56__** %327, align 8
  %329 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %330 = icmp ne %struct.TYPE_56__* %328, %329
  br i1 %330, label %331, label %337

331:                                              ; preds = %322
  %332 = load i32, i32* @SPL_ARRAY_OVERLOADED_KEY, align 4
  %333 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %331, %322
  %338 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_53__*, %struct.TYPE_53__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_56__*, %struct.TYPE_56__** %342, align 8
  %344 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %345 = icmp ne %struct.TYPE_56__* %343, %344
  br i1 %345, label %346, label %352

346:                                              ; preds = %337
  %347 = load i32, i32* @SPL_ARRAY_OVERLOADED_CURRENT, align 4
  %348 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = or i32 %350, %347
  store i32 %351, i32* %349, align 8
  br label %352

352:                                              ; preds = %346, %337
  %353 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_62__*, %struct.TYPE_62__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_56__*, %struct.TYPE_56__** %357, align 8
  %359 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %360 = icmp ne %struct.TYPE_56__* %358, %359
  br i1 %360, label %361, label %367

361:                                              ; preds = %352
  %362 = load i32, i32* @SPL_ARRAY_OVERLOADED_NEXT, align 4
  %363 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = or i32 %365, %362
  store i32 %366, i32* %364, align 8
  br label %367

367:                                              ; preds = %361, %352
  br label %368

368:                                              ; preds = %367, %289
  br label %369

369:                                              ; preds = %368, %244
  %370 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %370, i32 0, i32 2
  store i64 -1, i64* %371, align 8
  %372 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %372, i32 0, i32 1
  ret %struct.TYPE_54__* %373
}

declare dso_local %struct.TYPE_57__* @zend_object_alloc(i32, %struct.TYPE_56__*) #1

declare dso_local i32 @zend_object_std_init(%struct.TYPE_54__*, %struct.TYPE_56__*) #1

declare dso_local i32 @object_properties_init(%struct.TYPE_54__*, %struct.TYPE_56__*) #1

declare dso_local %struct.TYPE_57__* @spl_array_from_obj(%struct.TYPE_54__*) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i32 @ZVAL_ARR(i32*, i32) #1

declare dso_local i32 @zend_array_dup(i32) #1

declare dso_local i32 @spl_array_get_hash_table(%struct.TYPE_57__*) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @GC_ADDREF(%struct.TYPE_54__*) #1

declare dso_local i32 @ZVAL_OBJ(i32*, %struct.TYPE_54__*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i8* @zend_hash_str_find_ptr(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
