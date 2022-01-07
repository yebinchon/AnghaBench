; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_has_dimension_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_has_dimension_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"offsetExists\00", align 1
@BP_VAR_R = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Illegal offset type\00", align 1
@IS_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, i32*, i32)* @spl_array_has_dimension_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spl_array_has_dimension_ex(i32 %0, %struct.TYPE_9__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = call %struct.TYPE_10__* @spl_array_from_obj(%struct.TYPE_9__* %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %10, align 8
  store i32* null, i32** %13, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %21
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @SEPARATE_ARG_IF_REF(i32* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @zend_call_method_with_1_params(%struct.TYPE_9__* %29, i32 %32, i64* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %12, i32* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @zval_ptr_dtor(i32* %37)
  %39 = call i32 @zend_is_true(i32* %12)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %26
  %42 = call i32 @zval_ptr_dtor(i32* %12)
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %151

46:                                               ; preds = %41
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @BP_VAR_R, align 4
  %55 = call i32* @spl_array_read_dimension_ex(i32 1, %struct.TYPE_9__* %52, i32* %53, i32 %54, i32* %12)
  store i32* %55, i32** %13, align 8
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56
  br label %60

58:                                               ; preds = %26
  %59 = call i32 @zval_ptr_dtor(i32* %12)
  store i32 0, i32* %5, align 4
  br label %151

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %21, %4
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %131, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = call i32* @spl_array_get_hash_table(%struct.TYPE_10__* %65)
  store i32* %66, i32** %15, align 8
  br label %67

67:                                               ; preds = %106, %64
  %68 = load i32*, i32** %8, align 8
  %69 = call i64 @Z_TYPE_P(i32* %68)
  switch i64 %69, label %109 [
    i64 129, label %70
    i64 134, label %83
    i64 130, label %86
    i64 133, label %89
    i64 128, label %90
    i64 132, label %91
    i64 131, label %106
  ]

70:                                               ; preds = %67
  %71 = load i32*, i32** %15, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @Z_STR_P(i32* %72)
  %74 = call i32* @zend_symtable_find(i32* %71, i32 %73)
  store i32* %74, i32** %14, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %151

80:                                               ; preds = %76
  br label %82

81:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %151

82:                                               ; preds = %80
  br label %112

83:                                               ; preds = %67
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @Z_DVAL_P(i32* %84)
  store i32 %85, i32* %11, align 4
  br label %94

86:                                               ; preds = %67
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @Z_RES_HANDLE_P(i32* %87)
  store i32 %88, i32* %11, align 4
  br label %94

89:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  br label %94

90:                                               ; preds = %67
  store i32 1, i32* %11, align 4
  br label %94

91:                                               ; preds = %67
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @Z_LVAL_P(i32* %92)
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %91, %90, %89, %86, %83
  %95 = load i32*, i32** %15, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32* @zend_hash_index_find(i32* %95, i32 %96)
  store i32* %97, i32** %14, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 1, i32* %5, align 4
  br label %151

103:                                              ; preds = %99
  br label %105

104:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %151

105:                                              ; preds = %103
  br label %112

106:                                              ; preds = %67
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @ZVAL_DEREF(i32* %107)
  br label %67

109:                                              ; preds = %67
  %110 = load i32, i32* @E_WARNING, align 4
  %111 = call i32 @zend_error(i32 %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %151

112:                                              ; preds = %105, %82
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %112
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* @BP_VAR_R, align 4
  %127 = call i32* @spl_array_read_dimension_ex(i32 1, %struct.TYPE_9__* %124, i32* %125, i32 %126, i32* %12)
  store i32* %127, i32** %13, align 8
  br label %130

128:                                              ; preds = %118, %115, %112
  %129 = load i32*, i32** %14, align 8
  store i32* %129, i32** %13, align 8
  br label %130

130:                                              ; preds = %128, %123
  br label %131

131:                                              ; preds = %130, %61
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @zend_is_true(i32* %135)
  br label %143

137:                                              ; preds = %131
  %138 = load i32*, i32** %13, align 8
  %139 = call i64 @Z_TYPE_P(i32* %138)
  %140 = load i64, i64* @IS_NULL, align 8
  %141 = icmp ne i64 %139, %140
  %142 = zext i1 %141 to i32
  br label %143

143:                                              ; preds = %137, %134
  %144 = phi i32 [ %136, %134 ], [ %142, %137 ]
  store i32 %144, i32* %16, align 4
  %145 = load i32*, i32** %13, align 8
  %146 = icmp eq i32* %145, %12
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = call i32 @zval_ptr_dtor(i32* %12)
  br label %149

149:                                              ; preds = %147, %143
  %150 = load i32, i32* %16, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %149, %109, %104, %102, %81, %79, %58, %45
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local %struct.TYPE_10__* @spl_array_from_obj(%struct.TYPE_9__*) #1

declare dso_local i32 @SEPARATE_ARG_IF_REF(i32*) #1

declare dso_local i32 @zend_call_method_with_1_params(%struct.TYPE_9__*, i32, i64*, i8*, i32*, i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @zend_is_true(i32*) #1

declare dso_local i32* @spl_array_read_dimension_ex(i32, %struct.TYPE_9__*, i32*, i32, i32*) #1

declare dso_local i32* @spl_array_get_hash_table(%struct.TYPE_10__*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @zend_symtable_find(i32*, i32) #1

declare dso_local i32 @Z_STR_P(i32*) #1

declare dso_local i32 @Z_DVAL_P(i32*) #1

declare dso_local i32 @Z_RES_HANDLE_P(i32*) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32* @zend_hash_index_find(i32*, i32) #1

declare dso_local i32 @ZVAL_DEREF(i32*) #1

declare dso_local i32 @zend_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
