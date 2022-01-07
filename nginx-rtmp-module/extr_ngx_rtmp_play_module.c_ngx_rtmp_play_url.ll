; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_url.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i32, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s in url \22%V\22\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_22__*, i32*, i8*)* @ngx_rtmp_play_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_play_url(%struct.TYPE_22__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__**, align 8
  %11 = alloca %struct.TYPE_19__, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %8, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @ngx_array_init(%struct.TYPE_16__* %25, i32 %28, i32 1, i32 8)
  %30 = load i64, i64* @NGX_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %33, i8** %4, align 8
  br label %172

34:                                               ; preds = %23, %3
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %15, align 8
  store i64 1, i64* %14, align 8
  br label %40

40:                                               ; preds = %167, %34
  %41 = load i64, i64* %14, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %41, %46
  br i1 %47, label %48, label %170

48:                                               ; preds = %40
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = call %struct.TYPE_20__** @ngx_array_push(%struct.TYPE_16__* %50)
  store %struct.TYPE_20__** %51, %struct.TYPE_20__*** %10, align 8
  %52 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %10, align 8
  %53 = icmp eq %struct.TYPE_20__** %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %55, i8** %4, align 8
  br label %172

56:                                               ; preds = %48
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @ngx_pcalloc(i32 %59, i32 16)
  %61 = bitcast i8* %60 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %61, %struct.TYPE_20__** %9, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %63 = icmp eq %struct.TYPE_20__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %65, i8** %4, align 8
  br label %172

66:                                               ; preds = %56
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %68 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %10, align 8
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %68, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %70 = load i64, i64* %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ngx_strncasecmp(i32 %73, i32* bitcast ([8 x i8]* @.str to i32*), i32 7)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %66
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.TYPE_19__* @ngx_palloc(i32 %79, i32 8)
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %82, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = icmp eq %struct.TYPE_19__* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %88, i8** %4, align 8
  br label %172

89:                                               ; preds = %76
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %94 = load i64, i64* %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i64 %94
  %96 = bitcast %struct.TYPE_19__* %92 to i8*
  %97 = bitcast %struct.TYPE_19__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 8, i1 false)
  br label %167

98:                                               ; preds = %66
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %100 = load i64, i64* %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i64 %100
  %102 = bitcast %struct.TYPE_19__* %11 to i8*
  %103 = bitcast %struct.TYPE_19__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 8, i1 false)
  store i64 7, i64* %13, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add i64 %107, %104
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  %110 = load i64, i64* %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = sub i64 %113, %110
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @ngx_pcalloc(i32 %118, i32 24)
  %120 = bitcast i8* %119 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %120, %struct.TYPE_18__** %12, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %122 = icmp eq %struct.TYPE_18__* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %98
  %124 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %124, i8** %4, align 8
  br label %172

125:                                              ; preds = %98
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  store i32 80, i32* %137, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %144 = call i64 @ngx_parse_url(i32 %142, %struct.TYPE_18__* %143)
  %145 = load i64, i64* @NGX_OK, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %163

147:                                              ; preds = %125
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load i32, i32* @NGX_LOG_EMERG, align 4
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 2
  %160 = call i32 @ngx_conf_log_error(i32 %153, %struct.TYPE_22__* %154, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %157, %struct.TYPE_15__* %159)
  br label %161

161:                                              ; preds = %152, %147
  %162 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %162, i8** %4, align 8
  br label %172

163:                                              ; preds = %125
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  store %struct.TYPE_18__* %164, %struct.TYPE_18__** %166, align 8
  br label %167

167:                                              ; preds = %163, %89
  %168 = load i64, i64* %14, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %14, align 8
  br label %40

170:                                              ; preds = %40
  %171 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %171, i8** %4, align 8
  br label %172

172:                                              ; preds = %170, %161, %123, %87, %64, %54, %32
  %173 = load i8*, i8** %4, align 8
  ret i8* %173
}

declare dso_local i64 @ngx_array_init(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_20__** @ngx_array_push(%struct.TYPE_16__*) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_palloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_22__*, i32, i8*, i64, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
