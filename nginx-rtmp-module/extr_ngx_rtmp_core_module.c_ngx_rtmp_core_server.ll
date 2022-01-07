; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_core_module.c_ngx_rtmp_core_server.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_core_module.c_ngx_rtmp_core_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8* (%struct.TYPE_22__*)*, i8* (%struct.TYPE_22__*)* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__**, %struct.TYPE_18__**, i8** }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_16__ = type { %struct.TYPE_21__** }
%struct.TYPE_15__ = type { i64 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_rtmp_max_module = common dso_local global i32 0, align 4
@ngx_modules = common dso_local global %struct.TYPE_21__** null, align 8
@NGX_RTMP_MODULE = common dso_local global i64 0, align 8
@ngx_rtmp_core_module = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@NGX_RTMP_SRV_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_22__*, i32*, i8*)* @ngx_rtmp_core_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_core_server(%struct.TYPE_22__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca %struct.TYPE_21__**, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_18__**, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @ngx_pcalloc(i32 %21, i32 24)
  %23 = bitcast i8* %22 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %14, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %25 = icmp eq %struct.TYPE_20__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %27, i8** %4, align 8
  br label %196

28:                                               ; preds = %3
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %15, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %33, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  store %struct.TYPE_19__** %34, %struct.TYPE_19__*** %36, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ngx_rtmp_max_module, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 8, %41
  %43 = trunc i64 %42 to i32
  %44 = call i8* @ngx_pcalloc(i32 %39, i32 %43)
  %45 = bitcast i8* %44 to %struct.TYPE_18__**
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  store %struct.TYPE_18__** %45, %struct.TYPE_18__*** %47, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %49, align 8
  %51 = icmp eq %struct.TYPE_18__** %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %28
  %53 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %53, i8** %4, align 8
  br label %196

54:                                               ; preds = %28
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ngx_rtmp_max_module, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 8, %59
  %61 = trunc i64 %60 to i32
  %62 = call i8* @ngx_pcalloc(i32 %57, i32 %61)
  %63 = bitcast i8* %62 to i8**
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  store i8** %63, i8*** %65, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  %68 = load i8**, i8*** %67, align 8
  %69 = icmp eq i8** %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %71, i8** %4, align 8
  br label %196

72:                                               ; preds = %54
  %73 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @ngx_modules, align 8
  store %struct.TYPE_21__** %73, %struct.TYPE_21__*** %12, align 8
  store i64 0, i64* %10, align 8
  br label %74

74:                                               ; preds = %152, %72
  %75 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %12, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %75, i64 %76
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = icmp ne %struct.TYPE_21__* %78, null
  br i1 %79, label %80, label %155

80:                                               ; preds = %74
  %81 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %12, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %81, i64 %82
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NGX_RTMP_MODULE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %152

90:                                               ; preds = %80
  %91 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %12, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %91, i64 %92
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  store %struct.TYPE_17__* %96, %struct.TYPE_17__** %13, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i8* (%struct.TYPE_22__*)*, i8* (%struct.TYPE_22__*)** %98, align 8
  %100 = icmp ne i8* (%struct.TYPE_22__*)* %99, null
  br i1 %100, label %101, label %124

101:                                              ; preds = %90
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load i8* (%struct.TYPE_22__*)*, i8* (%struct.TYPE_22__*)** %103, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %106 = call i8* %104(%struct.TYPE_22__* %105)
  store i8* %106, i8** %9, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %110, i8** %4, align 8
  br label %196

111:                                              ; preds = %101
  %112 = load i8*, i8** %9, align 8
  %113 = bitcast i8* %112 to %struct.TYPE_18__*
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %115, align 8
  %117 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %12, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %117, i64 %118
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %116, i64 %122
  store %struct.TYPE_18__* %113, %struct.TYPE_18__** %123, align 8
  br label %124

124:                                              ; preds = %111, %90
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i8* (%struct.TYPE_22__*)*, i8* (%struct.TYPE_22__*)** %126, align 8
  %128 = icmp ne i8* (%struct.TYPE_22__*)* %127, null
  br i1 %128, label %129, label %151

129:                                              ; preds = %124
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i8* (%struct.TYPE_22__*)*, i8* (%struct.TYPE_22__*)** %131, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %134 = call i8* %132(%struct.TYPE_22__* %133)
  store i8* %134, i8** %9, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %138, i8** %4, align 8
  br label %196

139:                                              ; preds = %129
  %140 = load i8*, i8** %9, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 2
  %143 = load i8**, i8*** %142, align 8
  %144 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %12, align 8
  %145 = load i64, i64* %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %144, i64 %145
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i8*, i8** %143, i64 %149
  store i8* %140, i8** %150, align 8
  br label %151

151:                                              ; preds = %139, %124
  br label %152

152:                                              ; preds = %151, %89
  %153 = load i64, i64* %10, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %10, align 8
  br label %74

155:                                              ; preds = %74
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %157, align 8
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ngx_rtmp_core_module, i32 0, i32 0), align 8
  %160 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %158, i64 %159
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  store %struct.TYPE_18__* %161, %struct.TYPE_18__** %16, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  store %struct.TYPE_20__* %162, %struct.TYPE_20__** %164, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %166, align 8
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ngx_rtmp_core_module, i32 0, i32 0), align 8
  %169 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %167, i64 %168
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  store %struct.TYPE_19__* %170, %struct.TYPE_19__** %18, align 8
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = call %struct.TYPE_18__** @ngx_array_push(i32* %172)
  store %struct.TYPE_18__** %173, %struct.TYPE_18__*** %17, align 8
  %174 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %17, align 8
  %175 = icmp eq %struct.TYPE_18__** %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %155
  %177 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %177, i8** %4, align 8
  br label %196

178:                                              ; preds = %155
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %180 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %17, align 8
  store %struct.TYPE_18__* %179, %struct.TYPE_18__** %180, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %182 = bitcast %struct.TYPE_22__* %11 to i8*
  %183 = bitcast %struct.TYPE_22__* %181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %182, i8* align 8 %183, i64 32, i1 false)
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 1
  store %struct.TYPE_20__* %184, %struct.TYPE_20__** %186, align 8
  %187 = load i32, i32* @NGX_RTMP_SRV_CONF, align 4
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %191 = call i8* @ngx_conf_parse(%struct.TYPE_22__* %190, i32* null)
  store i8* %191, i8** %8, align 8
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %193 = bitcast %struct.TYPE_22__* %192 to i8*
  %194 = bitcast %struct.TYPE_22__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %193, i8* align 8 %194, i64 32, i1 false)
  %195 = load i8*, i8** %8, align 8
  store i8* %195, i8** %4, align 8
  br label %196

196:                                              ; preds = %178, %176, %137, %109, %70, %52, %26
  %197 = load i8*, i8** %4, align 8
  ret i8* %197
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_18__** @ngx_array_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_22__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
