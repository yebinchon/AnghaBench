; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_filter.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32*, i32* }

@SUCCESS = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Could not copy [%zu - %zu] from temporary stream\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, i32*, i32*)* @inifile_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inifile_filter(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i32, i32* @SUCCESS, align 4
  store i32 %14, i32* %12, align 4
  %15 = bitcast %struct.TYPE_12__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SEEK_SET, align 4
  %20 = call i32 @php_stream_seek(i32 %18, i64 0, i32 %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SEEK_END, align 4
  %25 = call i32 @php_stream_seek(i32 %23, i64 0, i32 %24)
  br label %26

26:                                               ; preds = %88, %4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = call i64 @inifile_read(%struct.TYPE_13__* %27, %struct.TYPE_12__* %13)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %89

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @inifile_key_cmp(i32* %31, i32* %32)
  switch i32 %33, label %88 [
    i32 0, label %34
    i32 1, label %81
    i32 2, label %86
  ]

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32*, i32** %8, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @php_stream_tell(i32 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %39
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @SEEK_SET, align 4
  %53 = call i32 @php_stream_seek(i32 %50, i64 %51, i32 %52)
  %54 = load i32, i32* @SUCCESS, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub i64 %61, %62
  %64 = call i32 @php_stream_copy_to_stream_ex(i32 %57, i32 %60, i64 %63, i32* null)
  %65 = icmp ne i32 %54, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %47
  %67 = load i32, i32* @E_WARNING, align 4
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @php_error_docref(i32* null, i32 %67, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %69)
  %71 = load i32, i32* @FAILURE, align 4
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %66, %47
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %11, align 8
  %77 = load i32, i32* @SEEK_SET, align 4
  %78 = call i32 @php_stream_seek(i32 %75, i64 %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %39
  %80 = load i64, i64* %11, align 8
  store i64 %80, i64* %9, align 8
  store i64 %80, i64* %10, align 8
  br label %88

81:                                               ; preds = %30
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @php_stream_tell(i32 %84)
  store i64 %85, i64* %10, align 8
  br label %88

86:                                               ; preds = %30
  %87 = call i32 @assert(i32 0)
  br label %88

88:                                               ; preds = %30, %86, %81, %79
  br label %26

89:                                               ; preds = %26
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %89
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %9, align 8
  %98 = load i32, i32* @SEEK_SET, align 4
  %99 = call i32 @php_stream_seek(i32 %96, i64 %97, i32 %98)
  %100 = load i32, i32* @SUCCESS, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %9, align 8
  %109 = sub i64 %107, %108
  %110 = call i32 @php_stream_copy_to_stream_ex(i32 %103, i32 %106, i64 %109, i32* null)
  %111 = icmp ne i32 %100, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %93
  %113 = load i32, i32* @E_WARNING, align 4
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @php_error_docref(i32* null, i32 %113, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %114, i64 %115)
  %117 = load i32, i32* @FAILURE, align 4
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %112, %93
  br label %119

119:                                              ; preds = %118, %89
  %120 = call i32 @inifile_line_free(%struct.TYPE_12__* %13)
  %121 = load i32, i32* %12, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @php_stream_seek(i32, i64, i32) #2

declare dso_local i64 @inifile_read(%struct.TYPE_13__*, %struct.TYPE_12__*) #2

declare dso_local i32 @inifile_key_cmp(i32*, i32*) #2

declare dso_local i64 @php_stream_tell(i32) #2

declare dso_local i32 @php_stream_copy_to_stream_ex(i32, i32, i64, i32*) #2

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i64, i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @inifile_line_free(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
