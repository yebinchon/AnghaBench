; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_log_module.c_ngx_stream_log_open_file_cache.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_log_module.c_ngx_stream_log_open_file_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i32* }

@NGX_CONF_UNSET_PTR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"max=\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"inactive=\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"min_uses=\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"valid=\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"invalid \22open_log_file_cache\22 parameter \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"\22open_log_file_cache\22 must have \22max\22 parameter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*, i32*, i8*)* @ngx_stream_log_open_file_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_log_open_file_cache(%struct.TYPE_11__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %8, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** @NGX_CONF_UNSET_PTR, align 8
  %22 = icmp ne i32* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %213

24:                                               ; preds = %3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %11, align 8
  store i64 0, i64* %13, align 8
  store i32 10, i32* %9, align 4
  store i32 60, i32* %10, align 4
  store i64 1, i64* %14, align 8
  store i64 1, i64* %15, align 8
  br label %30

30:                                               ; preds = %172, %24
  %31 = load i64, i64* %15, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %31, %36
  br i1 %37, label %38, label %175

38:                                               ; preds = %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %40 = load i64, i64* %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @ngx_strncmp(i64 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %38
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %48 = load i64, i64* %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %54 = load i64, i64* %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, 4
  %59 = call i64 @ngx_atoi(i64 %52, i64 %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @NGX_ERROR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  br label %164

64:                                               ; preds = %46
  br label %172

65:                                               ; preds = %38
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %67 = load i64, i64* %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @ngx_strncmp(i64 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %65
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 9
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store i64 %79, i64* %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %82 = load i64, i64* %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 9
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i64 %86, i64* %87, align 8
  %88 = call i32 @ngx_parse_time(%struct.TYPE_10__* %12, i32 1)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i64, i64* @NGX_ERROR, align 8
  %91 = trunc i64 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %73
  br label %164

94:                                               ; preds = %73
  br label %172

95:                                               ; preds = %65
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %97 = load i64, i64* %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @ngx_strncmp(i64 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %95
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %105 = load i64, i64* %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 9
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %111 = load i64, i64* %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, 9
  %116 = call i64 @ngx_atoi(i64 %109, i64 %115)
  store i64 %116, i64* %14, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i64, i64* @NGX_ERROR, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %103
  br label %164

121:                                              ; preds = %103
  br label %172

122:                                              ; preds = %95
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %124 = load i64, i64* %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @ngx_strncmp(i64 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %122
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %132 = load i64, i64* %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %135, 6
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store i64 %136, i64* %137, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %139 = load i64, i64* %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 6
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i64 %143, i64* %144, align 8
  %145 = call i32 @ngx_parse_time(%struct.TYPE_10__* %12, i32 1)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i64, i64* @NGX_ERROR, align 8
  %148 = trunc i64 %147 to i32
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %130
  br label %164

151:                                              ; preds = %130
  br label %172

152:                                              ; preds = %122
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %154 = load i64, i64* %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @ngx_strcmp(i64 %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %152
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  store i32* null, i32** %162, align 8
  br label %172

163:                                              ; preds = %152
  br label %164

164:                                              ; preds = %163, %150, %120, %93, %63
  %165 = load i32, i32* @NGX_LOG_EMERG, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %168 = load i64, i64* %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i64 %168
  %170 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ngx_conf_log_error(i32 %165, %struct.TYPE_11__* %166, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_10__* %169)
  %171 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %171, i8** %4, align 8
  br label %213

172:                                              ; preds = %160, %151, %121, %94, %64
  %173 = load i64, i64* %15, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %15, align 8
  br label %30

175:                                              ; preds = %30
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %181, i8** %4, align 8
  br label %213

182:                                              ; preds = %175
  %183 = load i64, i64* %13, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i32, i32* @NGX_LOG_EMERG, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %188 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ngx_conf_log_error(i32 %186, %struct.TYPE_11__* %187, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %189 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %189, i8** %4, align 8
  br label %213

190:                                              ; preds = %182
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i64, i64* %13, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32* @ngx_open_file_cache_init(i32 %193, i64 %194, i32 %195)
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  store i32* %196, i32** %198, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %211

203:                                              ; preds = %190
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load i64, i64* %14, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  store i64 %207, i64* %209, align 8
  %210 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %210, i8** %4, align 8
  br label %213

211:                                              ; preds = %190
  %212 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %212, i8** %4, align 8
  br label %213

213:                                              ; preds = %211, %203, %185, %180, %164, %23
  %214 = load i8*, i8** %4, align 8
  ret i8* %214
}

declare dso_local i64 @ngx_strncmp(i64, i8*, i32) #1

declare dso_local i64 @ngx_atoi(i64, i64) #1

declare dso_local i32 @ngx_parse_time(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ngx_strcmp(i64, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32* @ngx_open_file_cache_init(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
