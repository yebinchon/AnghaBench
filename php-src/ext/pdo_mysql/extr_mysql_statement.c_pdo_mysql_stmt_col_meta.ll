; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_mysql/extr_mysql_statement.c_pdo_mysql_stmt_col_meta.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_mysql/extr_mysql_statement.c_pdo_mysql_stmt_col_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [24 x i8] c"pdo_mysql_stmt_col_meta\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"stmt=%p\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"mysql:def\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"not_null\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"primary_key\00", align 1
@MULTIPLE_KEY_FLAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"multiple_key\00", align 1
@UNIQUE_KEY_FLAG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"unique_key\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"native_type\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SUCCESS = common dso_local global i32 0, align 4
@PDO_PARAM_INT = common dso_local global i32 0, align 4
@PDO_PARAM_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i32*)* @pdo_mysql_stmt_col_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_mysql_stmt_col_meta(%struct.TYPE_5__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = call i32 @PDO_DBG_ENTER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PDO_DBG_INF_FMT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @FAILURE, align 4
  %27 = call i32 @PDO_DBG_RETURN(i32 %26)
  br label %28

28:                                               ; preds = %25, %3
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @FAILURE, align 4
  %36 = call i32 @PDO_DBG_RETURN(i32 %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @array_init(i32* %38)
  %40 = call i32 @array_init(i32* %10)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %44
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %9, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @add_assoc_string(i32* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %50, %37
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @IS_NOT_NULL(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @add_next_index_string(i32* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %56
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @IS_PRI_KEY(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 @add_next_index_string(i32* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %64
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MULTIPLE_KEY_FLAG, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 @add_next_index_string(i32* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %72
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @UNIQUE_KEY_FLAG, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 @add_next_index_string(i32* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %81
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @IS_BLOB(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = call i32 @add_next_index_string(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %90
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @type_to_name_native(i32 %101)
  store i8* %102, i8** %11, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32*, i32** %7, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @add_assoc_string(i32* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %105, %98
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @add_assoc_zval(i32* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* %10)
  %112 = load i32*, i32** %7, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  br label %122

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %117
  %123 = phi i8* [ %120, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %121 ]
  %124 = call i32 @add_assoc_string(i32* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %123)
  %125 = load i32, i32* @SUCCESS, align 4
  %126 = call i32 @PDO_DBG_RETURN(i32 %125)
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @PDO_DBG_ENTER(i8*) #1

declare dso_local i32 @PDO_DBG_INF_FMT(i8*, i32) #1

declare dso_local i32 @PDO_DBG_RETURN(i32) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_assoc_string(i32*, i8*, i8*) #1

declare dso_local i64 @IS_NOT_NULL(i32) #1

declare dso_local i32 @add_next_index_string(i32*, i8*) #1

declare dso_local i64 @IS_PRI_KEY(i32) #1

declare dso_local i64 @IS_BLOB(i32) #1

declare dso_local i8* @type_to_name_native(i32) #1

declare dso_local i32 @add_assoc_zval(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
