; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_ipc.c_json_execute_command.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_ipc.c_json_execute_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_handle = type { i32 }
%struct.mp_log = type { i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8*, i32 }

@MPV_FORMAT_NODE_MAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"malformed JSON received: '%s'\0A\00", align 1
@MPV_ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"request_id\00", align 1
@MPV_FORMAT_INT64 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [107 x i8] c"'request_id' must be an integer. Using other types is deprecated and will trigger an error in the future!\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@MPV_FORMAT_NODE_ARRAY = common dso_local global i64 0, align 8
@MPV_FORMAT_STRING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"client_name\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@MPV_ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"get_time_us\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"get_version\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"get_property\00", align 1
@MPV_FORMAT_NODE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"get_property_string\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"set_property\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"set_property_string\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"observe_property\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"observe_property_string\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"unobserve_property\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"request_log_messages\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"enable_event\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"disable_event\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mpv_handle*, i8*, i8*)* @json_execute_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @json_execute_command(%struct.mpv_handle* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.mpv_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mp_log*, align 8
  %10 = alloca %struct.TYPE_24__, align 8
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_24__, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_24__, align 8
  %27 = alloca i8*, align 8
  store %struct.mpv_handle* %0, %struct.mpv_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %8, align 8
  %28 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %29 = call %struct.mp_log* @mp_client_get_log(%struct.mpv_handle* %28)
  store %struct.mp_log* %29, %struct.mp_log** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %31 = load i64, i64* @MPV_FORMAT_NODE_MAP, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  store i8* null, i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %34, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %12, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @json_parse(i8* %35, %struct.TYPE_24__* %10, i8** %6, i32 50)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @mp_err(%struct.mp_log* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %43, i32* %7, align 4
  br label %619

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MPV_FORMAT_NODE_MAP, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %50, i32* %7, align 4
  br label %619

51:                                               ; preds = %44
  %52 = call %struct.TYPE_24__* @node_map_get(%struct.TYPE_24__* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_24__* %52, %struct.TYPE_24__** %12, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %54 = icmp ne %struct.TYPE_24__* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MPV_FORMAT_INT64, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %63 = call i32 @mp_warn(%struct.mp_log* %62, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %55, %51
  %65 = call %struct.TYPE_24__* @node_map_get(%struct.TYPE_24__* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_24__* %65, %struct.TYPE_24__** %13, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %67 = icmp ne %struct.TYPE_24__* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MPV_FORMAT_NODE_ARRAY, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %68
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %74, %68, %64
  %83 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %83, i32* %7, align 4
  br label %619

84:                                               ; preds = %74
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %86 = call %struct.TYPE_24__* @mpv_node_array_get(%struct.TYPE_24__* %85, i32 0)
  store %struct.TYPE_24__* %86, %struct.TYPE_24__** %14, align 8
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %88 = icmp ne %struct.TYPE_24__* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89, %84
  %96 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %96, i32* %7, align 4
  br label %619

97:                                               ; preds = %89
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %8, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = call i64 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %97
  %106 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %107 = call i8* @mpv_client_name(%struct.mpv_handle* %106)
  store i8* %107, i8** %15, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = call i32 @mpv_node_map_add_string(i8* %108, %struct.TYPE_24__* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  %111 = load i32, i32* @MPV_ERROR_SUCCESS, align 4
  store i32 %111, i32* %7, align 4
  br label %618

112:                                              ; preds = %97
  %113 = load i8*, i8** %8, align 8
  %114 = call i64 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %112
  %117 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %118 = call i32 @mpv_get_time_us(%struct.mpv_handle* %117)
  store i32 %118, i32* %16, align 4
  %119 = load i8*, i8** %5, align 8
  %120 = load i32, i32* %16, align 4
  %121 = call i32 @mpv_node_map_add_int64(i8* %119, %struct.TYPE_24__* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @MPV_ERROR_SUCCESS, align 4
  store i32 %122, i32* %7, align 4
  br label %617

123:                                              ; preds = %112
  %124 = load i8*, i8** %8, align 8
  %125 = call i64 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = call i32 (...) @mpv_client_api_version()
  store i32 %128, i32* %17, align 4
  %129 = load i8*, i8** %5, align 8
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @mpv_node_map_add_int64(i8* %129, %struct.TYPE_24__* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @MPV_ERROR_SUCCESS, align 4
  store i32 %132, i32* %7, align 4
  br label %616

133:                                              ; preds = %123
  %134 = load i8*, i8** %8, align 8
  %135 = call i64 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %182, label %137

137:                                              ; preds = %133
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 2
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %146, i32* %7, align 4
  br label %619

147:                                              ; preds = %137
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i64 1
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %147
  %160 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %160, i32* %7, align 4
  br label %619

161:                                              ; preds = %147
  %162 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i64 1
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load i64, i64* @MPV_FORMAT_NODE, align 8
  %174 = call i32 @mpv_get_property(%struct.mpv_handle* %162, i8* %172, i64 %173, %struct.TYPE_24__* %18)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %161
  %178 = load i8*, i8** %5, align 8
  %179 = call i32 @mpv_node_map_add(i8* %178, %struct.TYPE_24__* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_24__* %18)
  %180 = call i32 @mpv_free_node_contents(%struct.TYPE_24__* %18)
  br label %181

181:                                              ; preds = %177, %161
  br label %615

182:                                              ; preds = %133
  %183 = load i8*, i8** %8, align 8
  %184 = call i64 @strcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %235, label %186

186:                                              ; preds = %182
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 2
  br i1 %193, label %194, label %196

194:                                              ; preds = %186
  %195 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %195, i32* %7, align 4
  br label %619

196:                                              ; preds = %186
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i64 1
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %196
  %209 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %209, i32* %7, align 4
  br label %619

210:                                              ; preds = %196
  %211 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i64 1
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = call i8* @mpv_get_property_string(%struct.mpv_handle* %211, i8* %221)
  store i8* %222, i8** %19, align 8
  %223 = load i8*, i8** %19, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %231

225:                                              ; preds = %210
  %226 = load i8*, i8** %5, align 8
  %227 = load i8*, i8** %19, align 8
  %228 = call i32 @mpv_node_map_add_string(i8* %226, %struct.TYPE_24__* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %227)
  %229 = load i8*, i8** %19, align 8
  %230 = call i32 @mpv_free(i8* %229)
  br label %234

231:                                              ; preds = %210
  %232 = load i8*, i8** %5, align 8
  %233 = call i32 @mpv_node_map_add_null(i8* %232, %struct.TYPE_24__* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %234

234:                                              ; preds = %231, %225
  br label %614

235:                                              ; preds = %182
  %236 = load i8*, i8** %8, align 8
  %237 = call i64 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = load i8*, i8** %8, align 8
  %241 = call i64 @strcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %288, label %243

243:                                              ; preds = %239, %235
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 3
  br i1 %250, label %251, label %253

251:                                              ; preds = %243
  %252 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %252, i32* %7, align 4
  br label %619

253:                                              ; preds = %243
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i64 1
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %253
  %266 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %266, i32* %7, align 4
  br label %619

267:                                              ; preds = %253
  %268 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i64 1
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = load i64, i64* @MPV_FORMAT_NODE, align 8
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i64 2
  %287 = call i32 @mpv_set_property(%struct.mpv_handle* %268, i8* %278, i64 %279, %struct.TYPE_25__* %286)
  store i32 %287, i32* %7, align 4
  br label %613

288:                                              ; preds = %239
  %289 = load i8*, i8** %8, align 8
  %290 = call i64 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %354, label %292

292:                                              ; preds = %288
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 3
  br i1 %299, label %300, label %302

300:                                              ; preds = %292
  %301 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %301, i32* %7, align 4
  br label %619

302:                                              ; preds = %292
  %303 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i64 1
  %310 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @MPV_FORMAT_INT64, align 8
  %313 = icmp ne i64 %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %302
  %315 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %315, i32* %7, align 4
  br label %619

316:                                              ; preds = %302
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i64 2
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %316
  %329 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %329, i32* %7, align 4
  br label %619

330:                                              ; preds = %316
  %331 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %332 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i32 0, i32 1
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_25__*, %struct.TYPE_25__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %337, i64 1
  %339 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_25__*, %struct.TYPE_25__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %347, i64 2
  %349 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = load i64, i64* @MPV_FORMAT_NODE, align 8
  %353 = call i32 @mpv_observe_property(%struct.mpv_handle* %331, i32 %341, i8* %351, i64 %352)
  store i32 %353, i32* %7, align 4
  br label %612

354:                                              ; preds = %288
  %355 = load i8*, i8** %8, align 8
  %356 = call i64 @strcmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %420, label %358

358:                                              ; preds = %354
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %360, i32 0, i32 1
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = icmp ne i32 %364, 3
  br i1 %365, label %366, label %368

366:                                              ; preds = %358
  %367 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %367, i32* %7, align 4
  br label %619

368:                                              ; preds = %358
  %369 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %370 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %372, i32 0, i32 1
  %374 = load %struct.TYPE_25__*, %struct.TYPE_25__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %374, i64 1
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @MPV_FORMAT_INT64, align 8
  %379 = icmp ne i64 %377, %378
  br i1 %379, label %380, label %382

380:                                              ; preds = %368
  %381 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %381, i32* %7, align 4
  br label %619

382:                                              ; preds = %368
  %383 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %384 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %384, i32 0, i32 1
  %386 = load %struct.TYPE_22__*, %struct.TYPE_22__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 1
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %388, i64 2
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %393 = icmp ne i64 %391, %392
  br i1 %393, label %394, label %396

394:                                              ; preds = %382
  %395 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %395, i32* %7, align 4
  br label %619

396:                                              ; preds = %382
  %397 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %398 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %399 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %399, i32 0, i32 1
  %401 = load %struct.TYPE_22__*, %struct.TYPE_22__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 1
  %403 = load %struct.TYPE_25__*, %struct.TYPE_25__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %403, i64 1
  %405 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %409 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_22__*, %struct.TYPE_22__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %411, i32 0, i32 1
  %413 = load %struct.TYPE_25__*, %struct.TYPE_25__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %413, i64 2
  %415 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %415, i32 0, i32 0
  %417 = load i8*, i8** %416, align 8
  %418 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %419 = call i32 @mpv_observe_property(%struct.mpv_handle* %397, i32 %407, i8* %417, i64 %418)
  store i32 %419, i32* %7, align 4
  br label %611

420:                                              ; preds = %354
  %421 = load i8*, i8** %8, align 8
  %422 = call i64 @strcmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %461, label %424

424:                                              ; preds = %420
  %425 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %426 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %426, i32 0, i32 1
  %428 = load %struct.TYPE_22__*, %struct.TYPE_22__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = icmp ne i32 %430, 2
  br i1 %431, label %432, label %434

432:                                              ; preds = %424
  %433 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %433, i32* %7, align 4
  br label %619

434:                                              ; preds = %424
  %435 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %436 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %436, i32 0, i32 1
  %438 = load %struct.TYPE_22__*, %struct.TYPE_22__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %438, i32 0, i32 1
  %440 = load %struct.TYPE_25__*, %struct.TYPE_25__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %440, i64 1
  %442 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* @MPV_FORMAT_INT64, align 8
  %445 = icmp ne i64 %443, %444
  br i1 %445, label %446, label %448

446:                                              ; preds = %434
  %447 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %447, i32* %7, align 4
  br label %619

448:                                              ; preds = %434
  %449 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %450 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %451 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %451, i32 0, i32 1
  %453 = load %struct.TYPE_22__*, %struct.TYPE_22__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %453, i32 0, i32 1
  %455 = load %struct.TYPE_25__*, %struct.TYPE_25__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %455, i64 1
  %457 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @mpv_unobserve_property(%struct.mpv_handle* %449, i32 %459)
  store i32 %460, i32* %7, align 4
  br label %610

461:                                              ; preds = %420
  %462 = load i8*, i8** %8, align 8
  %463 = call i64 @strcmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* %462)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %502, label %465

465:                                              ; preds = %461
  %466 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %467 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %467, i32 0, i32 1
  %469 = load %struct.TYPE_22__*, %struct.TYPE_22__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = icmp ne i32 %471, 2
  br i1 %472, label %473, label %475

473:                                              ; preds = %465
  %474 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %474, i32* %7, align 4
  br label %619

475:                                              ; preds = %465
  %476 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %477 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %477, i32 0, i32 1
  %479 = load %struct.TYPE_22__*, %struct.TYPE_22__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %479, i32 0, i32 1
  %481 = load %struct.TYPE_25__*, %struct.TYPE_25__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %481, i64 1
  %483 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %482, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %486 = icmp ne i64 %484, %485
  br i1 %486, label %487, label %489

487:                                              ; preds = %475
  %488 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %488, i32* %7, align 4
  br label %619

489:                                              ; preds = %475
  %490 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %491 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %492 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %492, i32 0, i32 1
  %494 = load %struct.TYPE_22__*, %struct.TYPE_22__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %494, i32 0, i32 1
  %496 = load %struct.TYPE_25__*, %struct.TYPE_25__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %496, i64 1
  %498 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %498, i32 0, i32 0
  %500 = load i8*, i8** %499, align 8
  %501 = call i32 @mpv_request_log_messages(%struct.mpv_handle* %490, i8* %500)
  store i32 %501, i32* %7, align 4
  br label %609

502:                                              ; preds = %461
  %503 = load i8*, i8** %8, align 8
  %504 = call i64 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* %503)
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %510

506:                                              ; preds = %502
  %507 = load i8*, i8** %8, align 8
  %508 = call i64 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %507)
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %598, label %510

510:                                              ; preds = %506, %502
  %511 = load i8*, i8** %8, align 8
  %512 = call i64 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* %511)
  %513 = icmp ne i64 %512, 0
  %514 = xor i1 %513, true
  %515 = zext i1 %514 to i32
  store i32 %515, i32* %20, align 4
  %516 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %517 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %517, i32 0, i32 1
  %519 = load %struct.TYPE_22__*, %struct.TYPE_22__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = icmp ne i32 %521, 2
  br i1 %522, label %523, label %525

523:                                              ; preds = %510
  %524 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %524, i32* %7, align 4
  br label %619

525:                                              ; preds = %510
  %526 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %527 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %527, i32 0, i32 1
  %529 = load %struct.TYPE_22__*, %struct.TYPE_22__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %529, i32 0, i32 1
  %531 = load %struct.TYPE_25__*, %struct.TYPE_25__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %531, i64 1
  %533 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %536 = icmp ne i64 %534, %535
  br i1 %536, label %537, label %539

537:                                              ; preds = %525
  %538 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %538, i32* %7, align 4
  br label %619

539:                                              ; preds = %525
  %540 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %541 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %540, i32 0, i32 1
  %542 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %541, i32 0, i32 1
  %543 = load %struct.TYPE_22__*, %struct.TYPE_22__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %543, i32 0, i32 1
  %545 = load %struct.TYPE_25__*, %struct.TYPE_25__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %545, i64 1
  %547 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %547, i32 0, i32 0
  %549 = load i8*, i8** %548, align 8
  store i8* %549, i8** %21, align 8
  %550 = load i8*, i8** %21, align 8
  %551 = call i64 @strcmp(i8* %550, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %552 = icmp eq i64 %551, 0
  br i1 %552, label %553, label %567

553:                                              ; preds = %539
  store i32 0, i32* %22, align 4
  br label %554

554:                                              ; preds = %562, %553
  %555 = load i32, i32* %22, align 4
  %556 = icmp slt i32 %555, 64
  br i1 %556, label %557, label %565

557:                                              ; preds = %554
  %558 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %559 = load i32, i32* %22, align 4
  %560 = load i32, i32* %20, align 4
  %561 = call i32 @mpv_request_event(%struct.mpv_handle* %558, i32 %559, i32 %560)
  br label %562

562:                                              ; preds = %557
  %563 = load i32, i32* %22, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %22, align 4
  br label %554

565:                                              ; preds = %554
  %566 = load i32, i32* @MPV_ERROR_SUCCESS, align 4
  store i32 %566, i32* %7, align 4
  br label %597

567:                                              ; preds = %539
  store i32 -1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %568

568:                                              ; preds = %584, %567
  %569 = load i32, i32* %24, align 4
  %570 = icmp slt i32 %569, 64
  br i1 %570, label %571, label %587

571:                                              ; preds = %568
  %572 = load i32, i32* %24, align 4
  %573 = call i8* @mpv_event_name(i32 %572)
  store i8* %573, i8** %25, align 8
  %574 = load i8*, i8** %25, align 8
  %575 = icmp ne i8* %574, null
  br i1 %575, label %576, label %583

576:                                              ; preds = %571
  %577 = load i8*, i8** %25, align 8
  %578 = load i8*, i8** %21, align 8
  %579 = call i64 @strcmp(i8* %577, i8* %578)
  %580 = icmp eq i64 %579, 0
  br i1 %580, label %581, label %583

581:                                              ; preds = %576
  %582 = load i32, i32* %24, align 4
  store i32 %582, i32* %23, align 4
  br label %583

583:                                              ; preds = %581, %576, %571
  br label %584

584:                                              ; preds = %583
  %585 = load i32, i32* %24, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %24, align 4
  br label %568

587:                                              ; preds = %568
  %588 = load i32, i32* %23, align 4
  %589 = icmp slt i32 %588, 0
  br i1 %589, label %590, label %592

590:                                              ; preds = %587
  %591 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %591, i32* %7, align 4
  br label %619

592:                                              ; preds = %587
  %593 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %594 = load i32, i32* %23, align 4
  %595 = load i32, i32* %20, align 4
  %596 = call i32 @mpv_request_event(%struct.mpv_handle* %593, i32 %594, i32 %595)
  store i32 %596, i32* %7, align 4
  br label %597

597:                                              ; preds = %592, %565
  br label %608

598:                                              ; preds = %506
  %599 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %600 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %601 = call i32 @mpv_command_node(%struct.mpv_handle* %599, %struct.TYPE_24__* %600, %struct.TYPE_24__* %26)
  store i32 %601, i32* %7, align 4
  %602 = load i32, i32* %7, align 4
  %603 = icmp sge i32 %602, 0
  br i1 %603, label %604, label %607

604:                                              ; preds = %598
  %605 = load i8*, i8** %5, align 8
  %606 = call i32 @mpv_node_map_add(i8* %605, %struct.TYPE_24__* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_24__* %26)
  br label %607

607:                                              ; preds = %604, %598
  br label %608

608:                                              ; preds = %607, %597
  br label %609

609:                                              ; preds = %608, %489
  br label %610

610:                                              ; preds = %609, %448
  br label %611

611:                                              ; preds = %610, %396
  br label %612

612:                                              ; preds = %611, %330
  br label %613

613:                                              ; preds = %612, %267
  br label %614

614:                                              ; preds = %613, %234
  br label %615

615:                                              ; preds = %614, %181
  br label %616

616:                                              ; preds = %615, %127
  br label %617

617:                                              ; preds = %616, %116
  br label %618

618:                                              ; preds = %617, %105
  br label %619

619:                                              ; preds = %618, %590, %537, %523, %487, %473, %446, %432, %394, %380, %366, %328, %314, %300, %265, %251, %208, %194, %159, %145, %95, %82, %49, %39
  %620 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %621 = icmp ne %struct.TYPE_24__* %620, null
  br i1 %621, label %622, label %626

622:                                              ; preds = %619
  %623 = load i8*, i8** %5, align 8
  %624 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %625 = call i32 @mpv_node_map_add(i8* %623, %struct.TYPE_24__* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_24__* %624)
  br label %629

626:                                              ; preds = %619
  %627 = load i8*, i8** %5, align 8
  %628 = call i32 @mpv_node_map_add_int64(i8* %627, %struct.TYPE_24__* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %629

629:                                              ; preds = %626, %622
  %630 = load i8*, i8** %5, align 8
  %631 = load i32, i32* %7, align 4
  %632 = call i8* @mpv_error_string(i32 %631)
  %633 = call i32 @mpv_node_map_add_string(i8* %630, %struct.TYPE_24__* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %632)
  %634 = load i8*, i8** %5, align 8
  %635 = call i8* @talloc_strdup(i8* %634, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0))
  store i8* %635, i8** %27, align 8
  %636 = call i32 @json_write(i8** %27, %struct.TYPE_24__* %11)
  %637 = load i8*, i8** %27, align 8
  %638 = call i8* @ta_talloc_strdup_append(i8* %637, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  store i8* %638, i8** %27, align 8
  %639 = load i8*, i8** %27, align 8
  ret i8* %639
}

declare dso_local %struct.mp_log* @mp_client_get_log(%struct.mpv_handle*) #1

declare dso_local i32 @json_parse(i8*, %struct.TYPE_24__*, i8**, i32) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i8*) #1

declare dso_local %struct.TYPE_24__* @node_map_get(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @mp_warn(%struct.mp_log*, i8*) #1

declare dso_local %struct.TYPE_24__* @mpv_node_array_get(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @mpv_client_name(%struct.mpv_handle*) #1

declare dso_local i32 @mpv_node_map_add_string(i8*, %struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @mpv_get_time_us(%struct.mpv_handle*) #1

declare dso_local i32 @mpv_node_map_add_int64(i8*, %struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @mpv_client_api_version(...) #1

declare dso_local i32 @mpv_get_property(%struct.mpv_handle*, i8*, i64, %struct.TYPE_24__*) #1

declare dso_local i32 @mpv_node_map_add(i8*, %struct.TYPE_24__*, i8*, %struct.TYPE_24__*) #1

declare dso_local i32 @mpv_free_node_contents(%struct.TYPE_24__*) #1

declare dso_local i8* @mpv_get_property_string(%struct.mpv_handle*, i8*) #1

declare dso_local i32 @mpv_free(i8*) #1

declare dso_local i32 @mpv_node_map_add_null(i8*, %struct.TYPE_24__*, i8*) #1

declare dso_local i32 @mpv_set_property(%struct.mpv_handle*, i8*, i64, %struct.TYPE_25__*) #1

declare dso_local i32 @mpv_observe_property(%struct.mpv_handle*, i32, i8*, i64) #1

declare dso_local i32 @mpv_unobserve_property(%struct.mpv_handle*, i32) #1

declare dso_local i32 @mpv_request_log_messages(%struct.mpv_handle*, i8*) #1

declare dso_local i32 @mpv_request_event(%struct.mpv_handle*, i32, i32) #1

declare dso_local i8* @mpv_event_name(i32) #1

declare dso_local i32 @mpv_command_node(%struct.mpv_handle*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i8* @mpv_error_string(i32) #1

declare dso_local i8* @talloc_strdup(i8*, i8*) #1

declare dso_local i32 @json_write(i8**, %struct.TYPE_24__*) #1

declare dso_local i8* @ta_talloc_strdup_append(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
