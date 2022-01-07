; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_read_moov_atom.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_read_moov_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, i64, i32, i32, i32*, i32*, i32*, i32*, %struct.TYPE_19__, %struct.TYPE_22__, %struct.TYPE_18__, i64, %struct.TYPE_14__*, %struct.TYPE_17__, i32, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i32, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_22__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_21__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mp4 moov atom\00", align 1
@NGX_DECLINED = common dso_local global i32 0, align 4
@ngx_http_mp4_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"\22%s\22 mp4 moov atom is too large:%uL, you may want to increase mp4_max_buffer_size\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_MP4_MOOV_BUFFER_EXCESS = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_mp4_moov_atoms = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"mp4 moov atom done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i64)* @ngx_http_mp4_read_moov_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_mp4_read_moov_atom(%struct.TYPE_20__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ngx_log_debug0(i32 %10, i32 %14, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 16
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %36, i32* %3, align 4
  br label %187

37:                                               ; preds = %30, %25, %2
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 13
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = load i32, i32* @ngx_http_mp4_module, align 4
  %42 = call %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_14__* %40, i32 %41)
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %9, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %37
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load i32, i32* @NGX_LOG_ERR, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 9
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 9
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @ngx_log_error(i32 %55, i32 %59, i32 0, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %64, i64 %65)
  %67 = load i32, i32* @NGX_ERROR, align 4
  store i32 %67, i32* %3, align 4
  br label %187

68:                                               ; preds = %48
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 13
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 7
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @ngx_pfree(i32 %73, i32* %76)
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 7
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 6
  store i32* null, i32** %81, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 5
  store i32* null, i32** %83, align 8
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @NGX_HTTP_MP4_MOOV_BUFFER_EXCESS, align 8
  %86 = load i64, i64* %7, align 8
  %87 = mul i64 %85, %86
  %88 = add i64 %84, %87
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %68, %37
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @ngx_http_mp4_read(%struct.TYPE_20__* %92, i64 %93)
  %95 = load i64, i64* @NGX_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @NGX_ERROR, align 4
  store i32 %98, i32* %3, align 4
  br label %187

99:                                               ; preds = %91
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 15
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 14
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 3
  store i32* %101, i32** %104, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 14
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  store i32 4, i32* %107, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 14
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  store i32 2, i32* %110, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 13
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 14
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  store i32 %115, i32* %118, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 10
  store %struct.TYPE_22__* %120, %struct.TYPE_22__** %8, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 12
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 12
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 10
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 11
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  store %struct.TYPE_22__* %135, %struct.TYPE_22__** %138, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %140 = load i32, i32* @ngx_http_mp4_moov_atoms, align 4
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @ngx_http_mp4_read_atom(%struct.TYPE_20__* %139, i32 %140, i64 %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @ngx_log_debug0(i32 %143, i32 %147, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i64, i64* %7, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %179

151:                                              ; preds = %99
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 6
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 8
  store i32* %154, i32** %156, align 8
  %157 = load i64, i64* @NGX_HTTP_MP4_MOOV_BUFFER_EXCESS, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 8
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = icmp ugt i32* %166, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %151
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 7
  store i32* null, i32** %173, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 6
  store i32* null, i32** %175, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 5
  store i32* null, i32** %177, align 8
  br label %178

178:                                              ; preds = %171, %151
  br label %185

179:                                              ; preds = %99
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %179, %178
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %185, %97, %54, %35
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @ngx_pfree(i32, i32*) #1

declare dso_local i64 @ngx_http_mp4_read(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @ngx_http_mp4_read_atom(%struct.TYPE_20__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
