; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_play.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_36__ = type { i8*, i32, i64 }
%struct.TYPE_37__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64, %struct.TYPE_38__** }
%struct.TYPE_38__ = type { i32, %struct.TYPE_34__, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64, i8* }
%struct.TYPE_29__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_38__*, %struct.TYPE_34__, i8*, i8*, %struct.TYPE_32__, i32, i8*, i8*, %struct.TYPE_35__* }
%struct.TYPE_32__ = type { i64, i32 }

@ngx_rtmp_play_module = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"play: play name='%s' timestamp=%i\00", align 1
@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"play: already playing\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"play: bad name '%s'\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_RTMP_MAX_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"play: fmt not found\00", align 1
@NGX_CONF_UNSET_UINT = common dso_local global i8* null, align 8
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"play: fmt=%V\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*, %struct.TYPE_36__*)* @ngx_rtmp_play_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_play_play(%struct.TYPE_35__* %0, %struct.TYPE_36__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_38__*, align 8
  %11 = alloca %struct.TYPE_38__**, align 8
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca %struct.TYPE_34__, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %4, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %5, align 8
  %16 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %17 = load i32, i32* @ngx_rtmp_play_module, align 4
  %18 = call %struct.TYPE_37__* @ngx_rtmp_get_module_main_conf(%struct.TYPE_35__* %16, i32 %17)
  store %struct.TYPE_37__* %18, %struct.TYPE_37__** %6, align 8
  %19 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %20 = load i32, i32* @ngx_rtmp_play_module, align 4
  %21 = call %struct.TYPE_29__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_35__* %19, i32 %20)
  store %struct.TYPE_29__* %21, %struct.TYPE_29__** %7, align 8
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %23 = icmp eq %struct.TYPE_29__* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %2
  br label %344

31:                                               ; preds = %24
  %32 = load i32, i32* @NGX_LOG_INFO, align 4
  %33 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %32, i32 %37, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %44)
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %47 = load i32, i32* @ngx_rtmp_play_module, align 4
  %48 = call %struct.TYPE_28__* @ngx_rtmp_get_module_ctx(%struct.TYPE_35__* %46, i32 %47)
  store %struct.TYPE_28__* %48, %struct.TYPE_28__** %8, align 8
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %50 = icmp ne %struct.TYPE_28__* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %31
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NGX_INVALID_FILE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load i32, i32* @NGX_LOG_ERR, align 4
  %60 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %59, i32 %64, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %344

66:                                               ; preds = %51, %31
  %67 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %9, align 8
  br label %70

70:                                               ; preds = %111, %66
  %71 = load i8*, i8** %9, align 8
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %114

