; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_frame.c_phpdbg_compile_stackframe.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_frame.c_phpdbg_compile_stackframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32, i64, i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@ZEND_USER_FUNCTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" at \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" [internal function]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @phpdbg_compile_stackframe(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_21__, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %9 = bitcast %struct.TYPE_21__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %4, align 8
  store i64 0, i64* %5, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %18 = call i64 @ZEND_CALL_NUM_ARGS(%struct.TYPE_20__* %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %20 = call i32* @ZEND_CALL_ARG(%struct.TYPE_20__* %19, i32 1)
  store i32* %20, i32** %8, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @smart_str_append(%struct.TYPE_21__* %3, i32 %30)
  %32 = call i32 @smart_str_appends(%struct.TYPE_21__* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %25, %1
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @smart_str_append(%struct.TYPE_21__* %3, i32 %36)
  %38 = call i32 @smart_str_appendc(%struct.TYPE_21__* %3, i8 signext 40)
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %40 = call i64 @ZEND_CALL_NUM_ARGS(%struct.TYPE_20__* %39)
  %41 = load i64, i64* %6, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %48, %43
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @phpdbg_append_individual_arg(%struct.TYPE_21__* %3, i64 %49, %struct.TYPE_16__* %52, i32* %53)
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %8, align 8
  %57 = load i64, i64* %5, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %44

59:                                               ; preds = %44
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = call i32* @ZEND_CALL_VAR_NUM(%struct.TYPE_20__* %60, i64 %67)
  store i32* %68, i32** %8, align 8
  br label %69

69:                                               ; preds = %59, %33
  br label %70

70:                                               ; preds = %74, %69
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @phpdbg_append_individual_arg(%struct.TYPE_21__* %3, i64 %75, %struct.TYPE_16__* %78, i32* %79)
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %8, align 8
  %83 = load i64, i64* %5, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %5, align 8
  br label %70

85:                                               ; preds = %70
  %86 = call i32 @smart_str_appendc(%struct.TYPE_21__* %3, i8 signext 41)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ZEND_USER_FUNCTION, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %85
  %95 = call i32 @smart_str_appends(%struct.TYPE_21__* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @smart_str_append(%struct.TYPE_21__* %3, i32 %98)
  %100 = call i32 @smart_str_appendc(%struct.TYPE_21__* %3, i8 signext 58)
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @smart_str_append_unsigned(%struct.TYPE_21__* %3, i32 %105)
  br label %109

107:                                              ; preds = %85
  %108 = call i32 @smart_str_appends(%struct.TYPE_21__* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %94
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  ret i32* %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ZEND_CALL_NUM_ARGS(%struct.TYPE_20__*) #2

declare dso_local i32* @ZEND_CALL_ARG(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @smart_str_append(%struct.TYPE_21__*, i32) #2

declare dso_local i32 @smart_str_appends(%struct.TYPE_21__*, i8*) #2

declare dso_local i32 @smart_str_appendc(%struct.TYPE_21__*, i8 signext) #2

declare dso_local i32 @phpdbg_append_individual_arg(%struct.TYPE_21__*, i64, %struct.TYPE_16__*, i32*) #2

declare dso_local i32* @ZEND_CALL_VAR_NUM(%struct.TYPE_20__*, i64) #2

declare dso_local i32 @smart_str_append_unsigned(%struct.TYPE_21__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
