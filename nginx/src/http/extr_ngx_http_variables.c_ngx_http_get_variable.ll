; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_variables.c_ngx_http_get_variable.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_variables.c_ngx_http_get_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_28__ = type { i32, i64 (%struct.TYPE_29__*, %struct.TYPE_27__*, i64)*, i64, %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_28__* }

@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_VAR_INDEXED = common dso_local global i32 0, align 4
@ngx_http_variable_depth = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cycle while evaluating variable \22%V\22\00", align 1
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_27__* @ngx_http_get_variable(%struct.TYPE_29__* %0, %struct.TYPE_26__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %15 = load i32, i32* @ngx_http_core_module, align 4
  %16 = call %struct.TYPE_30__* @ngx_http_get_module_main_conf(%struct.TYPE_29__* %14, i32 %15)
  store %struct.TYPE_30__* %16, %struct.TYPE_30__** %13, align 8
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 1
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.TYPE_28__* @ngx_hash_find(i32* %18, i64 %19, i32 %22, i64 %25)
  store %struct.TYPE_28__* %26, %struct.TYPE_28__** %11, align 8
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %28 = icmp ne %struct.TYPE_28__* %27, null
  br i1 %28, label %29, label %82

29:                                               ; preds = %3
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NGX_HTTP_VAR_INDEXED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_27__* @ngx_http_get_flushed_variable(%struct.TYPE_29__* %37, i32 %40)
  store %struct.TYPE_27__* %41, %struct.TYPE_27__** %4, align 8
  br label %180

42:                                               ; preds = %29
  %43 = load i64, i64* @ngx_http_variable_depth, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* @NGX_LOG_ERR, align 4
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %53 = call i32 @ngx_log_error(i32 %46, i32 %51, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_26__* %52)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %4, align 8
  br label %180

54:                                               ; preds = %42
  %55 = load i64, i64* @ngx_http_variable_depth, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* @ngx_http_variable_depth, align 8
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_27__* @ngx_palloc(i32 %59, i32 4)
  store %struct.TYPE_27__* %60, %struct.TYPE_27__** %12, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %62 = icmp ne %struct.TYPE_27__* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %54
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 1
  %66 = load i64 (%struct.TYPE_29__*, %struct.TYPE_27__*, i64)*, i64 (%struct.TYPE_29__*, %struct.TYPE_27__*, i64)** %65, align 8
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i64 %66(%struct.TYPE_29__* %67, %struct.TYPE_27__* %68, i64 %71)
  %73 = load i64, i64* @NGX_OK, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load i64, i64* @ngx_http_variable_depth, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* @ngx_http_variable_depth, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %78, %struct.TYPE_27__** %4, align 8
  br label %180

79:                                               ; preds = %63, %54
  %80 = load i64, i64* @ngx_http_variable_depth, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* @ngx_http_variable_depth, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %4, align 8
  br label %180

82:                                               ; preds = %3
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.TYPE_27__* @ngx_palloc(i32 %85, i32 4)
  store %struct.TYPE_27__* %86, %struct.TYPE_27__** %12, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %88 = icmp eq %struct.TYPE_27__* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %4, align 8
  br label %180

90:                                               ; preds = %82
  store i64 0, i64* %8, align 8
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %93, align 8
  store %struct.TYPE_28__* %94, %struct.TYPE_28__** %11, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %99

99:                                               ; preds = %150, %90
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %100, %104
  br i1 %105, label %106, label %153

106:                                              ; preds = %99
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp uge i64 %109, %115
  br i1 %116, label %117, label %149

117:                                              ; preds = %106
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = icmp ugt i64 %120, %121
  br i1 %122, label %123, label %149

123:                                              ; preds = %117
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %134 = load i64, i64* %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @ngx_strncmp(i32 %126, i32 %132, i64 %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %123
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %143 = load i64, i64* %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %8, align 8
  %148 = load i64, i64* %9, align 8
  store i64 %148, i64* %10, align 8
  br label %149

149:                                              ; preds = %141, %123, %117, %106
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %9, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %9, align 8
  br label %99

153:                                              ; preds = %99
  %154 = load i64, i64* %10, align 8
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %154, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %153
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 1
  %165 = load i64 (%struct.TYPE_29__*, %struct.TYPE_27__*, i64)*, i64 (%struct.TYPE_29__*, %struct.TYPE_27__*, i64)** %164, align 8
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %169 = ptrtoint %struct.TYPE_26__* %168 to i64
  %170 = call i64 %165(%struct.TYPE_29__* %166, %struct.TYPE_27__* %167, i64 %169)
  %171 = load i64, i64* @NGX_OK, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %160
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %174, %struct.TYPE_27__** %4, align 8
  br label %180

175:                                              ; preds = %160
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %4, align 8
  br label %180

176:                                              ; preds = %153
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 0
  store i32 1, i32* %178, align 4
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %179, %struct.TYPE_27__** %4, align 8
  br label %180

180:                                              ; preds = %176, %175, %173, %89, %79, %75, %45, %36
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  ret %struct.TYPE_27__* %181
}

declare dso_local %struct.TYPE_30__* @ngx_http_get_module_main_conf(%struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_hash_find(i32*, i64, i32, i64) #1

declare dso_local %struct.TYPE_27__* @ngx_http_get_flushed_variable(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_27__* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_strncmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
