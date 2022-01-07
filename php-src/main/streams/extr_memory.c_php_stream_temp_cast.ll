; ModuleID = '/home/carl/AnghaBench/php-src/main/streams/extr_memory.c_php_stream_temp_cast.c'
source_filename = "/home/carl/AnghaBench/php-src/main/streams/extr_memory.c_php_stream_temp_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }

@FAILURE = common dso_local global i32 0, align 4
@PHP_STREAM_IS_STDIO = common dso_local global i32 0, align 4
@PHP_STREAM_AS_STDIO = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to create temporary file.\00", align 1
@PHP_STREAM_FREE_CLOSE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i8**)* @php_stream_temp_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_stream_temp_cast(%struct.TYPE_15__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %8, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %18 = icmp ne %struct.TYPE_14__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @FAILURE, align 4
  store i32 %26, i32* %4, align 4
  br label %101

27:                                               ; preds = %3
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = load i32, i32* @PHP_STREAM_IS_STDIO, align 4
  %32 = call i64 @php_stream_is(%struct.TYPE_15__* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i8**, i8*** %7, align 8
  %40 = call i32 @php_stream_cast(%struct.TYPE_15__* %37, i32 %38, i8** %39, i32 0)
  store i32 %40, i32* %4, align 4
  br label %101

41:                                               ; preds = %27
  %42 = load i8**, i8*** %7, align 8
  %43 = icmp eq i8** %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PHP_STREAM_AS_STDIO, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @SUCCESS, align 4
  store i32 %49, i32* %4, align 4
  br label %101

50:                                               ; preds = %44, %41
  %51 = load i8**, i8*** %7, align 8
  %52 = icmp eq i8** %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @FAILURE, align 4
  store i32 %54, i32* %4, align 4
  br label %101

55:                                               ; preds = %50
  %56 = call %struct.TYPE_15__* (...) @php_stream_fopen_tmpfile()
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %9, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %58 = icmp eq %struct.TYPE_15__* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @E_WARNING, align 4
  %61 = call i32 @php_error_docref(i32* null, i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @FAILURE, align 4
  store i32 %62, i32* %4, align 4
  br label %101

63:                                               ; preds = %55
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = call i8* @php_stream_memory_get_buffer(%struct.TYPE_15__* %66, i64* %10)
  store i8* %67, i8** %11, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @php_stream_write(%struct.TYPE_15__* %68, i8* %69, i64 %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = call i32 @php_stream_tell(%struct.TYPE_15__* %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = load i32, i32* @PHP_STREAM_FREE_CLOSE, align 4
  %80 = call i32 @php_stream_free_enclosed(%struct.TYPE_15__* %78, i32 %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = call i32 @php_stream_encloses(%struct.TYPE_15__* %84, %struct.TYPE_15__* %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @SEEK_SET, align 4
  %94 = call i32 @php_stream_seek(%struct.TYPE_15__* %91, i32 %92, i32 %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i8**, i8*** %7, align 8
  %100 = call i32 @php_stream_cast(%struct.TYPE_15__* %97, i32 %98, i8** %99, i32 1)
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %63, %59, %53, %48, %34, %25
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @php_stream_is(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @php_stream_cast(%struct.TYPE_15__*, i32, i8**, i32) #1

declare dso_local %struct.TYPE_15__* @php_stream_fopen_tmpfile(...) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i8* @php_stream_memory_get_buffer(%struct.TYPE_15__*, i64*) #1

declare dso_local i32 @php_stream_write(%struct.TYPE_15__*, i8*, i64) #1

declare dso_local i32 @php_stream_tell(%struct.TYPE_15__*) #1

declare dso_local i32 @php_stream_free_enclosed(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @php_stream_encloses(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @php_stream_seek(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
