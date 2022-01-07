; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_valid_set_slot.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_valid_set_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64 }

@ngx_http_file_cache_valid_set_slot.statuses = internal global [3 x i32] [i32 200, i32 301, i32 302], align 4
@NGX_CONF_UNSET_PTR = common dso_local global i32* null, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid time value \22%V\22\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid status \22%V\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_http_file_cache_valid_set_slot(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  %23 = bitcast i8* %22 to i32**
  store i32** %23, i32*** %14, align 8
  %24 = load i32**, i32*** %14, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** @NGX_CONF_UNSET_PTR, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32* @ngx_array_create(i32 %31, i32 1, i32 16)
  %33 = load i32**, i32*** %14, align 8
  store i32* %32, i32** %33, align 8
  %34 = load i32**, i32*** %14, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %38, i8** %4, align 8
  br label %163

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %10, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 %54
  %56 = call i64 @ngx_parse_time(%struct.TYPE_13__* %55, i32 1)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @NGX_ERROR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %40
  %61 = load i32, i32* @NGX_LOG_EMERG, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 %65
  %67 = call i32 @ngx_conf_log_error(i32 %61, %struct.TYPE_15__* %62, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %66)
  %68 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %68, i8** %4, align 8
  br label %163

69:                                               ; preds = %40
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %99

72:                                               ; preds = %69
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %94, %72
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 3
  br i1 %75, label %76, label %97

76:                                               ; preds = %73
  %77 = load i32**, i32*** %14, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = call %struct.TYPE_14__* @ngx_array_push(i32* %78)
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %15, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %81 = icmp eq %struct.TYPE_14__* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %83, i8** %4, align 8
  br label %163

84:                                               ; preds = %76
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* @ngx_http_file_cache_valid_set_slot.statuses, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %73

97:                                               ; preds = %73
  %98 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %98, i8** %4, align 8
  br label %163

99:                                               ; preds = %69
  store i32 1, i32* %12, align 4
  br label %100

100:                                              ; preds = %158, %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %161

104:                                              ; preds = %100
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @ngx_strcmp(i32 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  store i32 0, i32* %11, align 4
  br label %143

114:                                              ; preds = %104
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ngx_atoi(i32 %120, i32 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 100
  br i1 %129, label %133, label %130

130:                                              ; preds = %114
  %131 = load i32, i32* %11, align 4
  %132 = icmp sgt i32 %131, 599
  br i1 %132, label %133, label %142

133:                                              ; preds = %130, %114
  %134 = load i32, i32* @NGX_LOG_EMERG, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i64 %138
  %140 = call i32 @ngx_conf_log_error(i32 %134, %struct.TYPE_15__* %135, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %139)
  %141 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %141, i8** %4, align 8
  br label %163

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142, %113
  %144 = load i32**, i32*** %14, align 8
  %145 = load i32*, i32** %144, align 8
  %146 = call %struct.TYPE_14__* @ngx_array_push(i32* %145)
  store %struct.TYPE_14__* %146, %struct.TYPE_14__** %15, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %148 = icmp eq %struct.TYPE_14__* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %150, i8** %4, align 8
  br label %163

151:                                              ; preds = %143
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i64, i64* %9, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %100

161:                                              ; preds = %100
  %162 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %162, i8** %4, align 8
  br label %163

163:                                              ; preds = %161, %149, %133, %97, %82, %60, %37
  %164 = load i8*, i8** %4, align 8
  ret i8* %164
}

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local i64 @ngx_parse_time(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_15__*, i32, i8*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @ngx_array_push(i32*) #1

declare dso_local i64 @ngx_strcmp(i32, i8*) #1

declare dso_local i32 @ngx_atoi(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
