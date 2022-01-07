; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_file_call.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_file_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32*, i32*, i32* }
%struct.TYPE_16__ = type { i32*, i32*, %struct.TYPE_15__* }

@SUCCESS = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@RETVAL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_15__*, i32, i32*, i32*)* @spl_filesystem_file_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spl_filesystem_file_call(%struct.TYPE_18__* %0, %struct.TYPE_15__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 2, i32 1
  %27 = add nsw i32 %22, %26
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call i64 @safe_emalloc(i32 %28, i32 4, i32 0)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %17, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %17, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %5
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %17, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %5
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %17, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 2, i32 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = call i64 @zend_get_parameters_array_ex(i32 %43, i32* %50)
  %52 = load i64, i64* @SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load i32*, i32** %17, align 8
  %56 = call i32 @efree(i32* %55)
  %57 = load i32, i32* @FAILURE, align 4
  %58 = call i32 @WRONG_PARAM_COUNT_WITH_RETVAL(i32 %57)
  br label %59

59:                                               ; preds = %54, %42
  %60 = call i32 @ZVAL_UNDEF(i32* %14)
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  store i32 40, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 6
  store i32* null, i32** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 5
  store i32* %14, i32** %63, align 8
  %64 = load i32, i32* %16, align 4
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 4
  store i32* %66, i32** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  store i32 1, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ZVAL_STR(i32* %69, i32 %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  store i32* null, i32** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = call i32 @zend_call_function(%struct.TYPE_17__* %11, %struct.TYPE_16__* %12)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @FAILURE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %59
  %84 = load i32, i32* %14, align 4
  %85 = call i64 @Z_ISUNDEF(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %59
  %88 = load i32, i32* @RETVAL_FALSE, align 4
  br label %92

89:                                               ; preds = %83
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @ZVAL_ZVAL(i32* %90, i32* %14, i32 0, i32 0)
  br label %92

92:                                               ; preds = %89, %87
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @efree(i32* %93)
  %95 = load i32, i32* %15, align 4
  ret i32 %95
}

declare dso_local i64 @safe_emalloc(i32, i32, i32) #1

declare dso_local i64 @zend_get_parameters_array_ex(i32, i32*) #1

declare dso_local i32 @efree(i32*) #1

declare dso_local i32 @WRONG_PARAM_COUNT_WITH_RETVAL(i32) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i32 @ZVAL_STR(i32*, i32) #1

declare dso_local i32 @zend_call_function(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i64 @Z_ISUNDEF(i32) #1

declare dso_local i32 @ZVAL_ZVAL(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
