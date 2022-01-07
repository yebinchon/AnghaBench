; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_index_module.c_ngx_http_index_set_index.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_index_module.c_ngx_http_index_set_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, i64 }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_18__ = type { i32*, i32*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i8* }
%struct.TYPE_17__ = type { i64, i32, i32, i32**, i32**, %struct.TYPE_16__*, %struct.TYPE_20__* }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"only the last index in \22index\22 directive should be absolute\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"index \22%V\22 in \22index\22 directive is invalid\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_20__*, i32*, i8*)* @ngx_http_index_set_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_index_set_index(%struct.TYPE_20__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %8, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32* @ngx_array_create(i32 %23, i32 2, i32 32)
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %32, i8** %4, align 8
  br label %182

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %9, align 8
  store i64 1, i64* %10, align 8
  br label %40

40:                                               ; preds = %177, %34
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %41, %46
  br i1 %47, label %48, label %180

48:                                               ; preds = %40
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %58, label %71

58:                                               ; preds = %48
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 %64, 1
  %66 = icmp ne i64 %59, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32, i32* @NGX_LOG_WARN, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, ...) @ngx_conf_log_error(i32 %68, %struct.TYPE_20__* %69, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %58, %48
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load i32, i32* @NGX_LOG_EMERG, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i64 1
  %83 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, ...) @ngx_conf_log_error(i32 %79, %struct.TYPE_20__* %80, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %82)
  %84 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %84, i8** %4, align 8
  br label %182

85:                                               ; preds = %71
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call %struct.TYPE_18__* @ngx_array_push(i32* %88)
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %12, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %91 = icmp eq %struct.TYPE_18__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %93, i8** %4, align 8
  br label %182

94:                                               ; preds = %85
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  store i8* %107, i8** %110, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  store i32* null, i32** %112, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  store i32* null, i32** %114, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i64 %116
  %118 = call i64 @ngx_http_script_variables_count(%struct.TYPE_16__* %117)
  store i64 %118, i64* %11, align 8
  %119 = load i64, i64* %11, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %153

121:                                              ; preds = %94
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %124, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %121
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %130, %121
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 47
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %177

147:                                              ; preds = %137
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %150, align 8
  br label %177

153:                                              ; preds = %94
  %154 = call i32 @ngx_memzero(%struct.TYPE_17__* %13, i32 48)
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 6
  store %struct.TYPE_20__* %155, %struct.TYPE_20__** %156, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 5
  store %struct.TYPE_16__* %159, %struct.TYPE_16__** %160, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 4
  store i32** %162, i32*** %163, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  store i32** %165, i32*** %166, align 8
  %167 = load i64, i64* %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  store i64 %167, i64* %168, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  store i32 1, i32* %169, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  store i32 1, i32* %170, align 4
  %171 = call i64 @ngx_http_script_compile(%struct.TYPE_17__* %13)
  %172 = load i64, i64* @NGX_OK, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %153
  %175 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %175, i8** %4, align 8
  br label %182

176:                                              ; preds = %153
  br label %177

177:                                              ; preds = %176, %147, %146
  %178 = load i64, i64* %10, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %10, align 8
  br label %40

180:                                              ; preds = %40
  %181 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %181, i8** %4, align 8
  br label %182

182:                                              ; preds = %180, %174, %92, %78, %31
  %183 = load i8*, i8** %4, align 8
  ret i8* %183
}

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_18__* @ngx_array_push(i32*) #1

declare dso_local i64 @ngx_http_script_variables_count(%struct.TYPE_16__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
