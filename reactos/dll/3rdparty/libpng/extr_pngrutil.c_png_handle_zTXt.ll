; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_zTXt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_zTXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__, i64* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_14__ = type { i64, i32*, i32*, i64, i8*, i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"in png_handle_zTXt\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@PNG_AFTER_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bad keyword\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@PNG_COMPRESSION_TYPE_BASE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"unknown compression type\00", align 1
@PNG_SIZE_MAX = common dso_local global i64 0, align 8
@Z_STREAM_END = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"Read failure in png_handle_zTXt\00", align 1
@PNG_TEXT_COMPRESSION_zTXt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"insufficient memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_zTXt(%struct.TYPE_15__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i8* null, i8** %7, align 8
  %12 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = call i32 @png_chunk_error(%struct.TYPE_15__* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* @PNG_AFTER_IDAT, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64* @png_read_buffer(%struct.TYPE_15__* %36, i64 %37, i32 2)
  store i64* %38, i64** %8, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = icmp eq i64* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @png_crc_finish(%struct.TYPE_15__* %42, i64 %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = call i32 @png_chunk_benign_error(%struct.TYPE_15__* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %158

47:                                               ; preds = %35
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @png_crc_read(%struct.TYPE_15__* %48, i64* %49, i64 %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = call i64 @png_crc_finish(%struct.TYPE_15__* %52, i64 0)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %158

56:                                               ; preds = %47
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %70, %56
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %61, %57
  %68 = phi i1 [ false, %57 ], [ %66, %61 ]
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %57

73:                                               ; preds = %67
  %74 = load i64, i64* %9, align 8
  %75 = icmp ugt i64 %74, 79
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %9, align 8
  %78 = icmp ult i64 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %73
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %151

80:                                               ; preds = %76
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, 3
  %83 = load i64, i64* %6, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %150

86:                                               ; preds = %80
  %87 = load i64*, i64** %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PNG_COMPRESSION_TYPE_BASE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %149

95:                                               ; preds = %86
  %96 = load i64, i64* @PNG_SIZE_MAX, align 8
  store i64 %96, i64* %10, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %9, align 8
  %100 = add i64 %99, 2
  %101 = call i64 @png_decompress_chunk(%struct.TYPE_15__* %97, i64 %98, i64 %100, i64* %10, i32 1)
  %102 = load i64, i64* @Z_STREAM_END, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %143

104:                                              ; preds = %95
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 3
  %107 = load i64*, i64** %106, align 8
  %108 = icmp eq i64* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %142

110:                                              ; preds = %104
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 3
  %113 = load i64*, i64** %112, align 8
  store i64* %113, i64** %8, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, 2
  %118 = add i64 %115, %117
  %119 = getelementptr inbounds i64, i64* %114, i64 %118
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* @PNG_TEXT_COMPRESSION_zTXt, align 4
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 6
  store i32 %120, i32* %121, align 8
  %122 = load i64*, i64** %8, align 8
  %123 = bitcast i64* %122 to i8*
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 5
  store i8* %123, i8** %124, align 8
  %125 = load i64*, i64** %8, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = getelementptr inbounds i64, i64* %127, i64 2
  %129 = bitcast i64* %128 to i8*
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  store i8* %129, i8** %130, align 8
  %131 = load i64, i64* %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i64 %131, i64* %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  store i64 0, i64* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i32* null, i32** %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i32* null, i32** %135, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i64 @png_set_text_2(%struct.TYPE_15__* %136, i32 %137, %struct.TYPE_14__* %11, i32 1)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %110
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %141

141:                                              ; preds = %140, %110
  br label %142

142:                                              ; preds = %141, %109
  br label %148

143:                                              ; preds = %95
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %7, align 8
  br label %148

148:                                              ; preds = %143, %142
  br label %149

149:                                              ; preds = %148, %94
  br label %150

150:                                              ; preds = %149, %85
  br label %151

151:                                              ; preds = %150, %79
  %152 = load i8*, i8** %7, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = call i32 @png_chunk_benign_error(%struct.TYPE_15__* %155, i8* %156)
  br label %158

158:                                              ; preds = %41, %55, %154, %151
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_chunk_error(%struct.TYPE_15__*, i8*) #1

declare dso_local i64* @png_read_buffer(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_15__*, i64*, i64) #1

declare dso_local i64 @png_decompress_chunk(%struct.TYPE_15__*, i64, i64, i64*, i32) #1

declare dso_local i64 @png_set_text_2(%struct.TYPE_15__*, i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
