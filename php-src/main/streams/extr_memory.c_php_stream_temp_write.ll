; ModuleID = '/home/carl/AnghaBench/php-src/main/streams/extr_memory.c_php_stream_temp_write.c'
source_filename = "/home/carl/AnghaBench/php-src/main/streams/extr_memory.c_php_stream_temp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__*, i32 }

@PHP_STREAM_IS_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"php\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Unable to create temporary file, Check permissions in temporary files directory.\00", align 1
@PHP_STREAM_FREE_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i64)* @php_stream_temp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_stream_temp_write(%struct.TYPE_12__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %80

25:                                               ; preds = %3
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = load i32, i32* @PHP_STREAM_IS_MEMORY, align 4
  %30 = call i64 @php_stream_is(%struct.TYPE_12__* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %25
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = call i8* @php_stream_memory_get_buffer(%struct.TYPE_12__* %35, i64* %9)
  store i8* %36, i8** %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %32
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_12__* @php_stream_fopen_temporary_file(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %11, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %50 = icmp eq %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @E_WARNING, align 4
  %53 = call i32 @php_error_docref(i32* null, i32 %52, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %80

54:                                               ; preds = %44
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @php_stream_write(%struct.TYPE_12__* %55, i8* %56, i64 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = load i32, i32* @PHP_STREAM_FREE_CLOSE, align 4
  %63 = call i32 @php_stream_free_enclosed(%struct.TYPE_12__* %61, i32 %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = call i32 @php_stream_encloses(%struct.TYPE_12__* %67, %struct.TYPE_12__* %70)
  br label %72

72:                                               ; preds = %54, %32
  br label %73

73:                                               ; preds = %72, %25
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @php_stream_write(%struct.TYPE_12__* %76, i8* %77, i64 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %73, %51, %24
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @php_stream_is(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @php_stream_memory_get_buffer(%struct.TYPE_12__*, i64*) #1

declare dso_local %struct.TYPE_12__* @php_stream_fopen_temporary_file(i32, i8*, i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @php_stream_write(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @php_stream_free_enclosed(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @php_stream_encloses(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
