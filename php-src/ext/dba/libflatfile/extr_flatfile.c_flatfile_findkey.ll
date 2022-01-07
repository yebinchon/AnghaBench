; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libflatfile/extr_flatfile.c_flatfile_findkey.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libflatfile/extr_flatfile.c_flatfile_findkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i8* }

@FLATFILE_BLOCK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flatfile_findkey(%struct.TYPE_5__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = bitcast %struct.TYPE_6__* %4 to { i64, i8* }*
  %13 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %12, i32 0, i32 0
  store i64 %1, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %12, i32 0, i32 1
  store i8* %2, i8** %14, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  %15 = load i64, i64* @FLATFILE_BLOCK_SIZE, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i8* @emalloc(i64 %16)
  store i8* %17, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @php_stream_rewind(i32 %24)
  br label %26

26:                                               ; preds = %93, %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @php_stream_eof(i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %100

33:                                               ; preds = %26
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @php_stream_gets(i32 %36, i8* %37, i32 15)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %100

41:                                               ; preds = %33
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @atoi(i8* %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @FLATFILE_BLOCK_SIZE, align 8
  %50 = add i64 %48, %49
  store i64 %50, i64* %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i8* @erealloc(i8* %51, i64 %52)
  store i8* %53, i8** %7, align 8
  br label %54

54:                                               ; preds = %47, %41
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @php_stream_read(i32 %57, i8* %58, i64 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @memcmp(i8* %65, i8* %66, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 1, i32* %9, align 4
  br label %100

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %54
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @php_stream_gets(i32 %75, i8* %76, i32 15)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %100

80:                                               ; preds = %72
  %81 = load i8*, i8** %7, align 8
  %82 = call i64 @atoi(i8* %81)
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp uge i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @FLATFILE_BLOCK_SIZE, align 8
  %89 = add i64 %87, %88
  store i64 %89, i64* %6, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i8* @erealloc(i8* %90, i64 %91)
  store i8* %92, i8** %7, align 8
  br label %93

93:                                               ; preds = %86, %80
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @php_stream_read(i32 %96, i8* %97, i64 %98)
  store i64 %99, i64* %8, align 8
  br label %26

100:                                              ; preds = %79, %70, %40, %26
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @efree(i8* %101)
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @php_stream_rewind(i32) #1

declare dso_local i32 @php_stream_eof(i32) #1

declare dso_local i32 @php_stream_gets(i32, i8*, i32) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i8* @erealloc(i8*, i64) #1

declare dso_local i64 @php_stream_read(i32, i8*, i64) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
