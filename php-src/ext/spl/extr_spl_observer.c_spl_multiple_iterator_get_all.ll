; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_observer.c_spl_multiple_iterator_get_all.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_observer.c_spl_multiple_iterator_get_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@RETURN_FALSE = common dso_local global i32 0, align 4
@exception = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@IS_TRUE = common dso_local global i32 0, align 4
@SPL_MULTIPLE_ITERATOR_GET_ALL_CURRENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@spl_ce_RuntimeException = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to call sub iterator method\00", align 1
@MIT_NEED_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Called current() with non valid sub iterator\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Called key() with non valid sub iterator\00", align 1
@MIT_KEYS_ASSOC = common dso_local global i32 0, align 4
@spl_ce_InvalidArgumentException = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Sub-Iterator is associated with NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32*)* @spl_multiple_iterator_get_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spl_multiple_iterator_get_all(%struct.TYPE_10__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %10, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = call i32 @zend_hash_num_elements(i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @RETURN_FALSE, align 4
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @array_init_size(i32* %20, i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = call i32 @zend_hash_internal_pointer_reset_ex(i32* %24, i32* %26)
  br label %28

28:                                               ; preds = %159, %19
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = call %struct.TYPE_9__* @zend_hash_get_current_data_ptr_ex(i32* %30, i32* %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %7, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @exception, align 4
  %37 = call i32 @EG(i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %35, %28
  %41 = phi i1 [ false, %28 ], [ %39, %35 ]
  br i1 %41, label %42, label %165

42:                                               ; preds = %40
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @Z_OBJ_P(i32* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call %struct.TYPE_11__* @Z_OBJCE_P(i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = call %struct.TYPE_11__* @Z_OBJCE_P(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = call i32 @zend_call_method_with_0_params(i32 %46, %struct.TYPE_11__* %48, i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %9)
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @Z_ISUNDEF(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @Z_TYPE(i32 %59)
  %61 = load i32, i32* @IS_TRUE, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %10, align 4
  %64 = call i32 @zval_ptr_dtor(i32* %9)
  br label %66

65:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %58
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %103

69:                                               ; preds = %66
  %70 = load i32, i32* @SPL_MULTIPLE_ITERATOR_GET_ALL_CURRENT, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @Z_OBJ_P(i32* %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call %struct.TYPE_11__* @Z_OBJCE_P(i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call %struct.TYPE_11__* @Z_OBJCE_P(i32* %78)
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = call i32 @zend_call_method_with_0_params(i32 %75, %struct.TYPE_11__* %77, i32* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  br label %95

84:                                               ; preds = %69
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @Z_OBJ_P(i32* %85)
  %87 = load i32*, i32** %8, align 8
  %88 = call %struct.TYPE_11__* @Z_OBJCE_P(i32* %87)
  %89 = load i32*, i32** %8, align 8
  %90 = call %struct.TYPE_11__* @Z_OBJCE_P(i32* %89)
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = call i32 @zend_call_method_with_0_params(i32 %86, %struct.TYPE_11__* %88, i32* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  br label %95

95:                                               ; preds = %84, %73
  %96 = load i32, i32* %9, align 4
  %97 = call i64 @Z_ISUNDEF(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @spl_ce_RuntimeException, align 4
  %101 = call i32 @zend_throw_exception(i32 %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %165

102:                                              ; preds = %95
  br label %124

103:                                              ; preds = %66
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MIT_NEED_ALL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %103
  %111 = load i32, i32* @SPL_MULTIPLE_ITERATOR_GET_ALL_CURRENT, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* @spl_ce_RuntimeException, align 4
  %116 = call i32 @zend_throw_exception(i32 %115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %120

117:                                              ; preds = %110
  %118 = load i32, i32* @spl_ce_RuntimeException, align 4
  %119 = call i32 @zend_throw_exception(i32 %118, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %120

120:                                              ; preds = %117, %114
  br label %165

121:                                              ; preds = %103
  %122 = call i32 @ZVAL_NULL(i32* %9)
  br label %123

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %123, %102
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @MIT_KEYS_ASSOC, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %156

131:                                              ; preds = %124
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @Z_TYPE(i32 %134)
  switch i32 %135, label %151 [
    i32 129, label %136
    i32 128, label %143
  ]

136:                                              ; preds = %131
  %137 = load i32*, i32** %6, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @Z_LVAL(i32 %140)
  %142 = call i32 @add_index_zval(i32* %137, i32 %141, i32* %9)
  br label %155

143:                                              ; preds = %131
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @Z_ARRVAL_P(i32* %144)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @Z_STR(i32 %148)
  %150 = call i32 @zend_symtable_update(i32 %145, i32 %149, i32* %9)
  br label %155

151:                                              ; preds = %131
  %152 = call i32 @zval_ptr_dtor(i32* %9)
  %153 = load i32, i32* @spl_ce_InvalidArgumentException, align 4
  %154 = call i32 @zend_throw_exception(i32 %153, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %165

155:                                              ; preds = %143, %136
  br label %159

156:                                              ; preds = %124
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 @add_next_index_zval(i32* %157, i32* %9)
  br label %159

159:                                              ; preds = %156, %155
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = call i32 @zend_hash_move_forward_ex(i32* %161, i32* %163)
  br label %28

165:                                              ; preds = %99, %120, %151, %40
  ret void
}

declare dso_local i32 @zend_hash_num_elements(i32*) #1

declare dso_local i32 @array_init_size(i32*, i32) #1

declare dso_local i32 @zend_hash_internal_pointer_reset_ex(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @zend_hash_get_current_data_ptr_ex(i32*, i32*) #1

declare dso_local i32 @EG(i32) #1

declare dso_local i32 @zend_call_method_with_0_params(i32, %struct.TYPE_11__*, i32*, i8*, i32*) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

declare dso_local %struct.TYPE_11__* @Z_OBJCE_P(i32*) #1

declare dso_local i64 @Z_ISUNDEF(i32) #1

declare dso_local i32 @Z_TYPE(i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @zend_throw_exception(i32, i8*, i32) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @add_index_zval(i32*, i32, i32*) #1

declare dso_local i32 @Z_LVAL(i32) #1

declare dso_local i32 @zend_symtable_update(i32, i32, i32*) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @Z_STR(i32) #1

declare dso_local i32 @add_next_index_zval(i32*, i32*) #1

declare dso_local i32 @zend_hash_move_forward_ex(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
