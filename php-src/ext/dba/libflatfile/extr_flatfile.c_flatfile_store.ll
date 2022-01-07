; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libflatfile/extr_flatfile.c_flatfile_store.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libflatfile/extr_flatfile.c_flatfile_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }

@FLATFILE_INSERT = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flatfile_store(%struct.TYPE_10__* %0, i64 %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = bitcast %struct.TYPE_11__* %8 to { i64, i32 }*
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  store i64 %1, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  store i32 %2, i32* %14, align 8
  %15 = bitcast %struct.TYPE_11__* %9 to { i64, i32 }*
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  store i64 %3, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  store i32 %4, i32* %17, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store i32 %5, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @FLATFILE_INSERT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %6
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = bitcast %struct.TYPE_11__* %8 to { i64, i32 }*
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @flatfile_findkey(%struct.TYPE_10__* %22, i64 %25, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %138

31:                                               ; preds = %21
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SEEK_END, align 4
  %36 = call i32 @php_stream_seek(i32 %34, i64 0, i32 %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @php_stream_printf(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @php_stream_flush(i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @php_stream_write(i32 %49, i32 %51, i64 %53)
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %31
  store i32 -1, i32* %7, align 4
  br label %138

59:                                               ; preds = %31
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @php_stream_printf(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @php_stream_flush(i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @php_stream_write(i32 %72, i32 %74, i64 %76)
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %59
  store i32 -1, i32* %7, align 4
  br label %138

82:                                               ; preds = %59
  br label %133

83:                                               ; preds = %6
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %85 = bitcast %struct.TYPE_11__* %8 to { i64, i32 }*
  %86 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %85, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @flatfile_delete(%struct.TYPE_10__* %84, i64 %87, i32 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @php_stream_printf(i32 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @php_stream_flush(i32 %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @php_stream_write(i32 %103, i32 %105, i64 %107)
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %83
  store i32 -1, i32* %7, align 4
  br label %138

113:                                              ; preds = %83
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @php_stream_printf(i32 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @php_stream_write(i32 %122, i32 %124, i64 %126)
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %113
  store i32 -1, i32* %7, align 4
  br label %138

132:                                              ; preds = %113
  br label %133

133:                                              ; preds = %132, %82
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @php_stream_flush(i32 %136)
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %133, %131, %112, %81, %58, %30
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i64 @flatfile_findkey(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @php_stream_seek(i32, i64, i32) #1

declare dso_local i32 @php_stream_printf(i32, i8*, i64) #1

declare dso_local i32 @php_stream_flush(i32) #1

declare dso_local i64 @php_stream_write(i32, i32, i64) #1

declare dso_local i32 @flatfile_delete(%struct.TYPE_10__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
