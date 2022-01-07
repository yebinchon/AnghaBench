; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_firebird_handle_preparer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_firebird_handle_preparer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i8, %struct.TYPE_15__*, i8*, %struct.TYPE_18__, i32*, i8*, i32, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32, i8* }
%struct.TYPE_16__ = type { i32 }

@PDO_FIREBIRD_HANDLE_INITIALIZER = common dso_local global i32 0, align 4
@firebird_handle_preparer.info = internal constant [1 x i8] c"\80", align 1
@PDO_FB_SQLDA_VERSION = common dso_local global i8* null, align 8
@firebird_stmt_methods = common dso_local global i32 0, align 4
@PDO_PLACEHOLDER_POSITIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i64, %struct.TYPE_14__*, i32*)* @firebird_handle_preparer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firebird_handle_preparer(%struct.TYPE_17__* %0, i8* %1, i64 %2, %struct.TYPE_14__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__, align 8
  %17 = alloca [8 x i8], align 1
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %13, align 8
  br label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @PDO_FIREBIRD_HANDLE_INITIALIZER, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i8*, i8** @PDO_FB_SQLDA_VERSION, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 4
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = call i32 @ALLOC_HASHTABLE(i32* %27)
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @zend_hash_init(i32* %29, i32 8, i32* null, i32* null, i32 0)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = call i32 @firebird_alloc_prepare_stmt(%struct.TYPE_17__* %31, i8* %32, i64 %33, %struct.TYPE_15__* %16, i32* %15, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %22
  br label %150

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @XSQLDA_LENGTH(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = add i64 0, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8* @ecalloc(i32 1, i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %13, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 9
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %49, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 8, %55
  %57 = trunc i64 %56 to i32
  %58 = call i8* @ecalloc(i32 1, i32 %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 7
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @PDO_FB_SQLDA_VERSION, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 6
  store i32* %72, i32** %74, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @const_cast(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @firebird_handle_preparer.info, i64 0, i64 0))
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %80 = call i64 @isc_dsql_sql_info(i32 %77, i32* %15, i32 1, i32 %78, i32 8, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %38
  br label %150

83:                                               ; preds = %38
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 3
  %85 = load i8, i8* %84, align 1
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  store i8 %85, i8* %87, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** @PDO_FB_SQLDA_VERSION, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 5
  %94 = call i64 @isc_dsql_describe(i32 %90, i32* %15, i8* %91, %struct.TYPE_18__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %83
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %98 = call i32 @RECORD_ERROR(%struct.TYPE_17__* %97)
  br label %150

99:                                               ; preds = %83
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** @PDO_FB_SQLDA_VERSION, align 8
  %104 = call i64 @isc_dsql_describe_bind(i32 %102, i32* %15, i8* %103, %struct.TYPE_15__* %16)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %150

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %141

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @XSQLDA_LENGTH(i32 %113)
  %115 = call i8* @ecalloc(i32 1, i32 %114)
  %116 = bitcast i8* %115 to %struct.TYPE_15__*
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 3
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %118, align 8
  %119 = load i8*, i8** @PDO_FB_SQLDA_VERSION, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 4
  store i8* %119, i8** %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  store i32 %125, i32* %129, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i8*, i8** @PDO_FB_SQLDA_VERSION, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = call i64 @isc_dsql_describe_bind(i32 %132, i32* %15, i8* %133, %struct.TYPE_15__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %111
  br label %150

140:                                              ; preds = %111
  br label %141

141:                                              ; preds = %140, %107
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 3
  store %struct.TYPE_15__* %142, %struct.TYPE_15__** %144, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 2
  store i32* @firebird_stmt_methods, i32** %146, align 8
  %147 = load i32, i32* @PDO_PLACEHOLDER_POSITIONAL, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  store i32 1, i32* %6, align 4
  br label %173

150:                                              ; preds = %139, %106, %96, %82, %37
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %152 = call i32 @RECORD_ERROR(%struct.TYPE_17__* %151)
  %153 = load i32*, i32** %14, align 8
  %154 = call i32 @zend_hash_destroy(i32* %153)
  %155 = load i32*, i32** %14, align 8
  %156 = call i32 @FREE_HASHTABLE(i32* %155)
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %158 = icmp ne %struct.TYPE_15__* %157, null
  br i1 %158, label %159, label %172

159:                                              ; preds = %150
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = icmp ne %struct.TYPE_15__* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = call i32 @efree(%struct.TYPE_15__* %167)
  br label %169

169:                                              ; preds = %164, %159
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %171 = call i32 @efree(%struct.TYPE_15__* %170)
  br label %172

172:                                              ; preds = %169, %150
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %172, %141
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local i32 @ALLOC_HASHTABLE(i32*) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @firebird_alloc_prepare_stmt(%struct.TYPE_17__*, i8*, i64, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i8* @ecalloc(i32, i32) #1

declare dso_local i32 @XSQLDA_LENGTH(i32) #1

declare dso_local i64 @isc_dsql_sql_info(i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @const_cast(i8*) #1

declare dso_local i64 @isc_dsql_describe(i32, i32*, i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @RECORD_ERROR(%struct.TYPE_17__*) #1

declare dso_local i64 @isc_dsql_describe_bind(i32, i32*, i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @zend_hash_destroy(i32*) #1

declare dso_local i32 @FREE_HASHTABLE(i32*) #1

declare dso_local i32 @efree(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
