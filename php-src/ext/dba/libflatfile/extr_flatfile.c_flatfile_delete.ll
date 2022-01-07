; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libflatfile/extr_flatfile.c_flatfile_delete.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libflatfile/extr_flatfile.c_flatfile_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i64 }

@FLATFILE_BLOCK_SIZE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flatfile_delete(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = bitcast %struct.TYPE_6__* %5 to { i8*, i64 }*
  %14 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %13, i32 0, i32 0
  store i8* %1, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %13, i32 0, i32 1
  store i64 %2, i64* %15, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* @FLATFILE_BLOCK_SIZE, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i8* @emalloc(i64 %21)
  store i8* %22, i8** %10, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @php_stream_rewind(i32 %25)
  br label %27

27:                                               ; preds = %119, %3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @php_stream_eof(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %126

34:                                               ; preds = %27
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @php_stream_gets(i32 %37, i8* %38, i32 15)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %126

42:                                               ; preds = %34
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @atoi(i8* %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @FLATFILE_BLOCK_SIZE, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i8* @erealloc(i8* %52, i64 %53)
  store i8* %54, i8** %10, align 8
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @php_stream_tell(i32 %58)
  store i64 %59, i64* %12, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @php_stream_read(i32 %62, i8* %63, i64 %64)
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %55
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @memcmp(i8* %70, i8* %71, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %98, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %12, align 8
  %80 = load i32, i32* @SEEK_SET, align 4
  %81 = call i32 @php_stream_seek(i32 %78, i64 %79, i32 %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @php_stream_putc(i32 %84, i32 0)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @php_stream_flush(i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SEEK_END, align 4
  %94 = call i32 @php_stream_seek(i32 %92, i64 0, i32 %93)
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @efree(i8* %95)
  %97 = load i32, i32* @SUCCESS, align 4
  store i32 %97, i32* %4, align 4
  br label %130

98:                                               ; preds = %69, %55
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @php_stream_gets(i32 %101, i8* %102, i32 15)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  br label %126

106:                                              ; preds = %98
  %107 = load i8*, i8** %10, align 8
  %108 = call i64 @atoi(i8* %107)
  store i64 %108, i64* %11, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp uge i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* @FLATFILE_BLOCK_SIZE, align 8
  %115 = add i64 %113, %114
  store i64 %115, i64* %9, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i8* @erealloc(i8* %116, i64 %117)
  store i8* %118, i8** %10, align 8
  br label %119

119:                                              ; preds = %112, %106
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %10, align 8
  %124 = load i64, i64* %11, align 8
  %125 = call i64 @php_stream_read(i32 %122, i8* %123, i64 %124)
  store i64 %125, i64* %11, align 8
  br label %27

126:                                              ; preds = %105, %41, %27
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @efree(i8* %127)
  %129 = load i32, i32* @FAILURE, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %75
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @php_stream_rewind(i32) #1

declare dso_local i32 @php_stream_eof(i32) #1

declare dso_local i32 @php_stream_gets(i32, i8*, i32) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i8* @erealloc(i8*, i64) #1

declare dso_local i64 @php_stream_tell(i32) #1

declare dso_local i64 @php_stream_read(i32, i8*, i64) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @php_stream_seek(i32, i64, i32) #1

declare dso_local i32 @php_stream_putc(i32, i32) #1

declare dso_local i32 @php_stream_flush(i32) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
