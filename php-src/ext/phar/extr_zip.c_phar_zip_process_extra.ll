; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_zip.c_phar_zip_process_extra.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_zip.c_phar_zip_process_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%union.anon = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@FAILURE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@PHAR_ENT_COMPRESSION_MASK = common dso_local global i32 0, align 4
@PHAR_ENT_PERM_MASK = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32)* @phar_zip_process_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phar_zip_process_extra(i32* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.anon, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %10

10:                                               ; preds = %118, %3
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast %union.anon* %8 to %struct.TYPE_6__*
  %13 = bitcast %struct.TYPE_6__* %12 to i8*
  %14 = call i32 @php_stream_read(i32* %11, i8* %13, i32 16)
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 16, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @FAILURE, align 4
  store i32 %18, i32* %4, align 4
  br label %123

19:                                               ; preds = %10
  %20 = bitcast %union.anon* %8 to %struct.TYPE_6__*
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 110
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = bitcast %union.anon* %8 to %struct.TYPE_6__*
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 117
  br i1 %34, label %35, label %50

35:                                               ; preds = %27, %19
  %36 = load i32*, i32** %5, align 8
  %37 = bitcast %union.anon* %8 to %struct.TYPE_6__*
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PHAR_GET_16(i32 %39)
  %41 = load i32, i32* @SEEK_CUR, align 4
  %42 = call i32 @php_stream_seek(i32* %36, i32 %40, i32 %41)
  %43 = bitcast %union.anon* %8 to %struct.TYPE_6__*
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PHAR_GET_16(i32 %45)
  %47 = add nsw i32 %46, 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %118

50:                                               ; preds = %27
  %51 = load i32*, i32** %5, align 8
  %52 = bitcast %union.anon* %8 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = bitcast i32* %53 to i8*
  %55 = call i32 @php_stream_read(i32* %51, i8* %54, i32 -4)
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 4
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %7, align 4
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 -4, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i32, i32* @FAILURE, align 4
  store i32 %66, i32* %4, align 4
  br label %123

67:                                               ; preds = %50
  %68 = bitcast %union.anon* %8 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PHAR_GET_16(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = icmp ugt i64 %72, 8
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load i32*, i32** %5, align 8
  %76 = bitcast %union.anon* %8 to %struct.TYPE_5__*
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PHAR_GET_16(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = sub i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @SEEK_CUR, align 4
  %84 = call i32 @php_stream_seek(i32* %75, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %74, %67
  %86 = load i32, i32* @PHAR_ENT_COMPRESSION_MASK, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %85
  %96 = bitcast %union.anon* %8 to %struct.TYPE_5__*
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @PHAR_GET_16(i32 %98)
  %100 = load i32, i32* @PHAR_ENT_PERM_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %117

106:                                              ; preds = %85
  %107 = bitcast %union.anon* %8 to %struct.TYPE_5__*
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @PHAR_GET_16(i32 %109)
  %111 = load i32, i32* @PHAR_ENT_PERM_MASK, align 4
  %112 = and i32 %110, %111
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %106, %95
  br label %118

118:                                              ; preds = %117, %35
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %10, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @SUCCESS, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %65, %17
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @php_stream_read(i32*, i8*, i32) #1

declare dso_local i32 @php_stream_seek(i32*, i32, i32) #1

declare dso_local i32 @PHAR_GET_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
