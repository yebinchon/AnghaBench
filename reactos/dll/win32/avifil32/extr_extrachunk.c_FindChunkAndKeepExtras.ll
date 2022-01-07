; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_extrachunk.c_FindChunkAndKeepExtras.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_extrachunk.c_FindChunkAndKeepExtras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"({%p,%u},%p,%p,%p,0x%X)\0A\00", align 1
@MMIO_FINDCHUNK = common dso_local global i32 0, align 4
@MMIO_FINDLIST = common dso_local global i32 0, align 4
@FOURCC_LIST = common dso_local global i64 0, align 8
@MMIO_FINDRIFF = common dso_local global i32 0, align 4
@FOURCC_RIFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c": find ckid=0x%08X fccType=0x%08X\0A\00", align 1
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@MMIOERR_CHUNKNOTFOUND = common dso_local global i64 0, align 8
@AVIERR_OK = common dso_local global i32 0, align 4
@AVIERR_FILEREAD = common dso_local global i32 0, align 4
@ckidAVIPADDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindChunkAndKeepExtras(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %35, i32* %36, %struct.TYPE_11__* %37, %struct.TYPE_11__* %38, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @MMIO_FINDCHUNK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %5
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %72

49:                                               ; preds = %5
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @MMIO_FINDLIST, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i64, i64* @FOURCC_LIST, align 8
  store i64 %55, i64* %12, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %13, align 8
  br label %71

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @MMIO_FINDRIFF, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i64, i64* @FOURCC_RIFF, align 8
  store i64 %65, i64* %12, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %13, align 8
  br label %70

69:                                               ; preds = %59
  store i64 -1, i64* %13, align 8
  store i64 -1, i64* %12, align 8
  br label %70

70:                                               ; preds = %69, %64
  br label %71

71:                                               ; preds = %70, %54
  br label %72

72:                                               ; preds = %71, %45
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %145, %72
  %77 = load i32*, i32** %8, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %80 = call i64 @mmioDescend(i32* %77, %struct.TYPE_11__* %78, %struct.TYPE_11__* %79, i32 0)
  store i64 %80, i64* %14, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %76
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* @MMIOERR_CHUNKNOTFOUND, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @AVIERR_OK, align 4
  store i32 %92, i32* %6, align 4
  br label %146

93:                                               ; preds = %87, %84
  %94 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %94, i32* %6, align 4
  br label %146

95:                                               ; preds = %76
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %95
  %102 = load i64, i64* %13, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %13, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104, %101
  %111 = load i32, i32* @AVIERR_OK, align 4
  store i32 %111, i32* %6, align 4
  br label %146

112:                                              ; preds = %104, %95
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ckidAVIPADDING, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @mmioFOURCC(i8 signext 112, i8 signext 97, i8 signext 100, i8 signext 100)
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %118, %112
  %125 = load i32*, i32** %8, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %127 = call i64 @mmioAscend(i32* %125, %struct.TYPE_11__* %126, i32 0)
  store i64 %127, i64* %14, align 8
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %132, i32* %6, align 4
  br label %146

133:                                              ; preds = %124
  br label %145

134:                                              ; preds = %118
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %138 = call i32 @ReadChunkIntoExtra(%struct.TYPE_12__* %135, i32* %136, %struct.TYPE_11__* %137)
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i64 @FAILED(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %134
  %143 = load i32, i32* %15, align 4
  store i32 %143, i32* %6, align 4
  br label %146

144:                                              ; preds = %134
  br label %145

145:                                              ; preds = %144, %133
  br label %76

146:                                              ; preds = %142, %131, %110, %93, %91
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE(i8*, i64, i64, ...) #1

declare dso_local i64 @mmioDescend(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @mmioFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @mmioAscend(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ReadChunkIntoExtra(%struct.TYPE_12__*, i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
