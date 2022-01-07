; ModuleID = '/home/carl/AnghaBench/nginx/src/event/extr_ngx_event.c_ngx_events_block.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/extr_ngx_event.c_ngx_events_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8***, %struct.TYPE_12__*, i32, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* (%struct.TYPE_12__*, i8*)*, i8* (%struct.TYPE_12__*)* }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_EVENT_MODULE = common dso_local global i64 0, align 8
@ngx_event_max_module = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_EVENT_CONF = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*, i32*, i8*)* @ngx_events_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_events_block(%struct.TYPE_11__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %233

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load i64, i64* @NGX_EVENT_MODULE, align 8
  %23 = call i32 @ngx_count_modules(%struct.TYPE_12__* %21, i64 %22)
  store i32 %23, i32* @ngx_event_max_module, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @ngx_pcalloc(i32 %26, i32 8)
  %28 = bitcast i8* %27 to i8***
  store i8*** %28, i8**** %9, align 8
  %29 = load i8***, i8**** %9, align 8
  %30 = icmp eq i8*** %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %32, i8** %4, align 8
  br label %233

33:                                               ; preds = %18
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ngx_event_max_module, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = call i8* @ngx_pcalloc(i32 %36, i32 %40)
  %42 = bitcast i8* %41 to i8**
  %43 = load i8***, i8**** %9, align 8
  store i8** %42, i8*** %43, align 8
  %44 = load i8***, i8**** %9, align 8
  %45 = load i8**, i8*** %44, align 8
  %46 = icmp eq i8** %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %48, i8** %4, align 8
  br label %233

49:                                               ; preds = %33
  %50 = load i8***, i8**** %9, align 8
  %51 = bitcast i8*** %50 to i8*
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to i8**
  store i8* %51, i8** %53, align 8
  store i64 0, i64* %10, align 8
  br label %54

54:                                               ; preds = %133, %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %59, i64 %60
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %64, label %136

64:                                               ; preds = %54
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %69, i64 %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NGX_EVENT_MODULE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %133

78:                                               ; preds = %64
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %83, i64 %84
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %12, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i8* (%struct.TYPE_12__*)*, i8* (%struct.TYPE_12__*)** %90, align 8
  %92 = icmp ne i8* (%struct.TYPE_12__*)* %91, null
  br i1 %92, label %93, label %132

93:                                               ; preds = %78
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i8* (%struct.TYPE_12__*)*, i8* (%struct.TYPE_12__*)** %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = call i8* %96(%struct.TYPE_12__* %99)
  %101 = load i8***, i8**** %9, align 8
  %102 = load i8**, i8*** %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %107, i64 %108
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i8*, i8** %102, i64 %112
  store i8* %100, i8** %113, align 8
  %114 = load i8***, i8**** %9, align 8
  %115 = load i8**, i8*** %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %119, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %120, i64 %121
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i8*, i8** %115, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %93
  %130 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %130, i8** %4, align 8
  br label %233

131:                                              ; preds = %93
  br label %132

132:                                              ; preds = %131, %78
  br label %133

133:                                              ; preds = %132, %77
  %134 = load i64, i64* %10, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %10, align 8
  br label %54

136:                                              ; preds = %54
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = bitcast %struct.TYPE_11__* %11 to i8*
  %139 = bitcast %struct.TYPE_11__* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 40, i1 false)
  %140 = load i8***, i8**** %9, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i8*** %140, i8**** %142, align 8
  %143 = load i64, i64* @NGX_EVENT_MODULE, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 3
  store i64 %143, i64* %145, align 8
  %146 = load i32, i32* @NGX_EVENT_CONF, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %150 = call i8* @ngx_conf_parse(%struct.TYPE_11__* %149, i32* null)
  store i8* %150, i8** %8, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %152 = bitcast %struct.TYPE_11__* %151 to i8*
  %153 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 40, i1 false)
  %154 = load i8*, i8** %8, align 8
  %155 = load i8*, i8** @NGX_CONF_OK, align 8
  %156 = icmp ne i8* %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %136
  %158 = load i8*, i8** %8, align 8
  store i8* %158, i8** %4, align 8
  br label %233

159:                                              ; preds = %136
  store i64 0, i64* %10, align 8
  br label %160

160:                                              ; preds = %228, %159
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %164, align 8
  %166 = load i64, i64* %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %165, i64 %166
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = icmp ne %struct.TYPE_9__* %168, null
  br i1 %169, label %170, label %231

170:                                              ; preds = %160
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %174, align 8
  %176 = load i64, i64* %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %175, i64 %176
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @NGX_EVENT_MODULE, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %170
  br label %228

184:                                              ; preds = %170
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %188, align 8
  %190 = load i64, i64* %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %189, i64 %190
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  store %struct.TYPE_10__* %194, %struct.TYPE_10__** %12, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i8* (%struct.TYPE_12__*, i8*)*, i8* (%struct.TYPE_12__*, i8*)** %196, align 8
  %198 = icmp ne i8* (%struct.TYPE_12__*, i8*)* %197, null
  br i1 %198, label %199, label %227

199:                                              ; preds = %184
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i8* (%struct.TYPE_12__*, i8*)*, i8* (%struct.TYPE_12__*, i8*)** %201, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %204, align 8
  %206 = load i8***, i8**** %9, align 8
  %207 = load i8**, i8*** %206, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %211, align 8
  %213 = load i64, i64* %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %212, i64 %213
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds i8*, i8** %207, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = call i8* %202(%struct.TYPE_12__* %205, i8* %219)
  store i8* %220, i8** %8, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = load i8*, i8** @NGX_CONF_OK, align 8
  %223 = icmp ne i8* %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %199
  %225 = load i8*, i8** %8, align 8
  store i8* %225, i8** %4, align 8
  br label %233

226:                                              ; preds = %199
  br label %227

227:                                              ; preds = %226, %184
  br label %228

228:                                              ; preds = %227, %183
  %229 = load i64, i64* %10, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %10, align 8
  br label %160

231:                                              ; preds = %160
  %232 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %232, i8** %4, align 8
  br label %233

233:                                              ; preds = %231, %224, %157, %129, %47, %31, %17
  %234 = load i8*, i8** %4, align 8
  ret i8* %234
}

declare dso_local i32 @ngx_count_modules(%struct.TYPE_12__*, i64) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
