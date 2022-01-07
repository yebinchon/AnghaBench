; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_dvb_set_channel.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_dvb_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32, i64, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i64, i64, i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_24__* }

@.str = private unnamed_addr constant [67 x i8] c"dvb_set_channel: INVALID internal ADAPTER NUMBER: %d vs %d, abort\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"dvb_set_channel: INVALID CHANNEL NUMBER: %d, for adapter %d, abort\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"DVB_SET_CHANNEL, COULDN'T OPEN DEVICES OF ADAPTER: %d, EXIT\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"DVB_SET_CHANNEL2, COULDN'T OPEN DEVICES OF ADAPTER: %d, EXIT\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"DVB_SET_CHANNEL: new channel name=%s, adapter: %d, channel %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"DVB_SET_CHANNEL: PMT-PID for service %d not resolved yet, parsing PAT...\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"DVB_SET_CHANNEL: Found PMT-PID: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"DVB_SET_CHANNEL: PMT-PID not found, teletext-decoding may fail.\0A\00", align 1
@DMX_PES_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_set_channel(%struct.TYPE_21__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca [4096 x i8], align 16
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %10, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %12, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp uge i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct.TYPE_21__*, i8*, ...) @MP_ERR(%struct.TYPE_21__* %29, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  store i32 0, i32* %4, align 4
  br label %325

35:                                               ; preds = %3
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 7
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %13, align 4
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 7
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %50, align 8
  store %struct.TYPE_24__* %51, %struct.TYPE_24__** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ugt i32 %52, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %35
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 (%struct.TYPE_21__*, i8*, ...) @MP_ERR(%struct.TYPE_21__* %58, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  store i32 0, i32* %4, align 4
  br label %325

62:                                               ; preds = %35
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i64 %67
  store %struct.TYPE_25__* %68, %struct.TYPE_25__** %9, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %126

73:                                               ; preds = %62
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %75 = call i32 @dvb_fix_demuxes(%struct.TYPE_23__* %74, i32 0)
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 2
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %83, %73
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %80 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %81 = call i64 @dvb_streaming_read(%struct.TYPE_21__* %79, i8* %80, i32 4096)
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %78

84:                                               ; preds = %78
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %90, %84
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %100 = call i32 @dvbin_close(%struct.TYPE_21__* %99)
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dvb_open_devices(%struct.TYPE_23__* %101, i32 %102, i64 %105, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %98
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 (%struct.TYPE_21__*, i8*, ...) @MP_ERR(%struct.TYPE_21__* %112, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  store i32 0, i32* %4, align 4
  br label %325

115:                                              ; preds = %98
  br label %125

116:                                              ; preds = %90
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @dvb_fix_demuxes(%struct.TYPE_23__* %117, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %325

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %115
  br label %142

126:                                              ; preds = %62
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dvb_open_devices(%struct.TYPE_23__* %127, i32 %128, i64 %131, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %126
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %139 = load i32, i32* %13, align 4
  %140 = call i32 (%struct.TYPE_21__*, i8*, ...) @MP_ERR(%struct.TYPE_21__* %138, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  store i32 0, i32* %4, align 4
  br label %325

141:                                              ; preds = %126
  br label %142

142:                                              ; preds = %141, %125
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 2
  store i32 5, i32* %144, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 18
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i32 (%struct.TYPE_21__*, i8*, i32, ...) @MP_VERBOSE(%struct.TYPE_21__* %148, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %151, i32 %152, i32 %153)
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %156 = call i32 @stream_drop_buffers(%struct.TYPE_21__* %155)
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %159, %162
  br i1 %163, label %164, label %217

164:                                              ; preds = %142
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 17
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 16
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 15
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 14
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 13
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 12
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 11
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 10
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 9
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @dvb_tune(%struct.TYPE_23__* %165, i32 %168, i64 %171, i32 %174, i32 %177, i32 %180, i32 %183, i32 %186, i32 %189, i32 %192, i32 %195, i32 %198, i32 %201, i32 %204, i32 %207, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %164
  store i32 0, i32* %4, align 4
  br label %325

216:                                              ; preds = %164
  br label %217

217:                                              ; preds = %216, %142
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 1
  store i32 1, i32* %219, align 4
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 5
  store i64 %222, i64* %224, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 4
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 4
  store i64 %230, i64* %232, align 8
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, -1
  br i1 %236, label %237, label %280

237:                                              ; preds = %217
  store i32 0, i32* %14, align 4
  br label %238

238:                                              ; preds = %276, %237
  %239 = load i32, i32* %14, align 4
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %279

244:                                              ; preds = %238
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %14, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %275

253:                                              ; preds = %244
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = call i32 (%struct.TYPE_21__*, i8*, i32, ...) @MP_VERBOSE(%struct.TYPE_21__* %254, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %257)
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %260 = load i32, i32* %6, align 4
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @dvb_get_pmt_pid(%struct.TYPE_23__* %259, i32 %260, i32 %263)
  store i32 %264, i32* %15, align 4
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %266 = load i32, i32* %15, align 4
  %267 = call i32 (%struct.TYPE_21__*, i8*, i32, ...) @MP_VERBOSE(%struct.TYPE_21__* %265, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %266)
  %268 = load i32, i32* %15, align 4
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 4
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %14, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  store i32 %268, i32* %274, align 4
  br label %275

275:                                              ; preds = %253, %244
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %14, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %14, align 4
  br label %238

279:                                              ; preds = %238
  br label %280

280:                                              ; preds = %279, %217
  store i32 0, i32* %14, align 4
  br label %281

281:                                              ; preds = %321, %280
  %282 = load i32, i32* %14, align 4
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = icmp slt i32 %282, %285
  br i1 %286, label %287, label %324

287:                                              ; preds = %281
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 4
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %14, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %294, -1
  br i1 %295, label %296, label %299

296:                                              ; preds = %287
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %298 = call i32 (%struct.TYPE_21__*, i8*, ...) @MP_ERR(%struct.TYPE_21__* %297, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0))
  br label %320

299:                                              ; preds = %287
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 6
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %14, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 4
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %14, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @DMX_PES_OTHER, align 4
  %316 = call i32 @dvb_set_ts_filt(%struct.TYPE_23__* %300, i32 %307, i32 %314, i32 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %299
  store i32 0, i32* %4, align 4
  br label %325

319:                                              ; preds = %299
  br label %320

320:                                              ; preds = %319, %296
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %14, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %14, align 4
  br label %281

324:                                              ; preds = %281
  store i32 1, i32* %4, align 4
  br label %325

325:                                              ; preds = %324, %318, %215, %137, %123, %111, %57, %28
  %326 = load i32, i32* %4, align 4
  ret i32 %326
}

declare dso_local i32 @MP_ERR(%struct.TYPE_21__*, i8*, ...) #1

declare dso_local i32 @dvb_fix_demuxes(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @dvb_streaming_read(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @dvbin_close(%struct.TYPE_21__*) #1

declare dso_local i32 @dvb_open_devices(%struct.TYPE_23__*, i32, i64, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_21__*, i8*, i32, ...) #1

declare dso_local i32 @stream_drop_buffers(%struct.TYPE_21__*) #1

declare dso_local i32 @dvb_tune(%struct.TYPE_23__*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dvb_get_pmt_pid(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @dvb_set_ts_filt(%struct.TYPE_23__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
