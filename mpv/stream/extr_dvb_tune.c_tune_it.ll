; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_tune_it.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_tune_it.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.dvb_frontend_parameters = type { i32, i32, i8*, %struct.TYPE_19__, %struct.dtv_property* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i32, i8*, i8* }
%struct.TYPE_16__ = type { i32, i8* }
%struct.TYPE_15__ = type { i32, i32, i32, i8*, i8*, i8*, i32 }
%struct.dtv_property = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.dvb_frontend_event = type { i32, i32, i8*, %struct.TYPE_19__, %struct.dtv_property* }

@.str = private unnamed_addr constant [68 x i8] c"TUNE_IT, fd_frontend %d, %s freq %lu, srate %lu, pol %c, diseqc %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Using %s adapter %d\0A\00", align 1
@FE_GET_EVENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"ERROR: Can not tune to T2 channel, S2-API not available, will tune to DVB-T!\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"tuning %s to %d Hz, bandwidth: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"ERROR: Can not tune to S2 channel, S2-API not available, will tune to DVB-S!\0A\00", align 1
@SLOF = common dso_local global i32 0, align 4
@LOF1 = common dso_local global i32 0, align 4
@LOF2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"tuning %s to Freq: %u, Pol: %c Srate: %d, 22kHz: %s, LNB:  %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"DISEQC setting succeeded\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"DISEQC setting failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"tuning %s to %d, srate=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Unknown FE type. Aborting\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Tuning via DVB-API version 3.\0A\00", align 1
@NO_STREAM_ID_FILTER = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [53 x i8] c"DVB-API version 3 does not support stream_id (PLP).\0A\00", align 1
@FE_SET_FRONTEND = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"ERROR tuning channel\0A\00", align 1
@DTV_BANDWIDTH_HZ = common dso_local global i32 0, align 4
@DTV_CLEAR = common dso_local global i32 0, align 4
@DTV_CODE_RATE_HP = common dso_local global i32 0, align 4
@DTV_CODE_RATE_LP = common dso_local global i32 0, align 4
@DTV_DELIVERY_SYSTEM = common dso_local global i32 0, align 4
@DTV_FREQUENCY = common dso_local global i32 0, align 4
@DTV_GUARD_INTERVAL = common dso_local global i32 0, align 4
@DTV_HIERARCHY = common dso_local global i32 0, align 4
@DTV_INNER_FEC = common dso_local global i32 0, align 4
@DTV_INVERSION = common dso_local global i32 0, align 4
@DTV_MODULATION = common dso_local global i32 0, align 4
@DTV_PILOT = common dso_local global i32 0, align 4
@DTV_ROLLOFF = common dso_local global i32 0, align 4
@DTV_STREAM_ID = common dso_local global i32 0, align 4
@DTV_SYMBOL_RATE = common dso_local global i32 0, align 4
@DTV_TRANSMISSION_MODE = common dso_local global i32 0, align 4
@DTV_TUNE = common dso_local global i32 0, align 4
@FE_SET_PROPERTY = common dso_local global i32 0, align 4
@PILOT_AUTO = common dso_local global i8* null, align 8
@ROLLOFF_AUTO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32, i32, i32, i32, i8, i32, i8*, i32, i8*, i8*, i32, i32, i32, i8*, i32, i32)* @tune_it to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tune_it(%struct.TYPE_23__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8 signext %5, i32 %6, i8* %7, i32 %8, i8* %9, i8* %10, i32 %11, i32 %12, i32 %13, i8* %14, i32 %15, i32 %16) #0 {
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_22__*, align 8
  %39 = alloca %struct.dvb_frontend_parameters, align 8
  %40 = alloca %struct.dvb_frontend_event, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %19, align 8
  store i32 %1, i32* %20, align 4
  store i32 %2, i32* %21, align 4
  store i32 %3, i32* %22, align 4
  store i32 %4, i32* %23, align 4
  store i8 %5, i8* %24, align 1
  store i32 %6, i32* %25, align 4
  store i8* %7, i8** %26, align 8
  store i32 %8, i32* %27, align 4
  store i8* %9, i8** %28, align 8
  store i8* %10, i8** %29, align 8
  store i32 %11, i32* %30, align 4
  store i32 %12, i32* %31, align 4
  store i32 %13, i32* %32, align 4
  store i8* %14, i8** %33, align 8
  store i32 %15, i32* %34, align 4
  store i32 %16, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %42, align 8
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %38, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %21, align 4
  %47 = call i32 @get_dvb_delsys(i32 %46)
  %48 = load i32, i32* %22, align 4
  %49 = zext i32 %48 to i64
  %50 = load i32, i32* %23, align 4
  %51 = zext i32 %50 to i64
  %52 = load i8, i8* %24, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sgt i32 %53, 32
  br i1 %54, label %55, label %58