74:                                               ; preds = %70
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @ngx_path_separator(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %74
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 46
  br i1 %85, label %86, label %110

86:                                               ; preds = %80
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 46
  br i1 %91, label %92, label %110

92:                                               ; preds = %86
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @ngx_path_separator(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load i32, i32* @NGX_LOG_ERR, align 4
  %100 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %99, i32 %104, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %107)
  %109 = load i32, i32* @NGX_ERROR, align 4
  store i32 %109, i32* %3, align 4
  br label %348

110:                                              ; preds = %92, %86, %80, %74
  br label %111

111:                                              ; preds = %110
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %9, align 8
  br label %70

114:                                              ; preds = %70
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %116 = icmp eq %struct.TYPE_28__* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call %struct.TYPE_28__* @ngx_palloc(i32 %122, i32 96)
  store %struct.TYPE_28__* %123, %struct.TYPE_28__** %8, align 8
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %126 = load i32, i32* @ngx_rtmp_play_module, align 4
  %127 = call i32 @ngx_rtmp_set_ctx(%struct.TYPE_35__* %124, %struct.TYPE_28__* %125, i32 %126)
  br label %128

128:                                              ; preds = %117, %114
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %130 = call i32 @ngx_memzero(%struct.TYPE_28__* %129, i32 96)
  %131 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 9
  store %struct.TYPE_35__* %131, %struct.TYPE_35__** %133, align 8
  %134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @ngx_rtmp_play_parse_index(i8 signext 97, i32 %136)
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 8
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @ngx_rtmp_play_parse_index(i8 signext 118, i32 %142)
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 7
  store i8* %143, i8** %145, align 8
  %146 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 8
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* @NGX_RTMP_MAX_NAME, align 4
  %161 = call i32 @ngx_memcpy(i32 %156, i8* %159, i32 %160)
  %162 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @ngx_strlen(i8* %164)
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 0
  store i64 %165, i64* %166, align 8
  %167 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 1
  store i8* %169, i8** %170, align 8
  %171 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %173, align 8
  store %struct.TYPE_38__** %174, %struct.TYPE_38__*** %11, align 8
  store i64 0, i64* %15, align 8
  br label %175

175:                                              ; preds = %265, %128
  %176 = load i64, i64* %15, align 8
  %177 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp slt i64 %176, %180
  br i1 %181, label %182, label %270

182:                                              ; preds = %175
  %183 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %11, align 8
  %184 = load %struct.TYPE_38__*, %struct.TYPE_38__** %183, align 8
  store %struct.TYPE_38__* %184, %struct.TYPE_38__** %10, align 8
  %185 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %185, i32 0, i32 2
  store %struct.TYPE_34__* %186, %struct.TYPE_34__** %12, align 8
  %187 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %187, i32 0, i32 1
  store %struct.TYPE_34__* %188, %struct.TYPE_34__** %13, align 8
  %189 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %182
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %195, align 8
  %197 = icmp eq %struct.TYPE_38__* %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 1
  store %struct.TYPE_38__* %199, %struct.TYPE_38__** %201, align 8
  br label %202

202:                                              ; preds = %198, %193, %182
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %234

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp sge i64 %209, %212
  br i1 %213, label %214, label %234

214:                                              ; preds = %207
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 1
  %217 = load i8*, i8** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i64 @ngx_strncasecmp(i8* %217, i8* %219, i64 %222)
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %214
  %226 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  %231 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 1
  store %struct.TYPE_38__* %231, %struct.TYPE_38__** %233, align 8
  br label %270

234:                                              ; preds = %214, %207, %202
  %235 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp sge i64 %236, %239
  br i1 %240, label %241, label %264

241:                                              ; preds = %234
  %242 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = sub i64 0, %252
  %254 = getelementptr inbounds i8, i8* %249, i64 %253
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = call i64 @ngx_strncasecmp(i8* %244, i8* %254, i64 %257)
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %241
  %261 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 1
  store %struct.TYPE_38__* %261, %struct.TYPE_38__** %263, align 8
  br label %264

264:                                              ; preds = %260, %241, %234
  br label %265

265:                                              ; preds = %264
  %266 = load i64, i64* %15, align 8
  %267 = add nsw i64 %266, 1
  store i64 %267, i64* %15, align 8
  %268 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %268, i32 1
  store %struct.TYPE_38__** %269, %struct.TYPE_38__*** %11, align 8
  br label %175

270:                                              ; preds = %225, %175
  %271 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_38__*, %struct.TYPE_38__** %272, align 8
  %274 = icmp eq %struct.TYPE_38__* %273, null
  br i1 %274, label %275, label %283

275:                                              ; preds = %270
  %276 = load i32, i32* @NGX_LOG_ERR, align 4
  %277 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_33__*, %struct.TYPE_33__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %276, i32 %281, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %344

283:                                              ; preds = %270
  %284 = load i64, i64* @NGX_INVALID_FILE, align 8
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %285, i32 0, i32 5
  %287 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %286, i32 0, i32 0
  store i64 %284, i64* %287, align 8
  %288 = load i8*, i8** @NGX_CONF_UNSET_UINT, align 8
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i32 0, i32 4
  store i8* %288, i8** %290, align 8
  %291 = load i8*, i8** @NGX_CONF_UNSET_UINT, align 8
  %292 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %292, i32 0, i32 3
  store i8* %291, i8** %293, align 8
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_38__*, %struct.TYPE_38__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %296, i32 0, i32 1
  store %struct.TYPE_34__* %297, %struct.TYPE_34__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp slt i64 %299, %302
  br i1 %303, label %323, label %304

304:                                              ; preds = %283
  %305 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 1
  %309 = load i8*, i8** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = getelementptr inbounds i8, i8* %309, i64 %311
  %313 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %314 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = sub i64 0, %315
  %317 = getelementptr inbounds i8, i8* %312, i64 %316
  %318 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = call i64 @ngx_strncasecmp(i8* %307, i8* %317, i64 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %304, %283
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %324, i32 0, i32 2
  %326 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %327 = bitcast %struct.TYPE_34__* %325 to i8*
  %328 = bitcast %struct.TYPE_34__* %326 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %327, i8* align 8 %328, i64 16, i1 false)
  br label %329

329:                                              ; preds = %323, %304
  %330 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %331 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_33__*, %struct.TYPE_33__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_38__*, %struct.TYPE_38__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %338, i32 0, i32 0
  %340 = call i32 @ngx_log_debug1(i32 %330, i32 %335, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %339)
  %341 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %342 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %343 = call i32 @ngx_rtmp_play_next_entry(%struct.TYPE_35__* %341, %struct.TYPE_36__* %342)
  store i32 %343, i32* %3, align 4
  br label %348

344:                                              ; preds = %275, %58, %30
  %345 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %346 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %347 = call i32 @next_play(%struct.TYPE_35__* %345, %struct.TYPE_36__* %346)
  store i32 %347, i32* %3, align 4
  br label %348

348:                                              ; preds = %344, %329, %98
  %349 = load i32, i32* %3, align 4
  ret i32 %349
}

declare dso_local %struct.TYPE_37__* @ngx_rtmp_get_module_main_conf(%struct.TYPE_35__*, i32) #1

declare dso_local %struct.TYPE_29__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_28__* @ngx_rtmp_get_module_ctx(%struct.TYPE_35__*, i32) #1

declare dso_local i64 @ngx_path_separator(i8 signext) #1

declare dso_local %struct.TYPE_28__* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_rtmp_set_ctx(%struct.TYPE_35__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_28__*, i32) #1

declare dso_local i8* @ngx_rtmp_play_parse_index(i8 signext, i32) #1

declare dso_local i32 @ngx_memcpy(i32, i8*, i32) #1

declare dso_local i64 @ngx_strlen(i8*) #1

declare dso_local i64 @ngx_strncasecmp(i8*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ngx_rtmp_play_next_entry(%struct.TYPE_35__*, %struct.TYPE_36__*) #1

declare dso_local i32 @next_play(%struct.TYPE_35__*, %struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
