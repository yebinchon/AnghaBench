; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream_random_module.c_ngx_stream_upstream_get_random_peer.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream_random_module.c_ngx_stream_upstream_get_random_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32*, i32, i32, i32*, i64, i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_23__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i64 }
%struct.TYPE_23__ = type { i64*, %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }

@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"get random peer, try: %ui\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i8*)* @ngx_stream_upstream_get_random_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_upstream_get_random_peer(%struct.TYPE_25__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %6, align 8
  %16 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ngx_log_debug1(i32 %16, i32 %19, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 2
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %13, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %12, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %30 = call i32 @ngx_stream_upstream_rr_peers_rlock(%struct.TYPE_21__* %29)
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 20
  br i1 %34, label %40, label %35

35:                                               ; preds = %2
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35, %2
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %42 = call i32 @ngx_stream_upstream_rr_peers_unlock(%struct.TYPE_21__* %41)
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %45 = call i32 @ngx_stream_upstream_get_round_robin_peer(%struct.TYPE_25__* %43, %struct.TYPE_23__* %44)
  store i32 %45, i32* %3, align 4
  br label %200

46:                                               ; preds = %35
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = call i64 (...) @ngx_time()
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %149, %46
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %55 = call i64 @ngx_stream_upstream_peek_random_peer(%struct.TYPE_21__* %53, %struct.TYPE_24__* %54)
  store i64 %55, i64* %9, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  store %struct.TYPE_22__* %64, %struct.TYPE_22__** %11, align 8
  %65 = load i64, i64* %9, align 8
  %66 = udiv i64 %65, 64
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %9, align 8
  %68 = urem i64 %67, 64
  %69 = shl i64 1, %68
  store i64 %69, i64* %8, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %52
  br label %137

80:                                               ; preds = %52
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %83 = call i32 @ngx_stream_upstream_rr_peer_lock(%struct.TYPE_21__* %81, %struct.TYPE_22__* %82)
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %91 = call i32 @ngx_stream_upstream_rr_peer_unlock(%struct.TYPE_21__* %89, %struct.TYPE_22__* %90)
  br label %137

92:                                               ; preds = %80
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sge i64 %100, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %97
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp sle i64 %110, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %105
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %118 = call i32 @ngx_stream_upstream_rr_peer_unlock(%struct.TYPE_21__* %116, %struct.TYPE_22__* %117)
  br label %137

119:                                              ; preds = %105, %97, %92
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp sge i64 %127, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %135 = call i32 @ngx_stream_upstream_rr_peer_unlock(%struct.TYPE_21__* %133, %struct.TYPE_22__* %134)
  br label %137

136:                                              ; preds = %124, %119
  br label %150

137:                                              ; preds = %132, %115, %88, %79
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  %142 = icmp sgt i32 %141, 20
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %145 = call i32 @ngx_stream_upstream_rr_peers_unlock(%struct.TYPE_21__* %144)
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %148 = call i32 @ngx_stream_upstream_get_round_robin_peer(%struct.TYPE_25__* %146, %struct.TYPE_23__* %147)
  store i32 %148, i32* %3, align 4
  br label %200

149:                                              ; preds = %137
  br label %52

150:                                              ; preds = %136
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 1
  store %struct.TYPE_22__* %151, %struct.TYPE_22__** %153, align 8
  %154 = load i64, i64* %7, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %154, %157
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp sgt i64 %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %150
  %164 = load i64, i64* %7, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 2
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %163, %150
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 6
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 0
  store i32* %179, i32** %181, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %183, align 8
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %188 = call i32 @ngx_stream_upstream_rr_peer_unlock(%struct.TYPE_21__* %186, %struct.TYPE_22__* %187)
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %190 = call i32 @ngx_stream_upstream_rr_peers_unlock(%struct.TYPE_21__* %189)
  %191 = load i64, i64* %8, align 8
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* %10, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = or i64 %197, %191
  store i64 %198, i64* %196, align 8
  %199 = load i32, i32* @NGX_OK, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %167, %143, %40
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_stream_upstream_rr_peers_rlock(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_stream_upstream_rr_peers_unlock(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_stream_upstream_get_round_robin_peer(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local i64 @ngx_stream_upstream_peek_random_peer(%struct.TYPE_21__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ngx_stream_upstream_rr_peer_lock(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ngx_stream_upstream_rr_peer_unlock(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
