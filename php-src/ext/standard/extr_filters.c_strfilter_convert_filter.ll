; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_strfilter_convert_filter.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_strfilter_convert_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32* }

@SUCCESS = common dso_local global i64 0, align 8
@PSFS_FLAG_NORMAL = common dso_local global i32 0, align 4
@PSFS_PASS_ON = common dso_local global i32 0, align 4
@PSFS_ERR_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i64*, i32)* @strfilter_convert_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strfilter_convert_filter(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %14, align 8
  store i64 0, i64* %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @Z_PTR(i32 %19)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %16, align 8
  br label %22

22:                                               ; preds = %49, %6
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = icmp ne %struct.TYPE_13__* %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %14, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %32 = call i32 @php_stream_bucket_unlink(%struct.TYPE_13__* %31)
  %33 = load i32*, i32** %16, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @php_stream_is_persistent(i32* %43)
  %45 = call i64 @strfilter_convert_append_bucket(i32* %33, i32* %34, %struct.TYPE_11__* %35, %struct.TYPE_12__* %36, i32* %39, i32 %42, i64* %15, i32 %44)
  %46 = load i64, i64* @SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %27
  br label %76

49:                                               ; preds = %27
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %51 = call i32 @php_stream_bucket_delref(%struct.TYPE_13__* %50)
  br label %22

52:                                               ; preds = %22
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @PSFS_FLAG_NORMAL, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32*, i32** %16, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @php_stream_is_persistent(i32* %61)
  %63 = call i64 @strfilter_convert_append_bucket(i32* %57, i32* %58, %struct.TYPE_11__* %59, %struct.TYPE_12__* %60, i32* null, i32 0, i64* %15, i32 %62)
  %64 = load i64, i64* @SUCCESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %76

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i64*, i64** %12, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, i64* %15, align 8
  %73 = load i64*, i64** %12, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* @PSFS_PASS_ON, align 4
  store i32 %75, i32* %7, align 4
  br label %84

76:                                               ; preds = %66, %48
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %78 = icmp ne %struct.TYPE_13__* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %81 = call i32 @php_stream_bucket_delref(%struct.TYPE_13__* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* @PSFS_ERR_FATAL, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %74
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i64 @Z_PTR(i32) #1

declare dso_local i32 @php_stream_bucket_unlink(%struct.TYPE_13__*) #1

declare dso_local i64 @strfilter_convert_append_bucket(i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32*, i32, i64*, i32) #1

declare dso_local i32 @php_stream_is_persistent(i32*) #1

declare dso_local i32 @php_stream_bucket_delref(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
