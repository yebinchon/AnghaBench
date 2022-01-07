; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_file_read_line_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_file_read_line_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i64, i32, %struct.TYPE_14__*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@SPL_FILE_OBJECT_READ_CSV = common dso_local global i32 0, align 4
@spl_ce_SplFileObject = common dso_local global i64 0, align 8
@spl_ce_RuntimeException = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot read from file %s\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@current_execute_data = common dso_local global i32 0, align 4
@ZEND_THIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"getCurrentLine\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i32)* @spl_filesystem_file_read_line_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spl_filesystem_file_read_line_ex(i32* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SPL_FILE_OBJECT_READ_CSV, align 4
  %15 = call i64 @SPL_HAS_FLAG(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @spl_ce_SplFileObject, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %145

28:                                               ; preds = %17, %3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @php_stream_eof(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @spl_ce_RuntimeException, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @zend_throw_exception_ex(i32 %40, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i32, i32* @FAILURE, align 4
  store i32 %46, i32* %4, align 4
  br label %149

47:                                               ; preds = %28
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SPL_FILE_OBJECT_READ_CSV, align 4
  %52 = call i64 @SPL_HAS_FLAG(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %47
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @spl_filesystem_file_read_csv(%struct.TYPE_13__* %55, i32 %60, i32 %65, i32 %70, i32* null)
  store i32 %71, i32* %4, align 4
  br label %149

72:                                               ; preds = %47
  %73 = load i32, i32* @current_execute_data, align 4
  %74 = call i32* @EG(i32 %73)
  store i32* %74, i32** %9, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @Z_OBJ_P(i32* %75)
  %77 = load i32, i32* @ZEND_THIS, align 4
  %78 = call i32 @Z_OBJCE_P(i32 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  %83 = call i32 @zend_call_method_with_0_params(i32 %76, i32 %78, %struct.TYPE_14__** %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  br label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @Z_ISUNDEF(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %143, label %88

88:                                               ; preds = %84
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %88
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @Z_ISUNDEF(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %95, %88
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %103, %95
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %112 = call i32 @spl_filesystem_file_free_line(%struct.TYPE_13__* %111)
  %113 = load i32, i32* %8, align 4
  %114 = call i64 @Z_TYPE(i32 %113)
  %115 = load i64, i64* @IS_STRING, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %110
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @Z_STRVAL(i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @Z_STRLEN(i32 %120)
  %122 = call i64 @estrndup(i32 %119, i32 %121)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  store i64 %122, i64* %126, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @Z_STRLEN(i32 %127)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  store i32 %128, i32* %132, align 4
  br label %140

133:                                              ; preds = %110
  store i32* %8, i32** %10, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @ZVAL_COPY_DEREF(i32* %137, i32* %138)
  br label %140

140:                                              ; preds = %133, %117
  %141 = call i32 @zval_ptr_dtor(i32* %8)
  %142 = load i32, i32* @SUCCESS, align 4
  store i32 %142, i32* %4, align 4
  br label %149

143:                                              ; preds = %84
  %144 = load i32, i32* @FAILURE, align 4
  store i32 %144, i32* %4, align 4
  br label %149

145:                                              ; preds = %17
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @spl_filesystem_file_read(%struct.TYPE_13__* %146, i32 %147)
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %145, %143, %140, %54, %45
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @SPL_HAS_FLAG(i32, i32) #1

declare dso_local i64 @php_stream_eof(i32) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, i32) #1

declare dso_local i32 @spl_filesystem_file_read_csv(%struct.TYPE_13__*, i32, i32, i32, i32*) #1

declare dso_local i32* @EG(i32) #1

declare dso_local i32 @zend_call_method_with_0_params(i32, i32, %struct.TYPE_14__**, i8*, i32*) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

declare dso_local i32 @Z_OBJCE_P(i32) #1

declare dso_local i32 @Z_ISUNDEF(i32) #1

declare dso_local i32 @spl_filesystem_file_free_line(%struct.TYPE_13__*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i64 @estrndup(i32, i32) #1

declare dso_local i32 @Z_STRVAL(i32) #1

declare dso_local i32 @Z_STRLEN(i32) #1

declare dso_local i32 @ZVAL_COPY_DEREF(i32*, i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @spl_filesystem_file_read(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
