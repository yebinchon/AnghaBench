; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_not_modified_filter_module.c_ngx_http_test_if_match.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_not_modified_filter_module.c_ngx_http_test_if_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"http im:\22%V\22 etag:%V\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32)* @ngx_http_test_if_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_test_if_match(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %12, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 42
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %215

28:                                               ; preds = %19, %3
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = icmp eq %struct.TYPE_11__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %215

35:                                               ; preds = %28
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = bitcast %struct.TYPE_15__* %11 to i8*
  %42 = bitcast %struct.TYPE_15__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %50 = call i32 @ngx_log_debug2(i32 %43, i32 %48, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %49, %struct.TYPE_15__* %11)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %35
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %55, 2
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 87
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 47
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 2
  store i32 %74, i32* %72, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8* %77, i8** %75, align 8
  br label %78

78:                                               ; preds = %71, %64, %57, %53, %35
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %8, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %84, i64 %88
  store i8* %89, i8** %9, align 8
  br label %90

90:                                               ; preds = %213, %78
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = icmp ult i8* %91, %92
  br i1 %93, label %94, label %214

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %94
  %98 = load i8*, i8** %9, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = icmp sgt i64 %102, 2
  br i1 %103, label %104, label %119

104:                                              ; preds = %97
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 87
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 47
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  store i8* %118, i8** %8, align 8
  br label %119

119:                                              ; preds = %116, %110, %104, %97, %94
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = load i8*, i8** %9, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = icmp ugt i64 %122, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %215

130:                                              ; preds = %119
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = call i64 @ngx_strncmp(i8* %131, i8* %133, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %175

140:                                              ; preds = %130
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8* %145, i8** %8, align 8
  br label %146

146:                                              ; preds = %160, %140
  %147 = load i8*, i8** %8, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = icmp ult i8* %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load i8*, i8** %8, align 8
  %152 = load i8, i8* %151, align 1
  store i8 %152, i8* %10, align 1
  %153 = load i8, i8* %10, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 32
  br i1 %155, label %160, label %156

156:                                              ; preds = %150
  %157 = load i8, i8* %10, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 9
  br i1 %159, label %160, label %163

160:                                              ; preds = %156, %150
  %161 = load i8*, i8** %8, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %8, align 8
  br label %146

163:                                              ; preds = %156
  br label %164

164:                                              ; preds = %163, %146
  %165 = load i8*, i8** %8, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = icmp eq i8* %165, %166
  br i1 %167, label %173, label %168

168:                                              ; preds = %164
  %169 = load i8*, i8** %8, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 44
  br i1 %172, label %173, label %174

173:                                              ; preds = %168, %164
  store i32 1, i32* %4, align 4
  br label %215

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %139
  br label %176

176:                                              ; preds = %187, %175
  %177 = load i8*, i8** %8, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = icmp ult i8* %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i8*, i8** %8, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 44
  br label %185

185:                                              ; preds = %180, %176
  %186 = phi i1 [ false, %176 ], [ %184, %180 ]
  br i1 %186, label %187, label %190

187:                                              ; preds = %185
  %188 = load i8*, i8** %8, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %8, align 8
  br label %176

190:                                              ; preds = %185
  br label %191

191:                                              ; preds = %209, %190
  %192 = load i8*, i8** %8, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = icmp ult i8* %192, %193
  br i1 %194, label %195, label %213

195:                                              ; preds = %191
  %196 = load i8*, i8** %8, align 8
  %197 = load i8, i8* %196, align 1
  store i8 %197, i8* %10, align 1
  %198 = load i8, i8* %10, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 32
  br i1 %200, label %209, label %201

201:                                              ; preds = %195
  %202 = load i8, i8* %10, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 9
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = load i8, i8* %10, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 44
  br i1 %208, label %209, label %212

209:                                              ; preds = %205, %201, %195
  %210 = load i8*, i8** %8, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %8, align 8
  br label %191

212:                                              ; preds = %205
  br label %213

213:                                              ; preds = %212, %191
  br label %90

214:                                              ; preds = %90
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %214, %173, %129, %34, %27
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*) #2

declare dso_local i64 @ngx_strncmp(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
