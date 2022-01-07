; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_wavfile.c_AVIFILE_LoadFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_wavfile.c_AVIFILE_LoadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_13__, %struct.TYPE_15__, %struct.TYPE_16__*, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@MMIO_FINDRIFF = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@formtypeWAVE = common dso_local global i64 0, align 8
@AVIERR_BADFORMAT = common dso_local global i32 0, align 4
@ckidWAVEFORMAT = common dso_local global i32 0, align 4
@MMIO_FINDCHUNK = common dso_local global i32 0, align 4
@AVIERR_FILEREAD = common dso_local global i32 0, align 4
@ckidWAVEDATA = common dso_local global i32 0, align 4
@streamtypeAUDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c": file seems to be truncated!\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@AVIERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @AVIFILE_LoadFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVIFILE_LoadFile(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load i32, i32* @FALSE, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MMIO_FINDRIFF, align 4
  %17 = call i64 @mmioDescend(i32 %15, %struct.TYPE_13__* %4, i32* null, i32 %16)
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = call i32 @AVIFILE_LoadSunFile(%struct.TYPE_14__* %21)
  store i32 %22, i32* %2, align 4
  br label %212

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @formtypeWAVE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @AVIERR_BADFORMAT, align 4
  store i32 %29, i32* %2, align 4
  br label %212

30:                                               ; preds = %23
  %31 = load i32, i32* @ckidWAVEFORMAT, align 4
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MMIO_FINDCHUNK, align 4
  %39 = call i64 @FindChunkAndKeepExtras(i32* %34, i32 %37, %struct.TYPE_13__* %5, %struct.TYPE_13__* %4, i32 %38)
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %43, i32* %2, align 4
  br label %212

44:                                               ; preds = %30
  %45 = call i32 (...) @GetProcessHeap()
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.TYPE_16__* @HeapAlloc(i32 %45, i32 0, i64 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 5
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %50, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = icmp eq %struct.TYPE_16__* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %56, i32* %2, align 4
  br label %212

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = ptrtoint %struct.TYPE_16__* %67 to i32
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @mmioRead(i32 %64, i32 %68, i64 %70)
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %57
  %76 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %76, i32* %2, align 4
  br label %212

77:                                               ; preds = %57
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @mmioAscend(i32 %80, %struct.TYPE_13__* %5, i32 0)
  %82 = load i64, i64* @S_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %85, i32* %2, align 4
  br label %212

86:                                               ; preds = %77
  %87 = load i32, i32* @ckidWAVEDATA, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  %98 = load i32, i32* @MMIO_FINDCHUNK, align 4
  %99 = call i64 @FindChunkAndKeepExtras(i32* %92, i32 %95, %struct.TYPE_13__* %97, %struct.TYPE_13__* %4, i32 %98)
  %100 = load i64, i64* @S_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %86
  %103 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %103, i32* %2, align 4
  br label %212

104:                                              ; preds = %86
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 4
  %107 = call i32 @memset(%struct.TYPE_15__* %106, i32 0, i32 24)
  %108 = load i32, i32* @streamtypeAUDIO, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 5
  store i32 %108, i32* %111, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 4
  store i32 %116, i32* %119, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 5
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  store i32 %124, i32* %130, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = sdiv i64 %134, %140
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 3
  store i32 %150, i32* %153, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 3
  %162 = call i64 @mmioAscend(i32 %159, %struct.TYPE_13__* %161, i32 0)
  %163 = load i64, i64* @S_OK, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %204

165:                                              ; preds = %104
  %166 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @SEEK_END, align 4
  %171 = call i32 @mmioSeek(i32 %169, i32 0, i32 %170)
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 %171, %175
  %177 = sext i32 %176 to i64
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  store i64 %177, i64* %180, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 5
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = sdiv i64 %184, %190
  %192 = trunc i64 %191 to i32
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 3
  store i32 %200, i32* %203, align 4
  br label %204

204:                                              ; preds = %165, %104
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @FindChunkAndKeepExtras(i32* %206, i32 %209, %struct.TYPE_13__* %5, %struct.TYPE_13__* %4, i32 0)
  %211 = load i32, i32* @AVIERR_OK, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %204, %102, %84, %75, %55, %42, %28, %20
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i64 @mmioDescend(i32, %struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @AVIFILE_LoadSunFile(%struct.TYPE_14__*) #1

declare dso_local i64 @FindChunkAndKeepExtras(i32*, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_16__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @mmioRead(i32, i32, i64) #1

declare dso_local i64 @mmioAscend(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @mmioSeek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
