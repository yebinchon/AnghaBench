; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_tar.c_phar_tar_process_metadata.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_tar.c_phar_tar_process_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c".phar/.metadata.bin\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @phar_tar_process_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phar_tar_process_metadata(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @php_stream_tell(i32* %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @safe_emalloc(i32 1, i64 %14, i32 1)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @php_stream_read(i32* %17, i8* %18, i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @efree(i8* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i32 @php_stream_seek(i32* %31, i64 %32, i32 %33)
  %35 = load i32, i32* @FAILURE, align 4
  store i32 %35, i32* %3, align 4
  br label %120

36:                                               ; preds = %2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @phar_parse_metadata(i8** %6, i32* %38, i64 %41)
  %43 = load i32, i32* @FAILURE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @efree(i8* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* @SEEK_SET, align 4
  %51 = call i32 @php_stream_seek(i32* %48, i64 %49, i32 %50)
  %52 = load i32, i32* @FAILURE, align 4
  store i32 %52, i32* %3, align 4
  br label %120

53:                                               ; preds = %36
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = icmp eq i64 %57, 19
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memcmp(i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 19)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = call i32 @ZVAL_UNDEF(i32* %74)
  br label %112

76:                                               ; preds = %59, %53
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = icmp uge i64 %80, 31
  br i1 %81, label %82, label %111

82:                                               ; preds = %76
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, 17
  %92 = sub i64 %91, 1
  %93 = trunc i64 %92 to i32
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = sub i64 %97, 30
  %99 = trunc i64 %98 to i32
  %100 = call %struct.TYPE_6__* @zend_hash_str_find_ptr(i32* %86, i32 %93, i32 %99)
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %9, align 8
  %101 = icmp ne %struct.TYPE_6__* null, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %82
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = call i32 @ZVAL_UNDEF(i32* %109)
  br label %111

111:                                              ; preds = %102, %82, %76
  br label %112

112:                                              ; preds = %111, %65
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @efree(i8* %113)
  %115 = load i32*, i32** %5, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i32, i32* @SEEK_SET, align 4
  %118 = call i32 @php_stream_seek(i32* %115, i64 %116, i32 %117)
  %119 = load i32, i32* @SUCCESS, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %112, %45, %28
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @php_stream_tell(i32*) #1

declare dso_local i64 @safe_emalloc(i32, i64, i32) #1

declare dso_local i64 @php_stream_read(i32*, i8*, i64) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @php_stream_seek(i32*, i64, i32) #1

declare dso_local i32 @phar_parse_metadata(i8**, i32*, i64) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local %struct.TYPE_6__* @zend_hash_str_find_ptr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
