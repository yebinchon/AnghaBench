; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_consumed_filter_filter.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_consumed_filter_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32 }

@PSFS_FLAG_FLUSH_CLOSE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@PSFS_PASS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i64*, i32)* @consumed_filter_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @consumed_filter_filter(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @Z_PTR(i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %13, align 8
  store i64 0, i64* %15, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @php_stream_tell(i32* %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %25, %6
  br label %31

31:                                               ; preds = %36, %30
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %14, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %38 = call i32 @php_stream_bucket_unlink(%struct.TYPE_13__* %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %15, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %15, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %46 = call i32 @php_stream_bucket_append(%struct.TYPE_12__* %44, %struct.TYPE_13__* %45)
  br label %31

47:                                               ; preds = %31
  %48 = load i64*, i64** %11, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* %15, align 8
  %52 = load i64*, i64** %11, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @PSFS_FLAG_FLUSH_CLOSE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load i32, i32* @SEEK_SET, align 4
  %69 = call i32 @php_stream_seek(i32* %59, i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %58, %53
  %71 = load i64, i64* %15, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load i32, i32* @PSFS_PASS_ON, align 4
  ret i32 %76
}

declare dso_local i64 @Z_PTR(i32) #1

declare dso_local i32 @php_stream_tell(i32*) #1

declare dso_local i32 @php_stream_bucket_unlink(%struct.TYPE_13__*) #1

declare dso_local i32 @php_stream_bucket_append(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @php_stream_seek(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
