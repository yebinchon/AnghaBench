; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_execute_prepare_param_types.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_execute_prepare_param_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i16, i32 }

@.str = private unnamed_addr constant [41 x i8] c"mysqlnd_stmt_execute_prepare_param_types\00", align 1
@MYSQL_TYPE_LONG = common dso_local global i16 0, align 2
@MYSQL_TYPE_LONGLONG = common dso_local global i16 0, align 2
@MYSQL_TYPE_TINY = common dso_local global i16 0, align 2
@IS_LONG = common dso_local global i64 0, align 8
@PASS = common dso_local global i64 0, align 8
@ZEND_LONG_MAX = common dso_local global double 0.000000e+00, align 8
@ZEND_LONG_MIN = common dso_local global double 0.000000e+00, align 8
@FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32**, i32*)* @mysqlnd_stmt_execute_prepare_param_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysqlnd_stmt_execute_prepare_param_types(%struct.TYPE_5__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %128, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %131

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i16, i16* %27, align 4
  store i16 %28, i16* %9, align 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @ZVAL_DEREF(i32* %36)
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @Z_ISNULL_P(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %127, label %41

41:                                               ; preds = %20
  %42 = load i16, i16* %9, align 2
  %43 = sext i16 %42 to i32
  %44 = load i16, i16* @MYSQL_TYPE_LONG, align 2
  %45 = sext i16 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = load i16, i16* %9, align 2
  %49 = sext i16 %48 to i32
  %50 = load i16, i16* @MYSQL_TYPE_LONGLONG, align 2
  %51 = sext i16 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load i16, i16* %9, align 2
  %55 = sext i16 %54 to i32
  %56 = load i16, i16* @MYSQL_TYPE_TINY, align 2
  %57 = sext i16 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %127

59:                                               ; preds = %53, %47, %41
  %60 = load i32*, i32** %10, align 8
  %61 = call i64 @Z_TYPE_P(i32* %60)
  %62 = load i64, i64* @IS_LONG, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load i64, i64* @PASS, align 8
  %66 = load i32**, i32*** %6, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @mysqlnd_stmt_copy_it(i32** %66, i32* %67, i32 %70, i32 %71)
  %73 = icmp ne i64 %65, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @SET_OOM_ERROR(i32 %77)
  br label %134

79:                                               ; preds = %64, %59
  %80 = load i32*, i32** %10, align 8
  %81 = call i64 @Z_TYPE_P(i32* %80)
  %82 = load i64, i64* @IS_LONG, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %126

84:                                               ; preds = %79
  %85 = load i32**, i32*** %6, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load i32**, i32*** %6, align 8
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @Z_ISUNDEF(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %88
  %98 = load i32**, i32*** %6, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  br label %105

103:                                              ; preds = %88, %84
  %104 = load i32*, i32** %10, align 8
  br label %105

105:                                              ; preds = %103, %97
  %106 = phi i32* [ %102, %97 ], [ %104, %103 ]
  store i32* %106, i32** %11, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call double @zval_get_double(i32* %107)
  store double %108, double* %12, align 8
  %109 = load double, double* %12, align 8
  %110 = load double, double* @ZEND_LONG_MAX, align 8
  %111 = fcmp ogt double %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %105
  %113 = load double, double* %12, align 8
  %114 = load double, double* @ZEND_LONG_MIN, align 8
  %115 = fcmp olt double %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %112, %105
  %117 = load i32*, i32** %7, align 8
  store i32 1, i32* %117, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = call i32 @convert_to_string_ex(i32* %120)
  br label %125

122:                                              ; preds = %112
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @convert_to_long(i32* %123)
  br label %125

125:                                              ; preds = %122, %116
  br label %126

126:                                              ; preds = %125, %79
  br label %127

127:                                              ; preds = %126, %53, %20
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %14

131:                                              ; preds = %14
  %132 = load i64, i64* @PASS, align 8
  %133 = call i32 @DBG_RETURN(i64 %132)
  br label %134

134:                                              ; preds = %131, %74
  %135 = load i64, i64* @FAIL, align 8
  %136 = call i32 @DBG_RETURN(i64 %135)
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @ZVAL_DEREF(i32*) #1

declare dso_local i32 @Z_ISNULL_P(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @mysqlnd_stmt_copy_it(i32**, i32*, i32, i32) #1

declare dso_local i32 @SET_OOM_ERROR(i32) #1

declare dso_local i32 @Z_ISUNDEF(i32) #1

declare dso_local double @zval_get_double(i32*) #1

declare dso_local i32 @convert_to_string_ex(i32*) #1

declare dso_local i32 @convert_to_long(i32*) #1

declare dso_local i32 @DBG_RETURN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
