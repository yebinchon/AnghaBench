; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_variables.c_ngx_stream_add_variable.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_variables.c_ngx_stream_add_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_22__, i64, i64, i32*, i32* }
%struct.TYPE_22__ = type { i64, i32* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_25__*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_28__* }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid variable name \22$\22\00", align 1
@NGX_STREAM_VAR_PREFIX = common dso_local global i32 0, align 4
@ngx_stream_core_module = common dso_local global i32 0, align 4
@NGX_STREAM_VAR_CHANGEABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"the duplicate \22%V\22 variable\00", align 1
@NGX_STREAM_VAR_WEAK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_BUSY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"conflicting variable name \22%V\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @ngx_stream_add_variable(%struct.TYPE_29__* %0, %struct.TYPE_27__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @NGX_LOG_EMERG, align 4
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %20 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %18, %struct.TYPE_29__* %19, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %4, align 8
  br label %190

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @NGX_STREAM_VAR_PREFIX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.TYPE_25__* @ngx_stream_add_prefix_variable(%struct.TYPE_29__* %27, %struct.TYPE_27__* %28, i32 %29)
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %4, align 8
  br label %190

31:                                               ; preds = %21
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %33 = load i32, i32* @ngx_stream_core_module, align 4
  %34 = call %struct.TYPE_26__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_29__* %32, i32 %33)
  store %struct.TYPE_26__* %34, %struct.TYPE_26__** %12, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %39, align 8
  store %struct.TYPE_28__* %40, %struct.TYPE_28__** %10, align 8
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %111, %31
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %42, %48
  br i1 %49, label %50, label %114

50:                                               ; preds = %41
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %53, %60
  br i1 %61, label %78, label %62

62:                                               ; preds = %50
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @ngx_strncasecmp(i32 %65, i32 %72, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %62, %50
  br label %111

79:                                               ; preds = %62
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %84, align 8
  store %struct.TYPE_25__* %85, %struct.TYPE_25__** %11, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @NGX_STREAM_VAR_CHANGEABLE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %79
  %93 = load i32, i32* @NGX_LOG_EMERG, align 4
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %96 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %93, %struct.TYPE_29__* %94, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_27__* %95)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %4, align 8
  br label %190

97:                                               ; preds = %79
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @NGX_STREAM_VAR_WEAK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @NGX_STREAM_VAR_WEAK, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %102, %97
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_25__* %110, %struct.TYPE_25__** %4, align 8
  br label %190

111:                                              ; preds = %78
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %41

114:                                              ; preds = %41
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call %struct.TYPE_25__* @ngx_palloc(i32 %117, i32 56)
  store %struct.TYPE_25__* %118, %struct.TYPE_25__** %11, align 8
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %120 = icmp eq %struct.TYPE_25__* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %4, align 8
  br label %190

122:                                              ; preds = %114
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  store i64 %125, i64* %128, align 8
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32* @ngx_pnalloc(i32 %131, i64 %134)
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  store i32* %135, i32** %138, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %122
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %4, align 8
  br label %190

145:                                              ; preds = %122
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @ngx_strlow(i32* %149, i32 %152, i64 %155)
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 5
  store i32* null, i32** %158, align 8
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 4
  store i32* null, i32** %160, align 8
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 3
  store i64 0, i64* %162, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 2
  store i64 0, i64* %167, align 8
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %174 = call i64 @ngx_hash_add_key(%struct.TYPE_21__* %170, %struct.TYPE_22__* %172, %struct.TYPE_25__* %173, i32 0)
  store i64 %174, i64* %8, align 8
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* @NGX_ERROR, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %145
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %4, align 8
  br label %190

179:                                              ; preds = %145
  %180 = load i64, i64* %8, align 8
  %181 = load i64, i64* @NGX_BUSY, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i32, i32* @NGX_LOG_EMERG, align 4
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %187 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %184, %struct.TYPE_29__* %185, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_27__* %186)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %4, align 8
  br label %190

188:                                              ; preds = %179
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_25__* %189, %struct.TYPE_25__** %4, align 8
  br label %190

190:                                              ; preds = %188, %183, %178, %144, %121, %109, %92, %26, %17
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  ret %struct.TYPE_25__* %191
}

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_29__*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_25__* @ngx_stream_add_prefix_variable(%struct.TYPE_29__*, %struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_26__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32, i64) #1

declare dso_local %struct.TYPE_25__* @ngx_palloc(i32, i32) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_strlow(i32*, i32, i64) #1

declare dso_local i64 @ngx_hash_add_key(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
