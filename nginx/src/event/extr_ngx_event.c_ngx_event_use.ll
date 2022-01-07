; ModuleID = '/home/carl/AnghaBench/nginx/src/event/extr_ngx_event.c_ngx_event_use.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/extr_ngx_event.c_ngx_event_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__*, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__**, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_21__ = type { i64, i32 }

@NGX_CONF_UNSET_UINT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@ngx_event_core_module = common dso_local global i32 0, align 4
@NGX_EVENT_MODULE = common dso_local global i64 0, align 8
@ngx_process = common dso_local global i64 0, align 8
@NGX_PROCESS_SINGLE = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [212 x i8] c"when the server runs without a master process the \22%V\22 event type must be the same as in previous configuration - \22%s\22 and it cannot be changed on the fly, to change it you need to stop server and start it again\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid event type \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_22__*, i32*, i8*)* @ngx_event_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_event_use(%struct.TYPE_22__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %8, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %162

21:                                               ; preds = %3
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %10, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %21
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @ngx_event_core_module, align 4
  %44 = call %struct.TYPE_21__* @ngx_event_get_conf(i64 %42, i32 %43)
  store %struct.TYPE_21__* %44, %struct.TYPE_21__** %11, align 8
  br label %46

45:                                               ; preds = %21
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %11, align 8
  br label %46

46:                                               ; preds = %45, %35
  store i64 0, i64* %9, align 8
  br label %47

47:                                               ; preds = %152, %46
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %52, i64 %53
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = icmp ne %struct.TYPE_16__* %55, null
  br i1 %56, label %57, label %155

57:                                               ; preds = %47
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %62, i64 %63
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NGX_EVENT_MODULE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %152

71:                                               ; preds = %57
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %76, i64 %77
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  store %struct.TYPE_20__* %81, %struct.TYPE_20__** %12, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %86, %90
  br i1 %91, label %92, label %151

92:                                               ; preds = %71
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @ngx_strcmp(i32 %97, i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %150

104:                                              ; preds = %92
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %109, i64 %110
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = load i64, i64* @ngx_process, align 8
  %125 = load i64, i64* @NGX_PROCESS_SINGLE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %104
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %129 = icmp ne %struct.TYPE_21__* %128, null
  br i1 %129, label %130, label %148

130:                                              ; preds = %127
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %133, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %130
  %139 = load i32, i32* @NGX_LOG_EMERG, align 4
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i64 1
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i32, %struct.TYPE_22__*, i32, i8*, %struct.TYPE_19__*, ...) @ngx_conf_log_error(i32 %139, %struct.TYPE_22__* %140, i32 0, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__* %142, i32 %145)
  %147 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %147, i8** %4, align 8
  br label %162

148:                                              ; preds = %130, %127, %104
  %149 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %149, i8** %4, align 8
  br label %162

150:                                              ; preds = %92
  br label %151

151:                                              ; preds = %150, %71
  br label %152

152:                                              ; preds = %151, %70
  %153 = load i64, i64* %9, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %9, align 8
  br label %47

155:                                              ; preds = %47
  %156 = load i32, i32* @NGX_LOG_EMERG, align 4
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i64 1
  %160 = call i32 (i32, %struct.TYPE_22__*, i32, i8*, %struct.TYPE_19__*, ...) @ngx_conf_log_error(i32 %156, %struct.TYPE_22__* %157, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_19__* %159)
  %161 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %161, i8** %4, align 8
  br label %162

162:                                              ; preds = %155, %148, %138, %20
  %163 = load i8*, i8** %4, align 8
  ret i8* %163
}

declare dso_local %struct.TYPE_21__* @ngx_event_get_conf(i64, i32) #1

declare dso_local i64 @ngx_strcmp(i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_22__*, i32, i8*, %struct.TYPE_19__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
