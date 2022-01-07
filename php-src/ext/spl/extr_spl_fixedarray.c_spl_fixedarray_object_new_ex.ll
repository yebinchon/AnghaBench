; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_fixedarray.c_spl_fixedarray_object_new_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_fixedarray.c_spl_fixedarray_object_new_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_54__ = type { i32, %struct.TYPE_53__*, %struct.TYPE_54__* }
%struct.TYPE_53__ = type { %struct.TYPE_40__*, %struct.TYPE_63__*, %struct.TYPE_61__*, %struct.TYPE_59__*, %struct.TYPE_56__* }
%struct.TYPE_40__ = type { %struct.TYPE_64__ }
%struct.TYPE_64__ = type { %struct.TYPE_54__* }
%struct.TYPE_63__ = type { %struct.TYPE_62__ }
%struct.TYPE_62__ = type { %struct.TYPE_54__* }
%struct.TYPE_61__ = type { %struct.TYPE_60__ }
%struct.TYPE_60__ = type { %struct.TYPE_54__* }
%struct.TYPE_59__ = type { %struct.TYPE_58__ }
%struct.TYPE_58__ = type { %struct.TYPE_54__* }
%struct.TYPE_56__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { %struct.TYPE_54__* }
%struct.TYPE_52__ = type { i32* }
%struct.TYPE_55__ = type { %struct.TYPE_52__, %struct.TYPE_51__*, %struct.TYPE_48__*, %struct.TYPE_46__*, %struct.TYPE_44__*, %struct.TYPE_42__*, i32, %struct.TYPE_57__, i32, i64 }
%struct.TYPE_51__ = type { %struct.TYPE_49__ }
%struct.TYPE_49__ = type { %struct.TYPE_54__* }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { %struct.TYPE_54__* }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { %struct.TYPE_54__* }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.TYPE_54__* }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { %struct.TYPE_54__* }
%struct.TYPE_57__ = type { i32 }

