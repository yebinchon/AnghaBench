; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream.c_ngx_stream_optimize_servers.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream.c_ngx_stream_optimize_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_31__*, i32, i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_36__** }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_34__*, %struct.TYPE_35__*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_32__, i32, i32, i32, i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_32__ = type { i32, i32* }

@ngx_stream_cmp_conf_addrs = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_stream_init_connection = common dso_local global i32 0, align 4
@ngx_stream_core_module = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@ngx_accept_log_error = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_27__*, %struct.TYPE_28__*)* @ngx_stream_optimize_servers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_optimize_servers(%struct.TYPE_27__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca %struct.TYPE_37__*, align 8
  %13 = alloca %struct.TYPE_38__*, align 8
  %14 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  store %struct.TYPE_37__* %17, %struct.TYPE_37__** %12, align 8
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %221, %2
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %224

24:                                               ; preds = %18
  %25 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_38__*, %struct.TYPE_38__** %29, align 8
  %31 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @ngx_stream_cmp_conf_addrs, align 4
  %38 = call i32 @ngx_sort(%struct.TYPE_38__* %30, i64 %36, i32 80, i32 %37)
  %39 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_38__*, %struct.TYPE_38__** %43, align 8
  store %struct.TYPE_38__* %44, %struct.TYPE_38__** %13, align 8
  %45 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %24
  %60 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  store i64 1, i64* %9, align 8
  br label %67

66:                                               ; preds = %24
  store i64 0, i64* %9, align 8
  br label %67

67:                                               ; preds = %66, %59
  store i64 0, i64* %6, align 8
  br label %68

68:                                               ; preds = %215, %83, %67
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %220

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %68

86:                                               ; preds = %75, %72
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %88 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %91, i32 0, i32 14
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.TYPE_26__* @ngx_create_listening(%struct.TYPE_27__* %87, i32 %93, i32 %99)
  store %struct.TYPE_26__* %100, %struct.TYPE_26__** %10, align 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %102 = icmp eq %struct.TYPE_26__* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %86
  %104 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %104, i8** %3, align 8
  br label %226

105:                                              ; preds = %86
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load i32, i32* @ngx_stream_init_connection, align 4
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 18
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 1
  store i32 256, i32* %112, align 4
  %113 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 12
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 17
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 11
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %125, align 8
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @ngx_stream_core_module, i32 0, i32 0), align 8
  %128 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %126, i64 %127
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %128, align 8
  store %struct.TYPE_36__* %129, %struct.TYPE_36__** %14, align 8
  %130 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 16
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 15
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 14
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %138, i32 0, i32 1
  store i32* %136, i32** %139, align 8
  %140 = load i32, i32* @ngx_accept_log_error, align 4
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 14
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  %144 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %145 = load i64, i64* %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 13
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %153 = load i64, i64* %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 12
  store i32 %157, i32* %159, align 4
  %160 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %161 = load i64, i64* %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 11
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %169 = load i64, i64* %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %171, i32 0, i32 7
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 10
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %177 = load i64, i64* %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 9
  store i32 %181, i32* %183, align 4
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call %struct.TYPE_35__* @ngx_palloc(i32 %186, i32 8)
  store %struct.TYPE_35__* %187, %struct.TYPE_35__** %11, align 8
  %188 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %189 = icmp eq %struct.TYPE_35__* %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %105
  %191 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %191, i8** %3, align 8
  br label %226

192:                                              ; preds = %105
  %193 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 3
  store %struct.TYPE_35__* %193, %struct.TYPE_35__** %195, align 8
  %196 = load i64, i64* %6, align 8
  %197 = add i64 %196, 1
  %198 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_34__*, %struct.TYPE_34__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  switch i32 %204, label %205 [
  ]

205:                                              ; preds = %192
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %207 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %208 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %209 = call i32 @ngx_stream_add_addrs(%struct.TYPE_27__* %206, %struct.TYPE_35__* %207, %struct.TYPE_38__* %208)
  %210 = load i32, i32* @NGX_OK, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %205
  %213 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %213, i8** %3, align 8
  br label %226

214:                                              ; preds = %205
  br label %215

215:                                              ; preds = %214
  %216 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %216, i32 1
  store %struct.TYPE_38__* %217, %struct.TYPE_38__** %13, align 8
  %218 = load i64, i64* %8, align 8
  %219 = add i64 %218, -1
  store i64 %219, i64* %8, align 8
  br label %68

220:                                              ; preds = %68
  br label %221

221:                                              ; preds = %220
  %222 = load i64, i64* %7, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %7, align 8
  br label %18

224:                                              ; preds = %18
  %225 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %225, i8** %3, align 8
  br label %226

226:                                              ; preds = %224, %212, %190, %103
  %227 = load i8*, i8** %3, align 8
  ret i8* %227
}

declare dso_local i32 @ngx_sort(%struct.TYPE_38__*, i64, i32, i32) #1

declare dso_local %struct.TYPE_26__* @ngx_create_listening(%struct.TYPE_27__*, i32, i32) #1

declare dso_local %struct.TYPE_35__* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_stream_add_addrs(%struct.TYPE_27__*, %struct.TYPE_35__*, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
