; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_convert_charset.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_convert_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_11__ = type { i64, i32 }

@.str = private unnamed_addr constant [57 x i8] c"File too big (or error reading) - skip charset probing.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Using subtitle charset: %s\0A\00", align 1
@MP_ICONV_VERBOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demuxer*)* @convert_charset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_charset(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  %8 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %9 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %8, i32 0, i32 2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @mp_charset_is_utf8(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %1
  br label %132

23:                                               ; preds = %18
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call { i64, i32 } @stream_read_complete(i32 %26, i32* null, i32 134217728)
  %28 = bitcast %struct.TYPE_11__* %5 to { i64, i32 }*
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %30 = extractvalue { i64, i32 } %27, 0
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %32 = extractvalue { i64, i32 } %27, 1
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %23
  %37 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %38 = call i32 @MP_WARN(%struct.demuxer* %37, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %132

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %6, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %45 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = bitcast %struct.TYPE_11__* %5 to { i64, i32 }*
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %48, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @mp_charset_guess(%struct.TYPE_10__* %43, i32 %46, i64 %50, i32 %52, i8* %47, i32 0)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %4, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %39
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 @mp_charset_is_utf8(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @MP_INFO(%struct.demuxer* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %61, %57, %39
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @mp_charset_is_utf16(i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %112, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = call i64 @mp_charset_is_utf8(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %112, label %73

73:                                               ; preds = %69
  %74 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %75 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* @MP_ICONV_VERBOSE, align 4
  %79 = bitcast %struct.TYPE_11__* %5 to { i64, i32 }*
  %80 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %79, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call { i64, i32 } @mp_iconv_to_utf8(i32 %76, i64 %81, i32 %83, i8* %77, i32 %78)
  %85 = bitcast %struct.TYPE_11__* %7 to { i64, i32 }*
  %86 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %85, i32 0, i32 0
  %87 = extractvalue { i64, i32 } %84, 0
  store i64 %87, i64* %86, align 8
  %88 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %85, i32 0, i32 1
  %89 = extractvalue { i64, i32 } %84, 1
  store i32 %89, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %73
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %95, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @talloc_steal(i8* %100, i64 %102)
  br label %104

104:                                              ; preds = %99, %93, %73
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = bitcast %struct.TYPE_11__* %5 to i8*
  %110 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 16, i1 false)
  br label %111

111:                                              ; preds = %108, %104
  br label %112

112:                                              ; preds = %111, %69, %65
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %118 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @stream_memory_open(i32 %119, i64 %121, i32 %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  br label %129

129:                                              ; preds = %116, %112
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @talloc_free(i8* %130)
  br label %132

132:                                              ; preds = %129, %36, %22
  ret void
}

declare dso_local i64 @mp_charset_is_utf8(i8*) #1

declare dso_local { i64, i32 } @stream_read_complete(i32, i32*, i32) #1

declare dso_local i32 @MP_WARN(%struct.demuxer*, i8*) #1

declare dso_local i64 @mp_charset_guess(%struct.TYPE_10__*, i32, i64, i32, i8*, i32) #1

declare dso_local i32 @MP_INFO(%struct.demuxer*, i8*, i8*) #1

declare dso_local i32 @mp_charset_is_utf16(i8*) #1

declare dso_local { i64, i32 } @mp_iconv_to_utf8(i32, i64, i32, i8*, i32) #1

declare dso_local i32 @talloc_steal(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @stream_memory_open(i32, i64, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
