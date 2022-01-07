; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_firebird_handle_doer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_firebird_handle_doer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i32 }

@PDO_FIREBIRD_HANDLE_INITIALIZER = common dso_local global i32 0, align 4
@firebird_handle_doer.info_count = internal constant [1 x i8] c"\80", align 1
@PDO_FB_SQLDA_VERSION = common dso_local global i32 0, align 4
@isc_info_end = common dso_local global i8 0, align 1
@isc_info_req_select_count = common dso_local global i8 0, align 1
@DSQL_drop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i64)* @firebird_handle_doer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firebird_handle_doer(%struct.TYPE_11__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %8, align 8
  %21 = load i32, i32* @PDO_FIREBIRD_HANDLE_INITIALIZER, align 4
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* @PDO_FB_SQLDA_VERSION, align 4
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @firebird_alloc_prepare_stmt(%struct.TYPE_11__* %28, i8* %29, i64 %30, %struct.TYPE_12__* %13, i32* %9, i32 0)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %140

34:                                               ; preds = %3
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* @PDO_FB_SQLDA_VERSION, align 4
  %41 = call i64 @isc_dsql_execute2(i32 %37, i32* %39, i32* %9, i32 %40, %struct.TYPE_12__* %12, %struct.TYPE_12__* %13)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = call i32 @RECORD_ERROR(%struct.TYPE_11__* %44)
  store i32 -1, i32* %11, align 4
  br label %128

46:                                               ; preds = %34
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @const_cast(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @firebird_handle_doer.info_count, i64 0, i64 0))
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %52 = call i64 @isc_dsql_sql_info(i32 %49, i32* %9, i32 1, i32 %50, i32 64, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = call i32 @RECORD_ERROR(%struct.TYPE_11__* %55)
  store i32 -1, i32* %11, align 4
  br label %128

57:                                               ; preds = %46
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %59 = load i8, i8* %58, align 16
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 128
  br i1 %61, label %62, label %111

62:                                               ; preds = %57
  store i32 3, i32* %14, align 4
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 1
  %64 = call i32 @isc_vax_integer(i8* %63, i16 signext 2)
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %104, %62
  %66 = load i32, i32* %14, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @isc_info_end, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ult i32 %75, %76
  br label %78

78:                                               ; preds = %74, %65
  %79 = phi i1 [ false, %65 ], [ %77, %74 ]
  br i1 %79, label %80, label %110

80:                                               ; preds = %78
  %81 = load i32, i32* %14, align 4
  %82 = add i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 %83
  %85 = call i32 @isc_vax_integer(i8* %84, i16 signext 2)
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %16, align 2
  %87 = load i32, i32* %14, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = load i8, i8* @isc_info_req_select_count, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %80
  %96 = load i32, i32* %14, align 4
  %97 = add i32 %96, 3
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 %98
  %100 = load i16, i16* %16, align 2
  %101 = call i32 @isc_vax_integer(i8* %99, i16 signext %100)
  %102 = load i32, i32* %11, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %95, %80
  %105 = load i16, i16* %16, align 2
  %106 = sext i16 %105 to i32
  %107 = add nsw i32 %106, 3
  %108 = load i32, i32* %14, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %14, align 4
  br label %65

110:                                              ; preds = %78
  br label %111

111:                                              ; preds = %110, %57
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = call i64 @isc_commit_retaining(i32 %119, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = call i32 @RECORD_ERROR(%struct.TYPE_11__* %125)
  br label %127

127:                                              ; preds = %124, %116, %111
  br label %128

128:                                              ; preds = %127, %54, %43
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @DSQL_drop, align 4
  %133 = call i64 @isc_dsql_free_statement(i32 %131, i32* %9, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = call i32 @RECORD_ERROR(%struct.TYPE_11__* %136)
  br label %138

138:                                              ; preds = %135, %128
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %33
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @firebird_alloc_prepare_stmt(%struct.TYPE_11__*, i8*, i64, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @isc_dsql_execute2(i32, i32*, i32*, i32, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @RECORD_ERROR(%struct.TYPE_11__*) #1

declare dso_local i64 @isc_dsql_sql_info(i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @const_cast(i8*) #1

declare dso_local i32 @isc_vax_integer(i8*, i16 signext) #1

declare dso_local i64 @isc_commit_retaining(i32, i32*) #1

declare dso_local i64 @isc_dsql_free_statement(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
