; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_execute_store_params.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_execute_store_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"mysqlnd_stmt_execute_store_params\00", align 1
@PASS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"ret=%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32**, i32**, i64*)* @mysqlnd_stmt_execute_store_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mysqlnd_stmt_execute_store_params(%struct.TYPE_10__* %0, i32** %1, i32** %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %10, align 8
  %21 = load i32**, i32*** %7, align 8
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %23 = load i64, i64* @FAIL, align 8
  store i64 %23, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %24 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 7
  %29 = sdiv i32 %28, 8
  store i32 %29, i32* %17, align 4
  %30 = load i64, i64* @FAIL, align 8
  %31 = load i32**, i32*** %7, align 8
  %32 = load i32**, i32*** %8, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %17, align 4
  %36 = zext i32 %35 to i64
  %37 = call i64 @mysqlnd_stmt_execute_check_n_enlarge_buffer(i32** %31, i32** %32, i64* %33, i32* %34, i64 %36)
  %38 = icmp eq i64 %30, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SET_OOM_ERROR(i32 %42)
  br label %136

44:                                               ; preds = %4
  %45 = load i32**, i32*** %8, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32**, i32*** %7, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = ptrtoint i32* %46 to i64
  %50 = ptrtoint i32* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 4
  store i64 %52, i64* %16, align 8
  %53 = load i32**, i32*** %8, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @memset(i32* %54, i32 0, i32 %55)
  %57 = load i32, i32* %17, align 4
  %58 = load i32**, i32*** %8, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = zext i32 %57 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %58, align 8
  %62 = load i64, i64* @FAIL, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %64 = call i64 @mysqlnd_stmt_execute_prepare_param_types(%struct.TYPE_9__* %63, i32** %13, i32* %15)
  %65 = icmp eq i64 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %44
  br label %136

67:                                               ; preds = %44
  %68 = load i32**, i32*** %8, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @int1store(i32* %69, i32 %72)
  %74 = load i32**, i32*** %8, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %74, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %67
  %82 = load i64, i64* @FAIL, align 8
  %83 = load i32**, i32*** %7, align 8
  %84 = load i32**, i32*** %8, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = call i64 @mysqlnd_stmt_execute_check_n_enlarge_buffer(i32** %83, i32** %84, i64* %85, i32* %86, i64 %91)
  %93 = icmp eq i64 %82, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %81
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @SET_OOM_ERROR(i32 %97)
  br label %136

99:                                               ; preds = %81
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = load i32**, i32*** %8, align 8
  %103 = call i32 @mysqlnd_stmt_execute_store_types(%struct.TYPE_9__* %100, i32* %101, i32** %102)
  br label %104

104:                                              ; preds = %99, %67
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i64, i64* @FAIL, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %110 = call i64 @mysqlnd_stmt_execute_calculate_param_values_size(%struct.TYPE_9__* %109, i32** %13, i64* %12)
  %111 = icmp eq i64 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %136

113:                                              ; preds = %104
  %114 = load i64, i64* @FAIL, align 8
  %115 = load i32**, i32*** %7, align 8
  %116 = load i32**, i32*** %8, align 8
  %117 = load i64*, i64** %9, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = load i64, i64* %12, align 8
  %120 = call i64 @mysqlnd_stmt_execute_check_n_enlarge_buffer(i32** %115, i32** %116, i64* %117, i32* %118, i64 %119)
  %121 = icmp eq i64 %114, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @SET_OOM_ERROR(i32 %125)
  br label %136

127:                                              ; preds = %113
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = load i32**, i32*** %7, align 8
  %131 = load i32*, i32** %130, align 8
  %132 = load i32**, i32*** %8, align 8
  %133 = load i64, i64* %16, align 8
  %134 = call i32 @mysqlnd_stmt_execute_store_param_values(%struct.TYPE_9__* %128, i32* %129, i32* %131, i32** %132, i64 %133)
  %135 = load i64, i64* @PASS, align 8
  store i64 %135, i64* %14, align 8
  br label %136

136:                                              ; preds = %127, %122, %112, %94, %66, %39
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = call i32 @mysqlnd_stmt_free_copies(%struct.TYPE_9__* %137, i32* %138)
  %140 = load i64, i64* %14, align 8
  %141 = load i64, i64* @PASS, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %145 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %144)
  %146 = load i64, i64* %14, align 8
  %147 = call i32 @DBG_RETURN(i64 %146)
  %148 = load i64, i64* %5, align 8
  ret i64 %148
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i64 @mysqlnd_stmt_execute_check_n_enlarge_buffer(i32**, i32**, i64*, i32*, i64) #1

declare dso_local i32 @SET_OOM_ERROR(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mysqlnd_stmt_execute_prepare_param_types(%struct.TYPE_9__*, i32**, i32*) #1

declare dso_local i32 @int1store(i32*, i32) #1

declare dso_local i32 @mysqlnd_stmt_execute_store_types(%struct.TYPE_9__*, i32*, i32**) #1

declare dso_local i64 @mysqlnd_stmt_execute_calculate_param_values_size(%struct.TYPE_9__*, i32**, i64*) #1

declare dso_local i32 @mysqlnd_stmt_execute_store_param_values(%struct.TYPE_9__*, i32*, i32*, i32**, i64) #1

declare dso_local i32 @mysqlnd_stmt_free_copies(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i8*) #1

declare dso_local i32 @DBG_RETURN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
