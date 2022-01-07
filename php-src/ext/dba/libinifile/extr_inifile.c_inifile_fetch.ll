; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_fetch.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i8*, %struct.TYPE_17__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_17__ = type { i8*, i64 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32*, i32* }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @inifile_fetch(%struct.TYPE_16__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast %struct.TYPE_15__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 56, i1 false)
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %54

15:                                               ; preds = %3
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %54

22:                                               ; preds = %15
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %22
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @inifile_key_cmp(%struct.TYPE_17__* %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = call i32 @php_stream_seek(i32 %39, i8* %43, i32 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @estrdup(i8* %50)
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %62

54:                                               ; preds = %29, %22, %15, %3
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @php_stream_rewind(i32 %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = call i32 @inifile_line_free(%struct.TYPE_15__* %60)
  br label %62

62:                                               ; preds = %54, %36
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %67

67:                                               ; preds = %122, %66
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = call i64 @inifile_read(%struct.TYPE_16__* %68, %struct.TYPE_15__* %8)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %123

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @inifile_key_cmp(%struct.TYPE_17__* %72, i32* %73)
  store i32 %74, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %112, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %109, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  br label %89

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i8* [ %87, %84 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %88 ]
  %91 = call i8* @estrdup(i8* %90)
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i8* %91, i8** %92, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = call i32 @inifile_line_free(%struct.TYPE_15__* %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = bitcast %struct.TYPE_15__* %97 to i8*
  %99 = bitcast %struct.TYPE_15__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 56, i1 false)
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @php_stream_tell(i32 %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = bitcast %struct.TYPE_14__* %4 to i8*
  %108 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 8, i1 false)
  br label %135

109:                                              ; preds = %76
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %7, align 4
  br label %122

112:                                              ; preds = %71
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 1, i32* %11, align 4
  br label %121

116:                                              ; preds = %112
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %123

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %115
  br label %122

122:                                              ; preds = %121, %109
  br label %67

123:                                              ; preds = %119, %67
  %124 = call i32 @inifile_line_free(%struct.TYPE_15__* %8)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @php_stream_tell(i32 %127)
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  store i8* %128, i8** %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %133 = bitcast %struct.TYPE_14__* %4 to i8*
  %134 = bitcast %struct.TYPE_14__* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 8, i1 false)
  br label %135

135:                                              ; preds = %123, %89
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  ret i8* %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @inifile_key_cmp(%struct.TYPE_17__*, i32*) #2

declare dso_local i32 @php_stream_seek(i32, i8*, i32) #2

declare dso_local i8* @estrdup(i8*) #2

declare dso_local i32 @php_stream_rewind(i32) #2

declare dso_local i32 @inifile_line_free(%struct.TYPE_15__*) #2

declare dso_local i64 @inifile_read(%struct.TYPE_16__*, %struct.TYPE_15__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @php_stream_tell(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
