; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_wavfile.c_AVIFILE_LoadSunFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_wavfile.c_AVIFILE_LoadSunFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@AVIERR_FILEREAD = common dso_local global i32 0, align 4
@AVIERR_BADFORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unsupported Sun audio format %d\0A\00", align 1
@AVIERR_UNSUPPORTED = common dso_local global i32 0, align 4
@AVIERR_MEMORY = common dso_local global i32 0, align 4
@WAVE_FORMAT_MULAW = common dso_local global i8* null, align 8
@WAVE_FORMAT_PCM = common dso_local global i8* null, align 8
@WAVE_FORMAT_ALAW = common dso_local global i8* null, align 8
@WAVE_FORMAT_G721_ADPCM = common dso_local global i8* null, align 8
@WAVE_FORMAT_G723_ADPCM = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@streamtypeAUDIO = common dso_local global i32 0, align 4
@AVIERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @AVIFILE_LoadSunFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVIFILE_LoadSunFile(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SEEK_SET, align 4
  %9 = call i32 @mmioSeek(i32 %7, i32 0, i32 %8)
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = ptrtoint %struct.TYPE_13__* %4 to i32
  %14 = call i32 @mmioRead(i32 %12, i32 %13, i32 24)
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 24
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %18, i32* %2, align 4
  br label %412

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 6583086
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @LE2H_DWORD(i32 %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @LE2H_DWORD(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @LE2H_DWORD(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @LE2H_DWORD(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @LE2H_DWORD(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  br label %89

52:                                               ; preds = %19
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mmioFOURCC(i8 signext 46, i8 signext 115, i8 signext 110, i8 signext 100)
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @BE2H_DWORD(i32 %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @BE2H_DWORD(i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @BE2H_DWORD(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @BE2H_DWORD(i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @BE2H_DWORD(i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  store i32 %84, i32* %85, align 4
  br label %88

86:                                               ; preds = %52
  %87 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %87, i32* %2, align 4
  br label %412

88:                                               ; preds = %57
  br label %89

89:                                               ; preds = %88, %23
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @AVIERR_BADFORMAT, align 4
  store i32 %94, i32* %2, align 4
  br label %412

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %109 [
    i32 137, label %98
    i32 135, label %101
    i32 136, label %104
    i32 134, label %104
  ]

98:                                               ; preds = %95
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  store i32 4, i32* %100, align 8
  br label %112

101:                                              ; preds = %95
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  store i32 4, i32* %103, align 8
  br label %112

104:                                              ; preds = %95, %95
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @AVIERR_UNSUPPORTED, align 4
  store i32 %108, i32* %2, align 4
  br label %412

109:                                              ; preds = %95
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i32 4, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %101, %98
  %113 = call i32 (...) @GetProcessHeap()
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call %struct.TYPE_17__* @HeapAlloc(i32 %113, i32 0, i32 %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  store %struct.TYPE_17__* %117, %struct.TYPE_17__** %119, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = icmp eq %struct.TYPE_17__* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %112
  %125 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %125, i32* %2, align 4
  br label %412

126:                                              ; preds = %112
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  store i32 %128, i32* %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  store i32 %134, i32* %138, align 4
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %252 [
    i32 128, label %141
    i32 129, label %151
    i32 132, label %161
    i32 131, label %171
    i32 130, label %181
    i32 133, label %191
    i32 137, label %201
    i32 135, label %224
  ]

141:                                              ; preds = %126
  %142 = load i8*, i8** @WAVE_FORMAT_MULAW, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 6
  store i8* %142, i8** %146, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  store i32 8, i32* %150, align 8
  br label %257

151:                                              ; preds = %126
  %152 = load i8*, i8** @WAVE_FORMAT_PCM, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 6
  store i8* %152, i8** %156, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 2
  store i32 8, i32* %160, align 8
  br label %257

161:                                              ; preds = %126
  %162 = load i8*, i8** @WAVE_FORMAT_PCM, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 6
  store i8* %162, i8** %166, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  store i32 16, i32* %170, align 8
  br label %257

171:                                              ; preds = %126
  %172 = load i8*, i8** @WAVE_FORMAT_PCM, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 6
  store i8* %172, i8** %176, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 2
  store i32 24, i32* %180, align 8
  br label %257

181:                                              ; preds = %126
  %182 = load i8*, i8** @WAVE_FORMAT_PCM, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 6
  store i8* %182, i8** %186, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 2
  store i32 32, i32* %190, align 8
  br label %257

191:                                              ; preds = %126
  %192 = load i8*, i8** @WAVE_FORMAT_ALAW, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 6
  store i8* %192, i8** %196, align 8
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 2
  store i32 8, i32* %200, align 8
  br label %257

201:                                              ; preds = %126
  %202 = load i8*, i8** @WAVE_FORMAT_G721_ADPCM, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 6
  store i8* %202, i8** %206, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 2
  store i32 120, i32* %210, align 8
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 3
  store i32 1800, i32* %214, align 4
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 4
  store i32 4, i32* %218, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %220, align 8
  %222 = bitcast %struct.TYPE_17__* %221 to %struct.TYPE_15__*
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  store i32 0, i32* %223, align 4
  br label %257

224:                                              ; preds = %126
  %225 = load i8*, i8** @WAVE_FORMAT_G723_ADPCM, align 8
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 6
  store i8* %225, i8** %229, align 8
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 2
  store i32 120, i32* %233, align 8
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 3
  store i32 1800, i32* %237, align 4
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 4
  store i32 8, i32* %241, align 8
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = bitcast %struct.TYPE_17__* %244 to %struct.TYPE_14__*
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  store i32 0, i32* %246, align 4
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %248, align 8
  %250 = bitcast %struct.TYPE_17__* %249 to %struct.TYPE_14__*
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  store i32 0, i32* %251, align 4
  br label %257

252:                                              ; preds = %126
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* @AVIERR_UNSUPPORTED, align 4
  store i32 %256, i32* %2, align 4
  br label %412

257:                                              ; preds = %224, %201, %191, %181, %171, %161, %151, %141
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = mul nsw i32 %262, %267
  %269 = sdiv i32 %268, 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 3
  store i32 %269, i32* %273, align 4
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %294

280:                                              ; preds = %257
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = icmp slt i32 %285, 8
  br i1 %286, label %287, label %294

287:                                              ; preds = %280
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 4
  br label %294

294:                                              ; preds = %287, %280, %257
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = mul nsw i32 %299, %304
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 5
  store i32 %305, i32* %309, align 4
  %310 = load i32, i32* @FALSE, align 4
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 5
  store i32 %310, i32* %312, align 8
  %313 = load i32, i32* @streamtypeAUDIO, align 4
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 4
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 11
  store i32 %313, i32* %316, align 8
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 10
  store i64 0, i64* %319, align 8
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 9
  store i64 0, i64* %322, align 8
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 4
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 8
  store i64 0, i64* %325, align 8
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 4
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 7
  store i64 0, i64* %328, align 8
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 4
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 6
  store i64 0, i64* %331, align 8
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 4
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 0
  store i32 %336, i32* %339, align 8
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 1
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 4
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 1
  store i32 %344, i32* %347, align 4
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 4
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 5
  store i64 0, i64* %350, align 8
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 1
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = sdiv i32 %354, %359
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 4
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 2
  store i32 %360, i32* %363, align 8
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 4
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 4
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 3
  store i32 %367, i32* %370, align 4
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 4
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 4
  store i32 %375, i32* %378, align 8
  %379 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 3
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 0
  store i32 1, i32* %381, align 8
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 1
  store i32 1, i32* %384, align 4
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %390, i32 0, i32 3
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 2
  store i32 %389, i32* %392, align 8
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %397, i32 0, i32 1
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %402, i32 0, i32 1
  %404 = load %struct.TYPE_17__*, %struct.TYPE_17__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @MulDiv(i32 %396, i32 %401, i32 %406)
  %408 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 3
  store i32 %407, i32* %410, align 4
  %411 = load i32, i32* @AVIERR_OK, align 4
  store i32 %411, i32* %2, align 4
  br label %412

412:                                              ; preds = %294, %252, %124, %104, %93, %86, %17
  %413 = load i32, i32* %2, align 4
  ret i32 %413
}

declare dso_local i32 @mmioSeek(i32, i32, i32) #1

declare dso_local i32 @mmioRead(i32, i32, i32) #1

declare dso_local i8* @LE2H_DWORD(i32) #1

declare dso_local i32 @mmioFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i8* @BE2H_DWORD(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local %struct.TYPE_17__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @MulDiv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
