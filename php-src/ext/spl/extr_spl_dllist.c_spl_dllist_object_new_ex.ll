; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_dllist.c_spl_dllist_object_new_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_dllist.c_spl_dllist_object_new_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, %struct.TYPE_33__* }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_35__ = type { i32, %struct.TYPE_32__, %struct.TYPE_31__*, %struct.TYPE_43__*, %struct.TYPE_41__*, %struct.TYPE_39__*, %struct.TYPE_37__*, i32, %struct.TYPE_34__*, i32, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { %struct.TYPE_33__* }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { %struct.TYPE_33__* }
%struct.TYPE_41__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { %struct.TYPE_33__* }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.TYPE_33__* }
%struct.TYPE_37__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { %struct.TYPE_33__* }
%struct.TYPE_34__ = type { i32, i32, i32 }

@spl_ptr_llist_zval_ctor = common dso_local global i32 0, align 4
@spl_ptr_llist_zval_dtor = common dso_local global i32 0, align 4
@spl_ce_SplStack = common dso_local global %struct.TYPE_33__* null, align 8
@SPL_DLLIST_IT_FIX = common dso_local global i32 0, align 4
@SPL_DLLIST_IT_LIFO = common dso_local global i32 0, align 4
@spl_handler_SplDoublyLinkedList = common dso_local global i32 0, align 4
@spl_ce_SplQueue = common dso_local global %struct.TYPE_33__* null, align 8
@spl_ce_SplDoublyLinkedList = common dso_local global %struct.TYPE_33__* null, align 8
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Internal compiler error, Class is not child of SplDoublyLinkedList\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"offsetget\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"offsetset\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"offsetexists\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"offsetunset\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_32__* (%struct.TYPE_33__*, %struct.TYPE_32__*, i32)* @spl_dllist_object_new_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_32__* @spl_dllist_object_new_ex(%struct.TYPE_33__* %0, %struct.TYPE_32__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_33__* %11, %struct.TYPE_33__** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %13 = call %struct.TYPE_35__* @zend_object_alloc(i32 88, %struct.TYPE_33__* %12)
  store %struct.TYPE_35__* %13, %struct.TYPE_35__** %7, align 8
  %14 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %17 = call i32 @zend_object_std_init(%struct.TYPE_32__* %15, %struct.TYPE_33__* %16)
  %18 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %21 = call i32 @object_properties_init(%struct.TYPE_32__* %19, %struct.TYPE_33__* %20)
  %22 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %24, i32 0, i32 10
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %27 = icmp ne %struct.TYPE_32__* %26, null
  br i1 %27, label %28, label %94

28:                                               ; preds = %3
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %30 = call %struct.TYPE_35__* @spl_dllist_from_obj(%struct.TYPE_32__* %29)
  store %struct.TYPE_35__* %30, %struct.TYPE_35__** %10, align 8
  %31 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %28
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %39, i32 0, i32 8
  %41 = load %struct.TYPE_34__*, %struct.TYPE_34__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %44, i32 0, i32 8
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @spl_ptr_llist_init(i32 %43, i32 %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_34__*
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %51, i32 0, i32 8
  store %struct.TYPE_34__* %50, %struct.TYPE_34__** %52, align 8
  %53 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %53, i32 0, i32 8
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %54, align 8
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %56, i32 0, i32 8
  %58 = load %struct.TYPE_34__*, %struct.TYPE_34__** %57, align 8
  %59 = call i32 @spl_ptr_llist_copy(%struct.TYPE_34__* %55, %struct.TYPE_34__* %58)
  %60 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %60, i32 0, i32 8
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @SPL_LLIST_CHECK_ADDREF(i32 %69)
  br label %88

71:                                               ; preds = %28
  %72 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %72, i32 0, i32 8
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %73, align 8
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %75, i32 0, i32 8
  store %struct.TYPE_34__* %74, %struct.TYPE_34__** %76, align 8
  %77 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %77, i32 0, i32 8
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @SPL_LLIST_CHECK_ADDREF(i32 %86)
  br label %88

88:                                               ; preds = %71, %38
  %89 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %112

94:                                               ; preds = %3
  %95 = load i32, i32* @spl_ptr_llist_zval_ctor, align 4
  %96 = load i32, i32* @spl_ptr_llist_zval_dtor, align 4
  %97 = call i64 @spl_ptr_llist_init(i32 %95, i32 %96)
  %98 = inttoptr i64 %97 to %struct.TYPE_34__*
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %99, i32 0, i32 8
  store %struct.TYPE_34__* %98, %struct.TYPE_34__** %100, align 8
  %101 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %101, i32 0, i32 8
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @SPL_LLIST_CHECK_ADDREF(i32 %110)
  br label %112

112:                                              ; preds = %94, %88
  br label %113

113:                                              ; preds = %153, %112
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %115 = icmp ne %struct.TYPE_33__* %114, null
  br i1 %115, label %116, label %157

116:                                              ; preds = %113
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** @spl_ce_SplStack, align 8
  %119 = icmp eq %struct.TYPE_33__* %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load i32, i32* @SPL_DLLIST_IT_FIX, align 4
  %122 = load i32, i32* @SPL_DLLIST_IT_LIFO, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 0
  store i32* @spl_handler_SplDoublyLinkedList, i32** %130, align 8
  br label %145

131:                                              ; preds = %116
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** @spl_ce_SplQueue, align 8
  %134 = icmp eq %struct.TYPE_33__* %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = load i32, i32* @SPL_DLLIST_IT_FIX, align 4
  %137 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %142, i32 0, i32 0
  store i32* @spl_handler_SplDoublyLinkedList, i32** %143, align 8
  br label %144

144:                                              ; preds = %135, %131
  br label %145

145:                                              ; preds = %144, %120
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %147 = load %struct.TYPE_33__*, %struct.TYPE_33__** @spl_ce_SplDoublyLinkedList, align 8
  %148 = icmp eq %struct.TYPE_33__* %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 0
  store i32* @spl_handler_SplDoublyLinkedList, i32** %152, align 8
  br label %157

153:                                              ; preds = %145
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %155, align 8
  store %struct.TYPE_33__* %156, %struct.TYPE_33__** %8, align 8
  store i32 1, i32* %9, align 4
  br label %113

157:                                              ; preds = %149, %113
  %158 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %159 = icmp ne %struct.TYPE_33__* %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* @E_COMPILE_ERROR, align 4
  %162 = call i32 @php_error_docref(i32* null, i32 %161, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %257

166:                                              ; preds = %163
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 0
  %169 = call i8* @zend_hash_str_find_ptr(i32* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %170 = bitcast i8* %169 to %struct.TYPE_37__*
  %171 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %171, i32 0, i32 6
  store %struct.TYPE_37__* %170, %struct.TYPE_37__** %172, align 8
  %173 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %173, i32 0, i32 6
  %175 = load %struct.TYPE_37__*, %struct.TYPE_37__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_33__*, %struct.TYPE_33__** %177, align 8
  %179 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %180 = icmp eq %struct.TYPE_33__* %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %166
  %182 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %182, i32 0, i32 6
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %183, align 8
  br label %184

184:                                              ; preds = %181, %166
  %185 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 0
  %187 = call i8* @zend_hash_str_find_ptr(i32* %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %188 = bitcast i8* %187 to %struct.TYPE_39__*
  %189 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %189, i32 0, i32 5
  store %struct.TYPE_39__* %188, %struct.TYPE_39__** %190, align 8
  %191 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %191, i32 0, i32 5
  %193 = load %struct.TYPE_39__*, %struct.TYPE_39__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %195, align 8
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %198 = icmp eq %struct.TYPE_33__* %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %184
  %200 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %200, i32 0, i32 5
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %201, align 8
  br label %202

202:                                              ; preds = %199, %184
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 0
  %205 = call i8* @zend_hash_str_find_ptr(i32* %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %206 = bitcast i8* %205 to %struct.TYPE_41__*
  %207 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %207, i32 0, i32 4
  store %struct.TYPE_41__* %206, %struct.TYPE_41__** %208, align 8
  %209 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_41__*, %struct.TYPE_41__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_33__*, %struct.TYPE_33__** %213, align 8
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %216 = icmp eq %struct.TYPE_33__* %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %202
  %218 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %218, i32 0, i32 4
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %219, align 8
  br label %220

220:                                              ; preds = %217, %202
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %221, i32 0, i32 0
  %223 = call i8* @zend_hash_str_find_ptr(i32* %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %224 = bitcast i8* %223 to %struct.TYPE_43__*
  %225 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %225, i32 0, i32 3
  store %struct.TYPE_43__* %224, %struct.TYPE_43__** %226, align 8
  %227 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_43__*, %struct.TYPE_43__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_33__*, %struct.TYPE_33__** %231, align 8
  %233 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %234 = icmp eq %struct.TYPE_33__* %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %220
  %236 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %236, i32 0, i32 3
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %237, align 8
  br label %238

238:                                              ; preds = %235, %220
  %239 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %239, i32 0, i32 0
  %241 = call i8* @zend_hash_str_find_ptr(i32* %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %242 = bitcast i8* %241 to %struct.TYPE_31__*
  %243 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %243, i32 0, i32 2
  store %struct.TYPE_31__* %242, %struct.TYPE_31__** %244, align 8
  %245 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_31__*, %struct.TYPE_31__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %249, align 8
  %251 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %252 = icmp eq %struct.TYPE_33__* %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %238
  %254 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %254, i32 0, i32 2
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %255, align 8
  br label %256

256:                                              ; preds = %253, %238
  br label %257

257:                                              ; preds = %256, %163
  %258 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %258, i32 0, i32 1
  ret %struct.TYPE_32__* %259
}

declare dso_local %struct.TYPE_35__* @zend_object_alloc(i32, %struct.TYPE_33__*) #1

declare dso_local i32 @zend_object_std_init(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local i32 @object_properties_init(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_35__* @spl_dllist_from_obj(%struct.TYPE_32__*) #1

declare dso_local i64 @spl_ptr_llist_init(i32, i32) #1

declare dso_local i32 @spl_ptr_llist_copy(%struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @SPL_LLIST_CHECK_ADDREF(i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i8* @zend_hash_str_find_ptr(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
