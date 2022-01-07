; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_copy_to.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_copy_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not create temporary stream\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Could not copy group [%zu - %zu] to temporary stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i64, %struct.TYPE_5__**)* @inifile_copy_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inifile_copy_to(%struct.TYPE_5__* %0, i64 %1, i64 %2, %struct.TYPE_5__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  %16 = load i32, i32* @SUCCESS, align 4
  store i32 %16, i32* %5, align 4
  br label %57

17:                                               ; preds = %4
  %18 = call i32* @php_stream_temp_create(i32 0, i32 65536)
  store i32* %18, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* @E_WARNING, align 4
  %22 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %23, align 8
  %24 = load i32, i32* @FAILURE, align 4
  store i32 %24, i32* %5, align 4
  br label %57

25:                                               ; preds = %17
  %26 = load i32*, i32** %10, align 8
  %27 = call %struct.TYPE_5__* @inifile_alloc(i32* %26, i32 1, i32 0)
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %28, align 8
  %29 = icmp eq %struct.TYPE_5__* %27, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @FAILURE, align 4
  store i32 %31, i32* %5, align 4
  br label %57

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @SEEK_SET, align 4
  %38 = call i32 @php_stream_seek(i32 %35, i64 %36, i32 %37)
  %39 = load i32, i32* @SUCCESS, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 %44, %45
  %47 = call i32 @php_stream_copy_to_stream_ex(i32 %42, i32* %43, i64 %46, i32* null)
  %48 = icmp ne i32 %39, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %32
  %50 = load i32, i32* @E_WARNING, align 4
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load i32, i32* @FAILURE, align 4
  store i32 %54, i32* %5, align 4
  br label %57

55:                                               ; preds = %32
  %56 = load i32, i32* @SUCCESS, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %49, %30, %20, %14
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32* @php_stream_temp_create(i32, i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @inifile_alloc(i32*, i32, i32) #1

declare dso_local i32 @php_stream_seek(i32, i64, i32) #1

declare dso_local i32 @php_stream_copy_to_stream_ex(i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
