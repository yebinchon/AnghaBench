; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_conf.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_21__, %struct.TYPE_21__, %struct.TYPE_16__, i32 }
%struct.TYPE_18__ = type { i32 }

@ngx_rtmp_exec_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_UNSET_UINT = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_19__*, %struct.TYPE_20__*, i8*)* @ngx_rtmp_exec_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_exec_conf(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__, align 4
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  %24 = bitcast i8* %23 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %14, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = load i32, i32* @ngx_rtmp_exec_module, align 4
  %27 = call %struct.TYPE_18__* @ngx_rtmp_conf_get_module_app_conf(%struct.TYPE_19__* %25, i32 %26)
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %16, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @ngx_array_init(%struct.TYPE_21__* %33, i32 %36, i64 1, i32 32)
  %38 = load i64, i64* @NGX_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %41, i8** %4, align 8
  br label %172

42:                                               ; preds = %32, %3
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %12, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %49 = call i8* @ngx_array_push(%struct.TYPE_21__* %48)
  %50 = bitcast i8* %49 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %15, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %52 = icmp eq %struct.TYPE_17__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %54, i8** %4, align 8
  br label %172

55:                                               ; preds = %42
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %57 = call i32 @ngx_memzero(%struct.TYPE_17__* %56, i32 32)
  %58 = load i32, i32* @NGX_CONF_UNSET_UINT, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i64 1
  %65 = bitcast %struct.TYPE_16__* %62 to i8*
  %66 = bitcast %struct.TYPE_16__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 4 %66, i64 8, i1 false)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @ngx_array_init(%struct.TYPE_21__* %68, i32 %71, i64 1, i32 8)
  %73 = load i64, i64* @NGX_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  %76 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %76, i8** %4, align 8
  br label %172

77:                                               ; preds = %55
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %85, i8** %4, align 8
  br label %172

86:                                               ; preds = %77
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %10, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i64 @ngx_array_init(%struct.TYPE_21__* %95, i32 %98, i64 %99, i32 8)
  %101 = load i64, i64* @NGX_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %86
  %104 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %104, i8** %4, align 8
  br label %172

105:                                              ; preds = %86
  store i64 2, i64* %9, align 8
  br label %106

106:                                              ; preds = %167, %105
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = icmp ult i64 %107, %113
  br i1 %114, label %115, label %170

115:                                              ; preds = %106
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i64 %117
  %119 = bitcast %struct.TYPE_16__* %13 to i8*
  %120 = bitcast %struct.TYPE_16__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 8, i1 false)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %154

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp sge i32 %127, 5
  br i1 %128, label %129, label %153

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @ngx_strncmp(i32 %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %129
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = call i8* @ngx_array_push(%struct.TYPE_21__* %136)
  %138 = bitcast i8* %137 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %138, %struct.TYPE_16__** %11, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %140 = icmp eq %struct.TYPE_16__* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %142, i8** %4, align 8
  br label %172

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 5
  store i32 %146, i32* %144, align 4
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 5
  store i32 %149, i32* %147, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %151 = bitcast %struct.TYPE_16__* %150 to i8*
  %152 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %151, i8* align 4 %152, i64 8, i1 false)
  br label %167

153:                                              ; preds = %129, %125
  br label %154

154:                                              ; preds = %153, %115
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = call i8* @ngx_array_push(%struct.TYPE_21__* %156)
  %158 = bitcast i8* %157 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %158, %struct.TYPE_16__** %11, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %160 = icmp eq %struct.TYPE_16__* %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %162, i8** %4, align 8
  br label %172

163:                                              ; preds = %154
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %165 = bitcast %struct.TYPE_16__* %164 to i8*
  %166 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 8, i1 false)
  br label %167

167:                                              ; preds = %163, %143
  %168 = load i64, i64* %9, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %9, align 8
  br label %106

170:                                              ; preds = %106
  %171 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %171, i8** %4, align 8
  br label %172

172:                                              ; preds = %170, %161, %141, %103, %84, %75, %53, %40
  %173 = load i8*, i8** %4, align 8
  ret i8* %173
}

declare dso_local %struct.TYPE_18__* @ngx_rtmp_conf_get_module_app_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_21__*, i32, i64, i32) #1

declare dso_local i8* @ngx_array_push(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_17__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