55:                                               ; preds = %17
  %56 = load i8, i8* %24, align 1
  %57 = sext i8 %56 to i32
  br label %59

58:                                               ; preds = %17
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ %57, %55 ], [ 45, %58 ]
  %61 = load i32, i32* %27, align 4
  %62 = call i32 (%struct.TYPE_23__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_23__* %44, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47, i64 %49, i64 %51, i32 %60, i32 %61)
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %64 = load i32, i32* %21, align 4
  %65 = call i32 @get_dvb_delsys(i32 %64)
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.TYPE_23__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_23__* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %74)
  br label %76

76:                                               ; preds = %59, %83
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* @FE_GET_EVENT, align 4
  %79 = bitcast %struct.dvb_frontend_event* %40 to %struct.dvb_frontend_parameters*
  %80 = call i64 @ioctl(i32 %77, i32 %78, %struct.dvb_frontend_parameters* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %84

83:                                               ; preds = %76
  br label %76

84:                                               ; preds = %82
  %85 = load i32, i32* %21, align 4
  switch i32 %85, label %175 [
    i32 128, label %86
    i32 129, label %89
    i32 130, label %118
    i32 131, label %121
    i32 134, label %168
    i32 132, label %168
  ]

86:                                               ; preds = %84
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %88 = call i32 @MP_ERR(%struct.TYPE_23__* %87, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %86
  %90 = load i32, i32* %22, align 4
  %91 = icmp ult i32 %90, 1000000
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* %22, align 4
  %94 = zext i32 %93 to i64
  %95 = mul i64 %94, 1000
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %22, align 4
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i32, i32* %32, align 4
  switch i32 %98, label %110 [
    i32 140, label %99
    i32 139, label %100
    i32 138, label %101
    i32 137, label %102
    i32 141, label %103
    i32 136, label %104
  ]

99:                                               ; preds = %97
  store i32 5000000, i32* %37, align 4
  br label %111

100:                                              ; preds = %97
  store i32 6000000, i32* %37, align 4
  br label %111

101:                                              ; preds = %97
  store i32 7000000, i32* %37, align 4
  br label %111

102:                                              ; preds = %97
  store i32 8000000, i32* %37, align 4
  br label %111

103:                                              ; preds = %97
  store i32 10000000, i32* %37, align 4
  br label %111

104:                                              ; preds = %97
  %105 = load i32, i32* %22, align 4
  %106 = icmp ult i32 %105, 474000000
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 7000000, i32* %37, align 4
  br label %109

108:                                              ; preds = %104
  store i32 8000000, i32* %37, align 4
  br label %109

109:                                              ; preds = %108, %107
  br label %111

110:                                              ; preds = %97
  store i32 0, i32* %37, align 4
  br label %111

111:                                              ; preds = %110, %109, %103, %102, %101, %100, %99
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %113 = load i32, i32* %21, align 4
  %114 = call i32 @get_dvb_delsys(i32 %113)
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %37, align 4
  %117 = call i32 (%struct.TYPE_23__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_23__* %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %115, i32 %116)
  br label %178

118:                                              ; preds = %84
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %120 = call i32 @MP_ERR(%struct.TYPE_23__* %119, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0))
  br label %121

121:                                              ; preds = %84, %118
  %122 = load i32, i32* %22, align 4
  %123 = icmp ugt i32 %122, 2200000
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* @SLOF, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32, i32* @LOF1, align 4
  %130 = load i32, i32* %22, align 4
  %131 = sub i32 %130, %129
  store i32 %131, i32* %22, align 4
  store i32 0, i32* %36, align 4
  br label %136

132:                                              ; preds = %124
  %133 = load i32, i32* @LOF2, align 4
  %134 = load i32, i32* %22, align 4
  %135 = sub i32 %134, %133
  store i32 %135, i32* %22, align 4
  store i32 1, i32* %36, align 4
  br label %136

136:                                              ; preds = %132, %128
  br label %137

137:                                              ; preds = %136, %121
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %139 = load i32, i32* %21, align 4
  %140 = call i32 @get_dvb_delsys(i32 %139)
  %141 = load i32, i32* %22, align 4
  %142 = load i8, i8* %24, align 1
  %143 = sext i8 %142 to i32
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %36, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %149 = load i32, i32* %27, align 4
  %150 = call i32 (%struct.TYPE_23__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_23__* %138, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %140, i32 %141, i32 %143, i32 %144, i8* %148, i32 %149)
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* %27, align 4
  %153 = load i8, i8* %24, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 86
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 1, i32 0
  %158 = load i32, i32* %36, align 4
  %159 = call i32 @do_diseqc(i32 %151, i32 %152, i32 %157, i32 %158)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %137
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %163 = call i32 (%struct.TYPE_23__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_23__* %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %167

164:                                              ; preds = %137
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %166 = call i32 @MP_ERR(%struct.TYPE_23__* %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %18, align 4
  br label %261

167:                                              ; preds = %161
  br label %178

168:                                              ; preds = %84, %84
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %170 = load i32, i32* %21, align 4
  %171 = call i32 @get_dvb_delsys(i32 %170)
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %23, align 4
  %174 = call i32 (%struct.TYPE_23__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_23__* %169, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %171, i32 %172, i32 %173)
  br label %178

175:                                              ; preds = %84
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %177 = call i32 (%struct.TYPE_23__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_23__* %176, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %261

178:                                              ; preds = %168, %167, %111
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %180 = call i32 (%struct.TYPE_23__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_23__* %179, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %181 = load i32, i32* %25, align 4
  %182 = load i32, i32* @NO_STREAM_ID_FILTER, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load i32, i32* %25, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %189 = call i32 @MP_ERR(%struct.TYPE_23__* %188, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %18, align 4
  br label %261

190:                                              ; preds = %184, %178
  %191 = call i32 @memset(%struct.dvb_frontend_parameters* %39, i32 0, i32 120)
  %192 = load i32, i32* %22, align 4
  %193 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 1
  store i32 %192, i32* %193, align 4
  %194 = load i8*, i8** %26, align 8
  %195 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 2
  store i8* %194, i8** %195, align 8
  %196 = load i32, i32* %21, align 4
  switch i32 %196, label %248 [
    i32 129, label %197
    i32 128, label %197
    i32 131, label %226
    i32 130, label %226
    i32 134, label %235
    i32 132, label %235
  ]

197:                                              ; preds = %190, %190
  %198 = load i32, i32* %32, align 4
  %199 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 6
  store i32 %198, i32* %201, align 8
  %202 = load i8*, i8** %29, align 8
  %203 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 5
  store i8* %202, i8** %205, align 8
  %206 = load i8*, i8** %33, align 8
  %207 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 4
  store i8* %206, i8** %209, align 8
  %210 = load i8*, i8** %28, align 8
  %211 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 3
  store i8* %210, i8** %213, align 8
  %214 = load i32, i32* %30, align 4
  %215 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  store i32 %214, i32* %217, align 8
  %218 = load i32, i32* %31, align 4
  %219 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  store i32 %218, i32* %221, align 4
  %222 = load i32, i32* %34, align 4
  %223 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 2
  store i32 %222, i32* %225, align 8
  br label %248

226:                                              ; preds = %190, %190
  %227 = load i32, i32* %23, align 4
  %228 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 0
  store i32 %227, i32* %230, align 8
  %231 = load i8*, i8** %29, align 8
  %232 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  store i8* %231, i8** %234, align 8
  br label %248

235:                                              ; preds = %190, %190
  %236 = load i32, i32* %23, align 4
  %237 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 8
  %240 = load i8*, i8** %29, align 8
  %241 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 2
  store i8* %240, i8** %243, align 8
  %244 = load i8*, i8** %28, align 8
  %245 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 1
  store i8* %244, i8** %247, align 8
  br label %248

248:                                              ; preds = %190, %235, %226, %197
  %249 = load i32, i32* %20, align 4
  %250 = load i32, i32* @FE_SET_FRONTEND, align 4
  %251 = call i64 @ioctl(i32 %249, i32 %250, %struct.dvb_frontend_parameters* %39)
  %252 = icmp slt i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %255 = call i32 @MP_ERR(%struct.TYPE_23__* %254, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %18, align 4
  br label %261

256:                                              ; preds = %248
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %258 = load i32, i32* %20, align 4
  %259 = load i32, i32* %35, align 4
  %260 = call i32 @check_status(%struct.TYPE_23__* %257, i32 %258, i32 %259)
  store i32 %260, i32* %18, align 4
  br label %261

261:                                              ; preds = %256, %253, %187, %175, %164
  %262 = load i32, i32* %18, align 4
  ret i32 %262
}

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_23__*, i8*, ...) #1

declare dso_local i32 @get_dvb_delsys(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @do_diseqc(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.dvb_frontend_parameters*, i32, i32) #1

declare dso_local i32 @check_status(%struct.TYPE_23__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
