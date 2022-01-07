; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libflatfile/extr_flatfile.c_flatfile_nextkey.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libflatfile/extr_flatfile.c_flatfile_nextkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i64 }

@FLATFILE_BLOCK_SIZE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8*, i64 } @flatfile_nextkey(%struct.TYPE_5__* %0) #0 {
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
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SEEK_SET, align 4
  %17 = call i32 @php_stream_seek(i32 %12, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %95, %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @php_stream_eof(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %96

25:                                               ; preds = %18
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @php_stream_gets(i32 %28, i8* %29, i32 15)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %96

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @atoi(i8* %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @FLATFILE_BLOCK_SIZE, align 8
  %42 = add i64 %40, %41
  store i64 %42, i64* %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i8* @erealloc(i8* %43, i64 %44)
  store i8* %45, i8** %6, align 8
  br label %46

46:                                               ; preds = %39, %33
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @php_stream_read(i32 %49, i8* %50, i64 %51)
  store i64 %52, i64* %4, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @php_stream_gets(i32 %55, i8* %56, i32 15)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  br label %96

60:                                               ; preds = %46
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @atoi(i8* %61)
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @FLATFILE_BLOCK_SIZE, align 8
  %69 = add i64 %67, %68
  store i64 %69, i64* %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i8* @erealloc(i8* %70, i64 %71)
  store i8* %72, i8** %6, align 8
  br label %73

73:                                               ; preds = %66, %60
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call i64 @php_stream_read(i32 %76, i8* %77, i64 %78)
  store i64 %79, i64* %4, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %73
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @php_stream_tell(i32 %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8* %91, i8** %92, align 8
  %93 = load i64, i64* %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i64 %93, i64* %94, align 8
  br label %101

95:                                               ; preds = %73
  br label %18

96:                                               ; preds = %59, %32, %18
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @efree(i8* %97)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8* null, i8** %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %96, %84
  %102 = bitcast %struct.TYPE_6__* %2 to { i8*, i64 }*
  %103 = load { i8*, i64 }, { i8*, i64 }* %102, align 8
  ret { i8*, i64 } %103
}

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @php_stream_seek(i32, i32, i32) #1

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
