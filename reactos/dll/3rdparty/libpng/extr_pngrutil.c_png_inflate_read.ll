; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_inflate_read.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_inflate_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32, i8*, i8* }

@ZLIB_IO_MAX = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"zstream unclaimed\00", align 1
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64, i64*, i8*, i64*, i32)* @png_inflate_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_inflate_read(%struct.TYPE_8__* %0, i8* %1, i64 %2, i64* %3, i8* %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %144

25:                                               ; preds = %7
  %26 = load i8*, i8** %13, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  store i8* %26, i8** %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %127, %25
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = load i64, i64* %11, align 8
  %41 = load i64*, i64** %12, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64*, i64** %12, align 8
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i64, i64* %11, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, %48
  store i64 %51, i64* %49, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @png_crc_read(%struct.TYPE_8__* %55, i8* %56, i64 %57)
  br label %59

59:                                               ; preds = %54, %47
  %60 = load i8*, i8** %10, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  store i8* %60, i8** %63, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %59, %33
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  %75 = load i64, i64* @ZLIB_IO_MAX, align 8
  store i64 %75, i64* %17, align 8
  %76 = load i64, i64* %17, align 8
  %77 = load i64*, i64** %14, align 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i64*, i64** %14, align 8
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %17, align 8
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i64, i64* %17, align 8
  %85 = load i64*, i64** %14, align 8
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, %84
  store i64 %87, i64* %85, align 8
  %88 = load i64, i64* %17, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i64 %88, i64* %91, align 8
  br label %92

92:                                               ; preds = %83, %68
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %94 = load i64*, i64** %12, align 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @Z_NO_FLUSH, align 4
  br label %108

99:                                               ; preds = %92
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @Z_FINISH, align 4
  br label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @Z_SYNC_FLUSH, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  br label %108

108:                                              ; preds = %106, %97
  %109 = phi i32 [ %98, %97 ], [ %107, %106 ]
  %110 = call i32 @PNG_INFLATE(%struct.TYPE_8__* %93, i32 %109)
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @Z_OK, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = load i64*, i64** %14, align 8
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %115
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  br label %125

125:                                              ; preds = %119, %115
  %126 = phi i1 [ true, %115 ], [ %124, %119 ]
  br label %127

127:                                              ; preds = %125, %111
  %128 = phi i1 [ false, %111 ], [ %126, %125 ]
  br i1 %128, label %33, label %129

129:                                              ; preds = %127
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %14, align 8
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, %133
  store i64 %136, i64* %134, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %141 = load i32, i32* %16, align 4
  %142 = call i32 @png_zstream_error(%struct.TYPE_8__* %140, i32 %141)
  %143 = load i32, i32* %16, align 4
  store i32 %143, i32* %8, align 4
  br label %150

144:                                              ; preds = %7
  %145 = call i32 @PNGZ_MSG_CAST(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  store i32 %145, i32* %148, align 8
  %149 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %144, %129
  %151 = load i32, i32* %8, align 4
  ret i32 %151
}

declare dso_local i32 @png_crc_read(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @PNG_INFLATE(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @png_zstream_error(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @PNGZ_MSG_CAST(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
