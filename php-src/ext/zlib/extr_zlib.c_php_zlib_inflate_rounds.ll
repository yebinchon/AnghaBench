; ModuleID = '/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib.c_php_zlib_inflate_rounds.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib.c_php_zlib_inflate_rounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32* }
%struct.TYPE_6__ = type { i64, i64, i8*, i8*, i64, i32, i32, i32, i32*, i32* }

@Z_MEM_ERROR = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i8**, i64*)* @php_zlib_inflate_rounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_zlib_inflate_rounds(%struct.TYPE_5__* %0, i64 %1, i8** %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 72, i1 false)
  %13 = load i8**, i8*** %7, align 8
  store i8* null, i8** %13, align 8
  %14 = load i64*, i64** %8, align 8
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  br label %29

25:                                               ; preds = %17, %4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i64 [ %24, %23 ], [ %28, %25 ]
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %111, %29
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ule i64 %36, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %35, %32
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @erealloc_recoverable(i8* %42, i64 %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = icmp ne i8* %45, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %40, %35
  %49 = load i32, i32* @Z_MEM_ERROR, align 4
  store i32 %49, i32* %9, align 4
  br label %93

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %55, %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  store i64 %58, i64* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = load i32, i32* @Z_NO_FLUSH, align 4
  %72 = call i32 @inflate(%struct.TYPE_5__* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %74, %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %78
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  store i64 %84, i64* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = lshr i64 %87, 3
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, %89
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %50, %48
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* @Z_BUF_ERROR, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %107, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @Z_OK, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102, %94
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = icmp slt i32 %109, 100
  br label %111

111:                                              ; preds = %107, %102, %98
  %112 = phi i1 [ false, %102 ], [ false, %98 ], [ %110, %107 ]
  br i1 %112, label %32, label %113

113:                                              ; preds = %111
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @Z_STREAM_END, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 1
  %123 = trunc i64 %122 to i32
  %124 = call i8* @erealloc(i8* %119, i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i8* %124, i8** %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8 0, i8* %130, align 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = load i8**, i8*** %7, align 8
  store i8* %132, i8** %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %8, align 8
  store i64 %135, i64* %136, align 8
  br label %155

137:                                              ; preds = %113
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @efree(i8* %143)
  br label %145

145:                                              ; preds = %141, %137
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @Z_OK, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @Z_DATA_ERROR, align 4
  br label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %9, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %153, %117
  %156 = load i32, i32* %9, align 4
  ret i32 %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @erealloc_recoverable(i8*, i64) #2

declare dso_local i32 @inflate(%struct.TYPE_5__*, i32) #2

declare dso_local i8* @erealloc(i8*, i32) #2

declare dso_local i32 @efree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
