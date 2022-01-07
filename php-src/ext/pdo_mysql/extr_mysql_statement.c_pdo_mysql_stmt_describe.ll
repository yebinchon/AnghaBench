; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_mysql/extr_mysql_statement.c_pdo_mysql_stmt_describe.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_mysql/extr_mysql_statement.c_pdo_mysql_stmt_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.pdo_column_data*, i64 }
%struct.pdo_column_data = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"pdo_mysql_stmt_describe\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"stmt=%p\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@PDO_PARAM_STR = common dso_local global i32 0, align 4
@PDO_PARAM_ZVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @pdo_mysql_stmt_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_mysql_stmt_describe(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.pdo_column_data*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.pdo_column_data*, %struct.pdo_column_data** %14, align 8
  store %struct.pdo_column_data* %15, %struct.pdo_column_data** %7, align 8
  %16 = call i32 @PDO_DBG_ENTER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @PDO_DBG_INF_FMT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 @PDO_DBG_RETURN(i32 0)
  br label %27

27:                                               ; preds = %25, %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @PDO_DBG_RETURN(i32 0)
  br label %35

35:                                               ; preds = %33, %27
  %36 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %37 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %36, i64 0
  %38 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @PDO_DBG_RETURN(i32 1)
  br label %43

43:                                               ; preds = %41, %35
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %136, %43
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %139

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %50
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @strpprintf(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %73)
  %75 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %75, i64 %77
  %79 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %78, i32 0, i32 3
  store i64 %74, i64* %79, align 8
  br label %103

80:                                               ; preds = %50
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @zend_string_init(i32 %88, i32 %96, i32 0)
  %98 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %98, i64 %100
  %102 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %101, i32 0, i32 3
  store i64 %97, i64* %102, align 8
  br label %103

103:                                              ; preds = %80, %57
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %112, i64 %114
  %116 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %115, i32 0, i32 2
  store i32 %111, i32* %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %125, i64 %127
  %129 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %128, i32 0, i32 1
  store i32 %124, i32* %129, align 4
  %130 = load i32, i32* @PDO_PARAM_STR, align 4
  %131 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %131, i64 %133
  %135 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %134, i32 0, i32 0
  store i32 %130, i32* %135, align 8
  br label %136

136:                                              ; preds = %103
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %44

139:                                              ; preds = %44
  %140 = call i32 @PDO_DBG_RETURN(i32 1)
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @PDO_DBG_ENTER(i8*) #1

declare dso_local i32 @PDO_DBG_INF_FMT(i8*, i64) #1

declare dso_local i32 @PDO_DBG_RETURN(i32) #1

declare dso_local i64 @strpprintf(i32, i8*, i32, i32) #1

declare dso_local i64 @zend_string_init(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
