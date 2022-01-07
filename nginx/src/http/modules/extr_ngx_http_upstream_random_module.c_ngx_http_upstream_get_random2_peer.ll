; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_upstream_random_module.c_ngx_http_upstream_get_random2_peer.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_upstream_random_module.c_ngx_http_upstream_get_random2_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, i32, i32, i32*, i64, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_20__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i64*, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"get random2 peer, try: %ui\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*)* @ngx_http_upstream_get_random2_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_upstream_get_random2_peer(%struct.TYPE_17__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %6, align 8
  %18 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ngx_log_debug1(i32 %18, i32 %21, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %15, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %14, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %32 = call i32 @ngx_http_upstream_rr_peers_wlock(%struct.TYPE_18__* %31)
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 20
  br i1 %36, label %42, label %37

37:                                               ; preds = %2
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37, %2
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %44 = call i32 @ngx_http_upstream_rr_peers_unlock(%struct.TYPE_18__* %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %47 = call i32 @ngx_http_upstream_get_round_robin_peer(%struct.TYPE_17__* %45, %struct.TYPE_20__* %46)
  store i32 %47, i32* %3, align 4
  br label %221

48:                                               ; preds = %37
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 3
  store i32* null, i32** %52, align 8
  %53 = call i64 (...) @ngx_time()
  store i64 %53, i64* %7, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %13, align 8
  br label %54

54:                                               ; preds = %173, %48
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %57 = call i64 @ngx_http_upstream_peek_random_peer(%struct.TYPE_18__* %55, %struct.TYPE_21__* %56)
  store i64 %57, i64* %9, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  store %struct.TYPE_19__* %66, %struct.TYPE_19__** %12, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %69 = icmp eq %struct.TYPE_19__* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %161

71:                                               ; preds = %54
  %72 = load i64, i64* %9, align 8
  %73 = udiv i64 %72, 64
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = urem i64 %74, 64
  %76 = shl i64 1, %75
  store i64 %76, i64* %8, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  br label %161

87:                                               ; preds = %71
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 10
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %161

93:                                               ; preds = %87
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %93
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sge i64 %101, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %98
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %107, %110
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp sle i64 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %161

117:                                              ; preds = %106, %98, %93
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = icmp sge i32 %125, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %161

131:                                              ; preds = %122, %117
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %133 = icmp ne %struct.TYPE_19__* %132, null
  br i1 %133, label %134, label %158

134:                                              ; preds = %131
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %137, %140
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %144, %147
  %149 = icmp sgt i32 %141, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %134
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %151, %struct.TYPE_19__** %12, align 8
  %152 = load i64, i64* %11, align 8
  %153 = udiv i64 %152, 64
  store i64 %153, i64* %10, align 8
  %154 = load i64, i64* %11, align 8
  %155 = urem i64 %154, 64
  %156 = shl i64 1, %155
  store i64 %156, i64* %8, align 8
  br label %157

157:                                              ; preds = %150, %134
  br label %174

158:                                              ; preds = %131
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %159, %struct.TYPE_19__** %13, align 8
  %160 = load i64, i64* %9, align 8
  store i64 %160, i64* %11, align 8
  br label %161

161:                                              ; preds = %158, %130, %116, %92, %86, %70
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 8
  %166 = icmp sgt i32 %165, 20
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %169 = call i32 @ngx_http_upstream_rr_peers_unlock(%struct.TYPE_18__* %168)
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %172 = call i32 @ngx_http_upstream_get_round_robin_peer(%struct.TYPE_17__* %170, %struct.TYPE_20__* %171)
  store i32 %172, i32* %3, align 4
  br label %221

173:                                              ; preds = %161
  br label %54

174:                                              ; preds = %157
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 1
  store %struct.TYPE_19__* %175, %struct.TYPE_19__** %177, align 8
  %178 = load i64, i64* %7, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = sub nsw i64 %178, %181
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp sgt i64 %182, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %174
  %188 = load i64, i64* %7, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %187, %174
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 9
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 4
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 8
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 7
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  store i32* %203, i32** %205, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %211 = call i32 @ngx_http_upstream_rr_peers_unlock(%struct.TYPE_18__* %210)
  %212 = load i64, i64* %8, align 8
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = load i64, i64* %10, align 8
  %217 = getelementptr inbounds i64, i64* %215, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = or i64 %218, %212
  store i64 %219, i64* %217, align 8
  %220 = load i32, i32* @NGX_OK, align 4
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %191, %167, %42
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_http_upstream_rr_peers_wlock(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_http_upstream_rr_peers_unlock(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_http_upstream_get_round_robin_peer(%struct.TYPE_17__*, %struct.TYPE_20__*) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local i64 @ngx_http_upstream_peek_random_peer(%struct.TYPE_18__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
