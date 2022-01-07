; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/midi/extr_midi_device.c_midi_input_callbacks.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/midi/extr_midi_device.c_midi_input_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 (%struct.TYPE_9__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32*)* }

@SYSEX_MESSAGE = common dso_local global i64 0, align 8
@MIDI_SONGPOSITION = common dso_local global i32 0, align 4
@MIDI_SONGSELECT = common dso_local global i32 0, align 4
@MIDI_TC_QUARTERFRAME = common dso_local global i32 0, align 4
@MIDI_TUNEREQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @midi_input_callbacks(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32 (%struct.TYPE_9__*, i32, i32, i32)*, align 8
  %16 = alloca i32 (%struct.TYPE_9__*, i32, i32)*, align 8
  %17 = alloca i32 (%struct.TYPE_9__*, i32)*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SYSEX_MESSAGE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %5
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 15
  %26 = load i32 (%struct.TYPE_9__*, i32, i32, i32*)*, i32 (%struct.TYPE_9__*, i32, i32, i32*)** %25, align 8
  %27 = icmp ne i32 (%struct.TYPE_9__*, i32, i32, i32*)* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sdiv i32 %30, 3
  %32 = mul nsw i32 %31, 3
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %12, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 15
  %44 = load i32 (%struct.TYPE_9__*, i32, i32, i32*)*, i32 (%struct.TYPE_9__*, i32, i32, i32*)** %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %49 = call i32 %44(%struct.TYPE_9__* %45, i32 %46, i32 %47, i32* %48)
  store i32 1, i32* %11, align 4
  br label %50

50:                                               ; preds = %28, %23
  br label %198

51:                                               ; preds = %5
  %52 = load i32, i32* %7, align 4
  switch i32 %52, label %192 [
    i32 3, label %53
    i32 2, label %110
    i32 1, label %166
  ]

53:                                               ; preds = %51
  store i32 (%struct.TYPE_9__*, i32, i32, i32)* null, i32 (%struct.TYPE_9__*, i32, i32, i32)** %15, align 8
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 240
  switch i32 %55, label %85 [
    i32 133, label %56
    i32 130, label %60
    i32 131, label %64
    i32 134, label %68
    i32 129, label %72
    i32 240, label %76
  ]

56:                                               ; preds = %53
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 14
  %59 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %58, align 8
  store i32 (%struct.TYPE_9__*, i32, i32, i32)* %59, i32 (%struct.TYPE_9__*, i32, i32, i32)** %15, align 8
  br label %86

60:                                               ; preds = %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 13
  %63 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %62, align 8
  store i32 (%struct.TYPE_9__*, i32, i32, i32)* %63, i32 (%struct.TYPE_9__*, i32, i32, i32)** %15, align 8
  br label %86

64:                                               ; preds = %53
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 12
  %67 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %66, align 8
  store i32 (%struct.TYPE_9__*, i32, i32, i32)* %67, i32 (%struct.TYPE_9__*, i32, i32, i32)** %15, align 8
  br label %86

68:                                               ; preds = %53
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 11
  %71 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %70, align 8
  store i32 (%struct.TYPE_9__*, i32, i32, i32)* %71, i32 (%struct.TYPE_9__*, i32, i32, i32)** %15, align 8
  br label %86

72:                                               ; preds = %53
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 10
  %75 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %74, align 8
  store i32 (%struct.TYPE_9__*, i32, i32, i32)* %75, i32 (%struct.TYPE_9__*, i32, i32, i32)** %15, align 8
  br label %86

76:                                               ; preds = %53
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @MIDI_SONGPOSITION, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 9
  %83 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %82, align 8
  store i32 (%struct.TYPE_9__*, i32, i32, i32)* %83, i32 (%struct.TYPE_9__*, i32, i32, i32)** %15, align 8
  br label %84

84:                                               ; preds = %80, %76
  br label %86

85:                                               ; preds = %53
  br label %86

86:                                               ; preds = %85, %84, %72, %68, %64, %60, %56
  %87 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %15, align 8
  %88 = icmp ne i32 (%struct.TYPE_9__*, i32, i32, i32)* %87, null
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @MIDI_SONGPOSITION, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %15, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 %94(%struct.TYPE_9__* %95, i32 %96, i32 %97, i32 %98)
  br label %108

100:                                              ; preds = %89
  %101 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %15, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = and i32 %103, 15
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 %101(%struct.TYPE_9__* %102, i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %100, %93
  store i32 1, i32* %11, align 4
  br label %109

109:                                              ; preds = %108, %86
  br label %197

110:                                              ; preds = %51
  store i32 (%struct.TYPE_9__*, i32, i32)* null, i32 (%struct.TYPE_9__*, i32, i32)** %16, align 8
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, 240
  switch i32 %112, label %139 [
    i32 128, label %113
    i32 132, label %117
    i32 240, label %121
  ]

113:                                              ; preds = %110
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 8
  %116 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** %115, align 8
  store i32 (%struct.TYPE_9__*, i32, i32)* %116, i32 (%struct.TYPE_9__*, i32, i32)** %16, align 8
  br label %140

117:                                              ; preds = %110
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 7
  %120 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** %119, align 8
  store i32 (%struct.TYPE_9__*, i32, i32)* %120, i32 (%struct.TYPE_9__*, i32, i32)** %16, align 8
  br label %140

121:                                              ; preds = %110
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @MIDI_SONGSELECT, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 6
  %128 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** %127, align 8
  store i32 (%struct.TYPE_9__*, i32, i32)* %128, i32 (%struct.TYPE_9__*, i32, i32)** %16, align 8
  br label %138

129:                                              ; preds = %121
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @MIDI_TC_QUARTERFRAME, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 5
  %136 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** %135, align 8
  store i32 (%struct.TYPE_9__*, i32, i32)* %136, i32 (%struct.TYPE_9__*, i32, i32)** %16, align 8
  br label %137

137:                                              ; preds = %133, %129
  br label %138

138:                                              ; preds = %137, %125
  br label %140

139:                                              ; preds = %110
  br label %140

140:                                              ; preds = %139, %138, %117, %113
  %141 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** %16, align 8
  %142 = icmp ne i32 (%struct.TYPE_9__*, i32, i32)* %141, null
  br i1 %142, label %143, label %165

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @MIDI_SONGSELECT, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @MIDI_TC_QUARTERFRAME, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %147, %143
  %152 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** %16, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 %152(%struct.TYPE_9__* %153, i32 %154, i32 %155)
  br label %164

157:                                              ; preds = %147
  %158 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** %16, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %160 = load i32, i32* %8, align 4
  %161 = and i32 %160, 15
  %162 = load i32, i32* %9, align 4
  %163 = call i32 %158(%struct.TYPE_9__* %159, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %157, %151
  store i32 1, i32* %11, align 4
  br label %165

165:                                              ; preds = %164, %140
  br label %197

166:                                              ; preds = %51
  store i32 (%struct.TYPE_9__*, i32)* null, i32 (%struct.TYPE_9__*, i32)** %17, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @midi_is_realtime(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 4
  %173 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %172, align 8
  store i32 (%struct.TYPE_9__*, i32)* %173, i32 (%struct.TYPE_9__*, i32)** %17, align 8
  br label %183

174:                                              ; preds = %166
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @MIDI_TUNEREQUEST, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 3
  %181 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %180, align 8
  store i32 (%struct.TYPE_9__*, i32)* %181, i32 (%struct.TYPE_9__*, i32)** %17, align 8
  br label %182

182:                                              ; preds = %178, %174
  br label %183

183:                                              ; preds = %182, %170
  %184 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %17, align 8
  %185 = icmp ne i32 (%struct.TYPE_9__*, i32)* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %17, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %189 = load i32, i32* %8, align 4
  %190 = call i32 %187(%struct.TYPE_9__* %188, i32 %189)
  store i32 1, i32* %11, align 4
  br label %191

191:                                              ; preds = %186, %183
  br label %197

192:                                              ; preds = %51
  %193 = load i32, i32* %7, align 4
  %194 = icmp sgt i32 %193, 3
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %195, %192
  br label %197

197:                                              ; preds = %196, %191, %165, %109
  br label %198

198:                                              ; preds = %197, %50
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %216, label %201

201:                                              ; preds = %198
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  %204 = load i32 (%struct.TYPE_9__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32, i32)** %203, align 8
  %205 = icmp ne i32 (%struct.TYPE_9__*, i32, i32, i32, i32)* %204, null
  br i1 %205, label %206, label %216

206:                                              ; preds = %201
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  %209 = load i32 (%struct.TYPE_9__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32, i32)** %208, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %10, align 4
  %215 = call i32 %209(%struct.TYPE_9__* %210, i32 %211, i32 %212, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %206, %201, %198
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load i32 (%struct.TYPE_9__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32, i32)** %218, align 8
  %220 = icmp ne i32 (%struct.TYPE_9__*, i32, i32, i32, i32)* %219, null
  br i1 %220, label %221, label %231

221:                                              ; preds = %216
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i32 (%struct.TYPE_9__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32, i32)** %223, align 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* %10, align 4
  %230 = call i32 %224(%struct.TYPE_9__* %225, i32 %226, i32 %227, i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %221, %216
  ret void
}

declare dso_local i32 @midi_is_realtime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
