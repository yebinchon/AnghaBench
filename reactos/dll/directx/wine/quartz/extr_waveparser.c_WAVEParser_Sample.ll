; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_waveparser.c_WAVEParser_Sample.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_waveparser.c_WAVEParser_Sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32*, %struct.TYPE_10__, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c".. Why do I need you?\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i64 0, align 8
@VFW_E_WRONG_STATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Error sending sample (%x)\0A\00", align 1
@VFW_E_NOT_CONNECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"End of file reached\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Send End Of Stream to output pin %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i32*, i32)* @WAVEParser_Sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WAVEParser_Sample(%struct.TYPE_12__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %8, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  store i32* null, i32** %14, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %16, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @IMediaSample_GetPointer(i32* %29, i32** %9)
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @IMediaSample_GetTime(i32* %31, i64* %11, i64* %12)
  store i64 %32, i64* %13, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @IMediaSample_GetActualDataLength(i32* %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* @S_OK, align 8
  store i64 %39, i64* %4, align 8
  br label %229

40:                                               ; preds = %3
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_14__* @unsafe_impl_Parser_OutputPin_from_IPin(i32 %46)
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %15, align 8
  %48 = load i64, i64* %13, align 8
  %49 = call i64 @SUCCEEDED(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IMemAllocator_GetBuffer(i32 %54, i32** %14, i32* null, i32* null, i32 0)
  store i64 %55, i64* %13, align 8
  br label %56

56:                                               ; preds = %51, %40
  %57 = load i64, i64* %13, align 8
  %58 = call i64 @SUCCEEDED(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %109

60:                                               ; preds = %56
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %17, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = call i64 @IMediaSample_GetSize(i32* %65)
  %67 = call i64 @MEDIATIME_FROM_BYTES(i64 %66)
  %68 = add nsw i64 %64, %67
  store i64 %68, i64* %18, align 8
  %69 = load i64, i64* %18, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %60
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @BYTES_FROM_MEDIATIME(i64 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ALIGNUP(i32 %78, i32 %81)
  %83 = call i64 @MEDIATIME_FROM_BYTES(i64 %82)
  store i64 %83, i64* %18, align 8
  br label %84

84:                                               ; preds = %74, %60
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @IMediaSample_SetTime(i32* %85, i64* %17, i64* %18)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %18, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* @FALSE, align 4
  %97 = call i32 @IMediaSample_SetPreroll(i32* %95, i32 %96)
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* @FALSE, align 4
  %100 = call i32 @IMediaSample_SetDiscontinuity(i32* %98, i32 %99)
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* @TRUE, align 4
  %103 = call i32 @IMediaSample_SetSyncPoint(i32* %101, i32 %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = call i64 @IAsyncReader_Request(i32 %106, i32* %107, i32 0)
  store i64 %108, i64* %13, align 8
  br label %109

109:                                              ; preds = %84, %56
  %110 = load i64, i64* %13, align 8
  %111 = call i64 @SUCCEEDED(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %164

113:                                              ; preds = %109
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* @TRUE, align 4
  %116 = call i32 @IMediaSample_SetSyncPoint(i32* %114, i32 %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %122 = load i64, i64* %11, align 8
  %123 = call i64 @bytepos_to_duration(%struct.TYPE_12__* %121, i64 %122)
  store i64 %123, i64* %19, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = call i64 @IMediaSample_GetActualDataLength(i32* %126)
  %128 = call i64 @MEDIATIME_FROM_BYTES(i64 %127)
  %129 = add nsw i64 %125, %128
  %130 = call i64 @bytepos_to_duration(%struct.TYPE_12__* %124, i64 %129)
  store i64 %130, i64* %20, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @IMediaSample_SetTime(i32* %131, i64* %19, i64* %20)
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i32*, i32** %6, align 8
  %136 = call i64 @BaseOutputPinImpl_Deliver(i32* %134, i32* %135)
  store i64 %136, i64* %13, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* @S_OK, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %113
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* @S_FALSE, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* @VFW_E_WRONG_STATE, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i64, i64* %13, align 8
  %150 = call i32 @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %149)
  br label %163

151:                                              ; preds = %144, %140, %113
  %152 = load i64, i64* %13, align 8
  %153 = load i64, i64* @S_OK, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i64, i64* %11, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  store i64 %156, i64* %161, align 8
  br label %162

162:                                              ; preds = %155, %151
  br label %163

163:                                              ; preds = %162, %148
  br label %164

164:                                              ; preds = %163, %109
  %165 = load i64, i64* %12, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp sge i64 %165, %168
  br i1 %169, label %184, label %170

170:                                              ; preds = %164
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %172 = load i64, i64* %12, align 8
  %173 = call i64 @bytepos_to_duration(%struct.TYPE_12__* %171, i64 %172)
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp sge i64 %173, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %170
  %181 = load i64, i64* %13, align 8
  %182 = load i64, i64* @VFW_E_NOT_CONNECTED, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %227

184:                                              ; preds = %180, %170, %164
  %185 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %186

186:                                              ; preds = %222, %184
  %187 = load i32, i32* %21, align 4
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ult i32 %187, %191
  br i1 %192, label %193, label %225

193:                                              ; preds = %186
  %194 = load i32, i32* %21, align 4
  %195 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %21, align 4
  %201 = add i32 %200, 1
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @IPin_ConnectedTo(i32 %204, i32** %22)
  store i64 %205, i64* %23, align 8
  %206 = load i64, i64* %23, align 8
  %207 = call i64 @SUCCEEDED(i64 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %193
  %210 = load i32*, i32** %22, align 8
  %211 = call i64 @IPin_EndOfStream(i32* %210)
  store i64 %211, i64* %23, align 8
  %212 = load i32*, i32** %22, align 8
  %213 = call i32 @IPin_Release(i32* %212)
  br label %214

214:                                              ; preds = %209, %193
  %215 = load i64, i64* %23, align 8
  %216 = call i64 @FAILED(i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load i64, i64* %23, align 8
  %220 = call i32 @ERR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %219)
  br label %225

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %21, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %21, align 4
  br label %186

225:                                              ; preds = %218, %186
  %226 = load i64, i64* @S_FALSE, align 8
  store i64 %226, i64* %13, align 8
  br label %227

227:                                              ; preds = %225, %180
  %228 = load i64, i64* %13, align 8
  store i64 %228, i64* %4, align 8
  br label %229

229:                                              ; preds = %227, %37
  %230 = load i64, i64* %4, align 8
  ret i64 %230
}

declare dso_local i32 @IMediaSample_GetPointer(i32*, i32**) #1

declare dso_local i64 @IMediaSample_GetTime(i32*, i64*, i64*) #1

declare dso_local i64 @IMediaSample_GetActualDataLength(i32*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.TYPE_14__* @unsafe_impl_Parser_OutputPin_from_IPin(i32) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IMemAllocator_GetBuffer(i32, i32**, i32*, i32*, i32) #1

declare dso_local i64 @MEDIATIME_FROM_BYTES(i64) #1

declare dso_local i64 @IMediaSample_GetSize(i32*) #1

declare dso_local i64 @ALIGNUP(i32, i32) #1

declare dso_local i32 @BYTES_FROM_MEDIATIME(i64) #1

declare dso_local i32 @IMediaSample_SetTime(i32*, i64*, i64*) #1

declare dso_local i32 @IMediaSample_SetPreroll(i32*, i32) #1

declare dso_local i32 @IMediaSample_SetDiscontinuity(i32*, i32) #1

declare dso_local i32 @IMediaSample_SetSyncPoint(i32*, i32) #1

declare dso_local i64 @IAsyncReader_Request(i32, i32*, i32) #1

declare dso_local i64 @bytepos_to_duration(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @BaseOutputPinImpl_Deliver(i32*, i32*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @IPin_ConnectedTo(i32, i32**) #1

declare dso_local i64 @IPin_EndOfStream(i32*) #1

declare dso_local i32 @IPin_Release(i32*) #1

declare dso_local i64 @FAILED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
