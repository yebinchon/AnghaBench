; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libflatfile/extr_flatfile.c_flatfile_firstkey.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libflatfile/extr_flatfile.c_flatfile_firstkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i64 }

@FLATFILE_BLOCK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8*, i64 } @flatfile_firstkey(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load i64, i64* @FLATFILE_BLOCK_SIZE, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i8* @emalloc(i64 %8)
  store i8* %9, i8** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @php_stream_rewind(i32 %12)
  br label %14

14:                                               ; preds = %85, %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @php_stream_eof(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %92

21:                                               ; preds = %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @php_stream_gets(i32 %24, i8* %25, i32 15)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %92

29:                                               ; preds = %21
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @atoi(i8* %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @FLATFILE_BLOCK_SIZE, align 8
  %38 = add i64 %36, %37
  store i64 %38, i64* %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i8* @erealloc(i8* %39, i64 %40)
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @php_stream_read(i32 %45, i8* %46, i64 %47)
  store i64 %48, i64* %4, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %42
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @php_stream_tell(i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i64 %62, i64* %63, align 8
  br label %97

64:                                               ; preds = %42
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @php_stream_gets(i32 %67, i8* %68, i32 15)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %92

72:                                               ; preds = %64
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @atoi(i8* %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @FLATFILE_BLOCK_SIZE, align 8
  %81 = add i64 %79, %80
  store i64 %81, i64* %5, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i8* @erealloc(i8* %82, i64 %83)
  store i8* %84, i8** %6, align 8
  br label %85

85:                                               ; preds = %78, %72
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = load i64, i64* %4, align 8
  %91 = call i64 @php_stream_read(i32 %88, i8* %89, i64 %90)
  store i64 %91, i64* %4, align 8
  br label %14

92:                                               ; preds = %71, %28, %14
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @efree(i8* %93)
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8* null, i8** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %92, %53
  %98 = bitcast %struct.TYPE_6__* %2 to { i8*, i64 }*
  %99 = load { i8*, i64 }, { i8*, i64 }* %98, align 8
  ret { i8*, i64 } %99
}

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @php_stream_rewind(i32) #1

declare dso_local i32 @php_stream_eof(i32) #1

declare dso_local i32 @php_stream_gets(i32, i8*, i32) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i8* @erealloc(i8*, i64) #1

declare dso_local i64 @php_stream_read(i32, i8*, i64) #1

declare dso_local i32 @php_stream_tell(i32) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
