; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_find_group.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_find_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i64 }

@FAILURE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i64*)* @inifile_find_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inifile_find_group(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i32, i32* @FAILURE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @php_stream_flush(i32 %13)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SEEK_SET, align 4
  %19 = call i32 @php_stream_seek(i32 %17, i32 0, i32 %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = call i32 @inifile_line_free(%struct.TYPE_14__* %21)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = call i32 @inifile_line_free(%struct.TYPE_14__* %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %3
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @strlen(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  %37 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 32, i1 false)
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %49, %36
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = call i64 @inifile_read(%struct.TYPE_16__* %39, %struct.TYPE_14__* %9)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = call i32 @inifile_key_cmp(i32* %43, %struct.TYPE_15__* %44)
  store i32 %45, i32* %8, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @SUCCESS, align 4
  store i32 %48, i32* %7, align 4
  br label %55

49:                                               ; preds = %42
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @php_stream_tell(i32 %52)
  %54 = load i64*, i64** %6, align 8
  store i64 %53, i64* %54, align 8
  br label %38

55:                                               ; preds = %47, %38
  %56 = call i32 @inifile_line_free(%struct.TYPE_14__* %9)
  br label %60

57:                                               ; preds = %30, %3
  %58 = load i64*, i64** %6, align 8
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @SUCCESS, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %55
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @FAILURE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @php_stream_tell(i32 %67)
  %69 = load i64*, i64** %6, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %64, %60
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @php_stream_flush(i32) #1

declare dso_local i32 @php_stream_seek(i32, i32, i32) #1

declare dso_local i32 @inifile_line_free(%struct.TYPE_14__*) #1

declare dso_local i64 @strlen(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @inifile_read(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @inifile_key_cmp(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @php_stream_tell(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
