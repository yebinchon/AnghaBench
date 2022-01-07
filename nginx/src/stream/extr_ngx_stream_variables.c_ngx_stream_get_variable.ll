; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_variables.c_ngx_stream_get_variable.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_variables.c_ngx_stream_get_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_30__ = type { i64, i32 }
%struct.TYPE_27__ = type { i32, i64 (%struct.TYPE_28__*, %struct.TYPE_26__*, i64)*, i64, %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_27__* }

@ngx_stream_core_module = common dso_local global i32 0, align 4
@NGX_STREAM_VAR_INDEXED = common dso_local global i32 0, align 4
@ngx_stream_variable_depth = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cycle while evaluating variable \22%V\22\00", align 1
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @ngx_stream_get_variable(%struct.TYPE_28__* %0, %struct.TYPE_30__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %15 = load i32, i32* @ngx_stream_core_module, align 4
  %16 = call %struct.TYPE_29__* @ngx_stream_get_module_main_conf(%struct.TYPE_28__* %14, i32 %15)
  store %struct.TYPE_29__* %16, %struct.TYPE_29__** %13, align 8
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 1
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.TYPE_27__* @ngx_hash_find(i32* %18, i64 %19, i32 %22, i64 %25)
  store %struct.TYPE_27__* %26, %struct.TYPE_27__** %11, align 8
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %28 = icmp ne %struct.TYPE_27__* %27, null
  br i1 %28, label %29, label %84

29:                                               ; preds = %3
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NGX_STREAM_VAR_INDEXED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_26__* @ngx_stream_get_flushed_variable(%struct.TYPE_28__* %37, i32 %40)
  store %struct.TYPE_26__* %41, %struct.TYPE_26__** %4, align 8
  br label %184

42:                                               ; preds = %29
  %43 = load i64, i64* @ngx_stream_variable_depth, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* @NGX_LOG_ERR, align 4
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %53 = call i32 @ngx_log_error(i32 %46, i32 %51, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_30__* %52)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %4, align 8
  br label %184

54:                                               ; preds = %42
  %55 = load i64, i64* @ngx_stream_variable_depth, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* @ngx_stream_variable_depth, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_26__* @ngx_palloc(i32 %61, i32 4)
  store %struct.TYPE_26__* %62, %struct.TYPE_26__** %12, align 8
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %64 = icmp ne %struct.TYPE_26__* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %54
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 1
  %68 = load i64 (%struct.TYPE_28__*, %struct.TYPE_26__*, i64)*, i64 (%struct.TYPE_28__*, %struct.TYPE_26__*, i64)** %67, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i64 %68(%struct.TYPE_28__* %69, %struct.TYPE_26__* %70, i64 %73)
  %75 = load i64, i64* @NGX_OK, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = load i64, i64* @ngx_stream_variable_depth, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* @ngx_stream_variable_depth, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  store %struct.TYPE_26__* %80, %struct.TYPE_26__** %4, align 8
  br label %184

81:                                               ; preds = %65, %54
  %82 = load i64, i64* @ngx_stream_variable_depth, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* @ngx_stream_variable_depth, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %4, align 8
  br label %184

84:                                               ; preds = %3
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.TYPE_26__* @ngx_palloc(i32 %89, i32 4)
  store %struct.TYPE_26__* %90, %struct.TYPE_26__** %12, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %92 = icmp eq %struct.TYPE_26__* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %4, align 8
  br label %184

94:                                               ; preds = %84
  store i64 0, i64* %8, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %97, align 8
  store %struct.TYPE_27__* %98, %struct.TYPE_27__** %11, align 8
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %103

103:                                              ; preds = %154, %94
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %104, %108
  br i1 %109, label %110, label %157

110:                                              ; preds = %103
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp uge i64 %113, %119
  br i1 %120, label %121, label %153

121:                                              ; preds = %110
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %127, label %153

127:                                              ; preds = %121
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %132 = load i64, i64* %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %138 = load i64, i64* %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @ngx_strncmp(i32 %130, i32 %136, i64 %142)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %127
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %147 = load i64, i64* %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %8, align 8
  %152 = load i64, i64* %9, align 8
  store i64 %152, i64* %10, align 8
  br label %153

153:                                              ; preds = %145, %127, %121, %110
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %9, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %9, align 8
  br label %103

157:                                              ; preds = %103
  %158 = load i64, i64* %10, align 8
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %158, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %157
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %166 = load i64, i64* %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 1
  %169 = load i64 (%struct.TYPE_28__*, %struct.TYPE_26__*, i64)*, i64 (%struct.TYPE_28__*, %struct.TYPE_26__*, i64)** %168, align 8
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %173 = ptrtoint %struct.TYPE_30__* %172 to i64
  %174 = call i64 %169(%struct.TYPE_28__* %170, %struct.TYPE_26__* %171, i64 %173)
  %175 = load i64, i64* @NGX_OK, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %164
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  store %struct.TYPE_26__* %178, %struct.TYPE_26__** %4, align 8
  br label %184

179:                                              ; preds = %164
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %4, align 8
  br label %184

180:                                              ; preds = %157
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 0
  store i32 1, i32* %182, align 4
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  store %struct.TYPE_26__* %183, %struct.TYPE_26__** %4, align 8
  br label %184

184:                                              ; preds = %180, %179, %177, %93, %81, %77, %45, %36
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  ret %struct.TYPE_26__* %185
}

declare dso_local %struct.TYPE_29__* @ngx_stream_get_module_main_conf(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_27__* @ngx_hash_find(i32*, i64, i32, i64) #1

declare dso_local %struct.TYPE_26__* @ngx_stream_get_flushed_variable(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_26__* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_strncmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