@spl_ce_SplFixedArray = common dso_local global %struct.TYPE_54__* null, align 8
@spl_handler_SplFixedArray = common dso_local global i32 0, align 4
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Internal compiler error, Class is not child of SplFixedArray\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rewind\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@SPL_FIXEDARRAY_OVERLOADED_REWIND = common dso_local global i32 0, align 4
@SPL_FIXEDARRAY_OVERLOADED_VALID = common dso_local global i32 0, align 4
@SPL_FIXEDARRAY_OVERLOADED_KEY = common dso_local global i32 0, align 4
@SPL_FIXEDARRAY_OVERLOADED_CURRENT = common dso_local global i32 0, align 4
@SPL_FIXEDARRAY_OVERLOADED_NEXT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"offsetget\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"offsetset\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"offsetexists\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"offsetunset\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_52__* (%struct.TYPE_54__*, %struct.TYPE_52__*, i32)* @spl_fixedarray_object_new_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_52__* @spl_fixedarray_object_new_ex(%struct.TYPE_54__* %0, %struct.TYPE_52__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_54__*, align 8
  %5 = alloca %struct.TYPE_52__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_55__*, align 8
  %8 = alloca %struct.TYPE_54__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_53__*, align 8
  %11 = alloca %struct.TYPE_55__*, align 8
  store %struct.TYPE_54__* %0, %struct.TYPE_54__** %4, align 8
  store %struct.TYPE_52__* %1, %struct.TYPE_52__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  store %struct.TYPE_54__* %12, %struct.TYPE_54__** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %14 = call %struct.TYPE_55__* @zend_object_alloc(i32 72, %struct.TYPE_54__* %13)
  store %struct.TYPE_55__* %14, %struct.TYPE_55__** %7, align 8
  %15 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  %18 = call i32 @zend_object_std_init(%struct.TYPE_52__* %16, %struct.TYPE_54__* %17)
  %19 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  %22 = call i32 @object_properties_init(%struct.TYPE_52__* %20, %struct.TYPE_54__* %21)
  %23 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %23, i32 0, i32 9
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %25, i32 0, i32 6
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %28 = icmp ne %struct.TYPE_52__* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %34 = call %struct.TYPE_55__* @spl_fixed_array_from_obj(%struct.TYPE_52__* %33)
  store %struct.TYPE_55__* %34, %struct.TYPE_55__** %11, align 8
  %35 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %40, i32 0, i32 7
  %42 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @spl_fixedarray_init(%struct.TYPE_57__* %41, i32 %45)
  %47 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %47, i32 0, i32 7
  %49 = load %struct.TYPE_55__*, %struct.TYPE_55__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %49, i32 0, i32 7
  %51 = call i32 @spl_fixedarray_copy(%struct.TYPE_57__* %48, %struct.TYPE_57__* %50)
  br label %52

52:                                               ; preds = %32, %29, %3
  br label %53

53:                                               ; preds = %64, %52
  %54 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %55 = icmp ne %struct.TYPE_54__* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %58 = load %struct.TYPE_54__*, %struct.TYPE_54__** @spl_ce_SplFixedArray, align 8
  %59 = icmp eq %struct.TYPE_54__* %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %62, i32 0, i32 0
  store i32* @spl_handler_SplFixedArray, i32** %63, align 8
  br label %68

64:                                               ; preds = %56
  %65 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_54__*, %struct.TYPE_54__** %66, align 8
  store %struct.TYPE_54__* %67, %struct.TYPE_54__** %8, align 8
  store i32 1, i32* %9, align 4
  br label %53

68:                                               ; preds = %60, %53
  %69 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %70 = icmp ne %struct.TYPE_54__* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @E_COMPILE_ERROR, align 4
  %73 = call i32 @php_error_docref(i32* null, i32 %72, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_53__*, %struct.TYPE_53__** %76, align 8
  store %struct.TYPE_53__* %77, %struct.TYPE_53__** %10, align 8
  %78 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_63__*, %struct.TYPE_63__** %79, align 8
  %81 = icmp ne %struct.TYPE_63__* %80, null
  br i1 %81, label %113, label %82

82:                                               ; preds = %74
  %83 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %83, i32 0, i32 0
  %85 = call i8* @zend_hash_str_find_ptr(i32* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %86 = bitcast i8* %85 to %struct.TYPE_56__*
  %87 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %87, i32 0, i32 4
  store %struct.TYPE_56__* %86, %struct.TYPE_56__** %88, align 8
  %89 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %89, i32 0, i32 0
  %91 = call i8* @zend_hash_str_find_ptr(i32* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %92 = bitcast i8* %91 to %struct.TYPE_59__*
  %93 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %93, i32 0, i32 3
  store %struct.TYPE_59__* %92, %struct.TYPE_59__** %94, align 8
  %95 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %95, i32 0, i32 0
  %97 = call i8* @zend_hash_str_find_ptr(i32* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %98 = bitcast i8* %97 to %struct.TYPE_61__*
  %99 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %99, i32 0, i32 2
  store %struct.TYPE_61__* %98, %struct.TYPE_61__** %100, align 8
  %101 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %101, i32 0, i32 0
  %103 = call i8* @zend_hash_str_find_ptr(i32* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %104 = bitcast i8* %103 to %struct.TYPE_63__*
  %105 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %105, i32 0, i32 1
  store %struct.TYPE_63__* %104, %struct.TYPE_63__** %106, align 8
  %107 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %107, i32 0, i32 0
  %109 = call i8* @zend_hash_str_find_ptr(i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %110 = bitcast i8* %109 to %struct.TYPE_40__*
  %111 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %111, i32 0, i32 0
  store %struct.TYPE_40__* %110, %struct.TYPE_40__** %112, align 8
  br label %113

113:                                              ; preds = %82, %74
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %282

116:                                              ; preds = %113
  %117 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_56__*, %struct.TYPE_56__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_54__*, %struct.TYPE_54__** %121, align 8
  %123 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %124 = icmp ne %struct.TYPE_54__* %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %116
  %126 = load i32, i32* @SPL_FIXEDARRAY_OVERLOADED_REWIND, align 4
  %127 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %125, %116
  %132 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_59__*, %struct.TYPE_59__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_54__*, %struct.TYPE_54__** %136, align 8
  %138 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %139 = icmp ne %struct.TYPE_54__* %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %131
  %141 = load i32, i32* @SPL_FIXEDARRAY_OVERLOADED_VALID, align 4
  %142 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %140, %131
  %147 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_61__*, %struct.TYPE_61__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_54__*, %struct.TYPE_54__** %151, align 8
  %153 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %154 = icmp ne %struct.TYPE_54__* %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %146
  %156 = load i32, i32* @SPL_FIXEDARRAY_OVERLOADED_KEY, align 4
  %157 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %146
  %162 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_63__*, %struct.TYPE_63__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_54__*, %struct.TYPE_54__** %166, align 8
  %168 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %169 = icmp ne %struct.TYPE_54__* %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %161
  %171 = load i32, i32* @SPL_FIXEDARRAY_OVERLOADED_CURRENT, align 4
  %172 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %170, %161
  %177 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_40__*, %struct.TYPE_40__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_54__*, %struct.TYPE_54__** %181, align 8
  %183 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %184 = icmp ne %struct.TYPE_54__* %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %176
  %186 = load i32, i32* @SPL_FIXEDARRAY_OVERLOADED_NEXT, align 4
  %187 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %185, %176
  %192 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %192, i32 0, i32 0
  %194 = call i8* @zend_hash_str_find_ptr(i32* %193, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 9)
  %195 = bitcast i8* %194 to %struct.TYPE_42__*
  %196 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %196, i32 0, i32 5
  store %struct.TYPE_42__* %195, %struct.TYPE_42__** %197, align 8
  %198 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %198, i32 0, i32 5
  %200 = load %struct.TYPE_42__*, %struct.TYPE_42__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_54__*, %struct.TYPE_54__** %202, align 8
  %204 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %205 = icmp eq %struct.TYPE_54__* %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %191
  %207 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %207, i32 0, i32 5
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %208, align 8
  br label %209

209:                                              ; preds = %206, %191
  %210 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %210, i32 0, i32 0
  %212 = call i8* @zend_hash_str_find_ptr(i32* %211, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 9)
  %213 = bitcast i8* %212 to %struct.TYPE_44__*
  %214 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %214, i32 0, i32 4
  store %struct.TYPE_44__* %213, %struct.TYPE_44__** %215, align 8
  %216 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %216, i32 0, i32 4
  %218 = load %struct.TYPE_44__*, %struct.TYPE_44__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_54__*, %struct.TYPE_54__** %220, align 8
  %222 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %223 = icmp eq %struct.TYPE_54__* %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %209
  %225 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %225, i32 0, i32 4
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %226, align 8
  br label %227

227:                                              ; preds = %224, %209
  %228 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %228, i32 0, i32 0
  %230 = call i8* @zend_hash_str_find_ptr(i32* %229, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 12)
  %231 = bitcast i8* %230 to %struct.TYPE_46__*
  %232 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %232, i32 0, i32 3
  store %struct.TYPE_46__* %231, %struct.TYPE_46__** %233, align 8
  %234 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_46__*, %struct.TYPE_46__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_54__*, %struct.TYPE_54__** %238, align 8
  %240 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %241 = icmp eq %struct.TYPE_54__* %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %227
  %243 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %243, i32 0, i32 3
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %244, align 8
  br label %245

245:                                              ; preds = %242, %227
  %246 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %246, i32 0, i32 0
  %248 = call i8* @zend_hash_str_find_ptr(i32* %247, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 11)
  %249 = bitcast i8* %248 to %struct.TYPE_48__*
  %250 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %250, i32 0, i32 2
  store %struct.TYPE_48__* %249, %struct.TYPE_48__** %251, align 8
  %252 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_48__*, %struct.TYPE_48__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_54__*, %struct.TYPE_54__** %256, align 8
  %258 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %259 = icmp eq %struct.TYPE_54__* %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %245
  %261 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %261, i32 0, i32 2
  store %struct.TYPE_48__* null, %struct.TYPE_48__** %262, align 8
  br label %263

263:                                              ; preds = %260, %245
  %264 = load %struct.TYPE_54__*, %struct.TYPE_54__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %264, i32 0, i32 0
  %266 = call i8* @zend_hash_str_find_ptr(i32* %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 5)
  %267 = bitcast i8* %266 to %struct.TYPE_51__*
  %268 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %268, i32 0, i32 1
  store %struct.TYPE_51__* %267, %struct.TYPE_51__** %269, align 8
  %270 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_51__*, %struct.TYPE_51__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_54__*, %struct.TYPE_54__** %274, align 8
  %276 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %277 = icmp eq %struct.TYPE_54__* %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %263
  %279 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %279, i32 0, i32 1
  store %struct.TYPE_51__* null, %struct.TYPE_51__** %280, align 8
  br label %281

281:                                              ; preds = %278, %263
  br label %282

282:                                              ; preds = %281, %113
  %283 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %283, i32 0, i32 0
  ret %struct.TYPE_52__* %284
}

declare dso_local %struct.TYPE_55__* @zend_object_alloc(i32, %struct.TYPE_54__*) #1

declare dso_local i32 @zend_object_std_init(%struct.TYPE_52__*, %struct.TYPE_54__*) #1

declare dso_local i32 @object_properties_init(%struct.TYPE_52__*, %struct.TYPE_54__*) #1

declare dso_local %struct.TYPE_55__* @spl_fixed_array_from_obj(%struct.TYPE_52__*) #1

declare dso_local i32 @spl_fixedarray_init(%struct.TYPE_57__*, i32) #1

declare dso_local i32 @spl_fixedarray_copy(%struct.TYPE_57__*, %struct.TYPE_57__*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i8* @zend_hash_str_find_ptr(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
