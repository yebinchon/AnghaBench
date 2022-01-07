; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_log_module.c_ngx_rtmp_log_set_log.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_log_module.c_ngx_rtmp_log_set_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_19__*, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_26__ = type { i32, i32* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_25__*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_rtmp_log_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"combined\00", align 1
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"unknown log format \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_27__*, i32*, i8*)* @ngx_rtmp_log_set_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_log_set_log(%struct.TYPE_27__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %8, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %12, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i64 1
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ngx_strcmp(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %31, i8** %4, align 8
  br label %157

32:                                               ; preds = %3
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @ngx_array_create(i32 %40, i32 2, i32 16)
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %49, i8** %4, align 8
  br label %157

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %32
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call %struct.TYPE_23__* @ngx_array_push(i32* %54)
  store %struct.TYPE_23__* %55, %struct.TYPE_23__** %11, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %57 = icmp eq %struct.TYPE_23__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %59, i8** %4, align 8
  br label %157

60:                                               ; preds = %51
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %62 = call i32 @ngx_memzero(%struct.TYPE_23__* %61, i32 16)
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %64 = load i32, i32* @ngx_rtmp_log_module, align 4
  %65 = call %struct.TYPE_24__* @ngx_rtmp_conf_get_module_main_conf(%struct.TYPE_27__* %63, i32 %64)
  store %struct.TYPE_24__* %65, %struct.TYPE_24__** %9, align 8
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i64 1
  %71 = call i32* @ngx_conf_open_file(i32 %68, %struct.TYPE_22__* %70)
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 1
  store i32* %71, i32** %73, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %79, i8** %4, align 8
  br label %157

80:                                               ; preds = %60
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = call i32 @ngx_str_set(%struct.TYPE_22__* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  br label %104

91:                                               ; preds = %80
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i64 2
  %94 = bitcast %struct.TYPE_22__* %13 to i8*
  %95 = bitcast %struct.TYPE_22__* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 16, i1 false)
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @ngx_strcmp(i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %91
  br label %104

104:                                              ; preds = %103, %87
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %107, align 8
  store %struct.TYPE_25__* %108, %struct.TYPE_25__** %10, align 8
  store i64 0, i64* %14, align 8
  br label %109

109:                                              ; preds = %140, %104
  %110 = load i64, i64* %14, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %110, %114
  br i1 %115, label %116, label %145

116:                                              ; preds = %109
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %120, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %116
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @ngx_strncasecmp(i32 %128, i32 %130, i64 %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %124
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 0
  store %struct.TYPE_25__* %136, %struct.TYPE_25__** %138, align 8
  br label %145

139:                                              ; preds = %124, %116
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %14, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %14, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 1
  store %struct.TYPE_25__* %144, %struct.TYPE_25__** %10, align 8
  br label %109

145:                                              ; preds = %135, %109
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %147, align 8
  %149 = icmp eq %struct.TYPE_25__* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i32, i32* @NGX_LOG_WARN, align 4
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %153 = call i32 @ngx_conf_log_error(i32 %151, %struct.TYPE_27__* %152, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_22__* %13)
  %154 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %154, i8** %4, align 8
  br label %157

155:                                              ; preds = %145
  %156 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %156, i8** %4, align 8
  br label %157

157:                                              ; preds = %155, %150, %78, %58, %48, %28
  %158 = load i8*, i8** %4, align 8
  ret i8* %158
}

declare dso_local i64 @ngx_strcmp(i32, i8*) #1

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_array_push(i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_rtmp_conf_get_module_main_conf(%struct.TYPE_27__*, i32) #1

declare dso_local i32* @ngx_conf_open_file(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_22__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_strncasecmp(i32, i32, i64) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_27__*, i32, i8*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
