; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_update_create.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_update_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { i32*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32*, i32*, i64 }
%struct.TYPE_19__ = type { i64, i32* }

@ngx_rtmp_notify_module = common dso_local global i32 0, align 4
@NGX_RTMP_NOTIFY_PUBLISHING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"_publish\00", align 1
@NGX_RTMP_NOTIFY_PLAYING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"_play\00", align 1
@NGX_TIME_T_LEN = common dso_local global i32 0, align 4
@NGX_INT32_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"&call=update\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&time=\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%T\00", align 1
@ngx_cached_time = common dso_local global %struct.TYPE_18__* null, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"&timestamp=\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%D\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"&name=\00", align 1
@NGX_ESCAPE_ARGS = common dso_local global i32 0, align 4
@NGX_RTMP_NOTIFY_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_20__*, i8*, i32*)* @ngx_rtmp_notify_update_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @ngx_rtmp_notify_update_create(%struct.TYPE_20__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %16 = call %struct.TYPE_21__* @ngx_rtmp_get_module_ctx(%struct.TYPE_20__* %14, i32 %15)
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.TYPE_22__* @ngx_alloc_chain_link(i32* %17)
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %8, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %20 = icmp eq %struct.TYPE_22__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %197

22:                                               ; preds = %3
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NGX_RTMP_NOTIFY_PUBLISHING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @ngx_str_set(%struct.TYPE_19__* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %43

31:                                               ; preds = %22
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @NGX_RTMP_NOTIFY_PLAYING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @ngx_str_set(%struct.TYPE_19__* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %42

40:                                               ; preds = %31
  %41 = call i32 @ngx_str_null(%struct.TYPE_19__* %13)
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %45 = icmp ne %struct.TYPE_21__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @ngx_strlen(i32* %49)
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %46
  %53 = phi i64 [ %50, %46 ], [ 0, %51 ]
  store i64 %53, i64* %10, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %55 = icmp ne %struct.TYPE_21__* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @ngx_strlen(i32* %59)
  br label %62

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %56
  %63 = phi i64 [ %60, %56 ], [ 0, %61 ]
  store i64 %63, i64* %11, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 13, %66
  %68 = add i64 %67, 7
  %69 = load i32, i32* @NGX_TIME_T_LEN, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %68, %70
  %72 = add i64 %71, 12
  %73 = load i32, i32* @NGX_INT32_LEN, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %72, %74
  %76 = add i64 %75, 7
  %77 = load i64, i64* %10, align 8
  %78 = mul i64 %77, 3
  %79 = add i64 %76, %78
  %80 = add i64 %79, 1
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = call %struct.TYPE_23__* @ngx_create_temp_buf(i32* %64, i32 %83)
  store %struct.TYPE_23__* %84, %struct.TYPE_23__** %9, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %86 = icmp eq %struct.TYPE_23__* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %62
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %197

88:                                               ; preds = %62
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  store %struct.TYPE_23__* %89, %struct.TYPE_23__** %91, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i8* @ngx_cpymem(i32* %96, i32* bitcast ([13 x i8]* @.str.2 to i32*), i64 12)
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  store i32* %98, i32** %100, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @ngx_cpymem(i32* %103, i32* %105, i64 %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  store i32* %109, i32** %111, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i8* @ngx_cpymem(i32* %114, i32* bitcast ([7 x i8]* @.str.3 to i32*), i64 6)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  store i32* %116, i32** %118, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ngx_cached_time, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %124, %127
  %129 = call i8* @ngx_sprintf(i32* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %128)
  %130 = bitcast i8* %129 to i32*
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  store i32* %130, i32** %132, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i8* @ngx_cpymem(i32* %135, i32* bitcast ([12 x i8]* @.str.5 to i32*), i64 11)
  %137 = bitcast i8* %136 to i32*
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  store i32* %137, i32** %139, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i8* @ngx_sprintf(i32* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 %145)
  %147 = bitcast i8* %146 to i32*
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  store i32* %147, i32** %149, align 8
  %150 = load i64, i64* %10, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %88
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = call i8* @ngx_cpymem(i32* %155, i32* bitcast ([7 x i8]* @.str.7 to i32*), i64 6)
  %157 = bitcast i8* %156 to i32*
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  store i32* %157, i32** %159, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %168 = call i64 @ngx_escape_uri(i32* %162, i32* %165, i64 %166, i32 %167)
  %169 = inttoptr i64 %168 to i32*
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  store i32* %169, i32** %171, align 8
  br label %172

172:                                              ; preds = %152, %88
  %173 = load i64, i64* %11, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %172
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %177, align 8
  store i32 38, i32* %178, align 4
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* %11, align 8
  %187 = call i8* @ngx_cpymem(i32* %182, i32* %185, i64 %186)
  %188 = bitcast i8* %187 to i32*
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  store i32* %188, i32** %190, align 8
  br label %191

191:                                              ; preds = %175, %172
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = load i32, i32* @NGX_RTMP_NOTIFY_UPDATE, align 4
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %196 = call %struct.TYPE_22__* @ngx_rtmp_notify_create_request(%struct.TYPE_20__* %192, i32* %193, i32 %194, %struct.TYPE_22__* %195)
  store %struct.TYPE_22__* %196, %struct.TYPE_22__** %4, align 8
  br label %197

197:                                              ; preds = %191, %87, %21
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %198
}

declare dso_local %struct.TYPE_21__* @ngx_rtmp_get_module_ctx(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_alloc_chain_link(i32*) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @ngx_str_null(%struct.TYPE_19__*) #1

declare dso_local i64 @ngx_strlen(i32*) #1

declare dso_local %struct.TYPE_23__* @ngx_create_temp_buf(i32*, i32) #1

declare dso_local i8* @ngx_cpymem(i32*, i32*, i64) #1

declare dso_local i8* @ngx_sprintf(i32*, i8*, i64) #1

declare dso_local i64 @ngx_escape_uri(i32*, i32*, i64, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_rtmp_notify_create_request(%struct.TYPE_20__*, i32*, i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
