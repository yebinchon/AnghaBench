; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolver_send_tcp_query.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolver_send_tcp_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, i32, %struct.TYPE_20__*, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { %struct.TYPE_21__*, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*)* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32*, i32*, i32*, i32* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_RESOLVER_TCP_RSIZE = common dso_local global i32 0, align 4
@NGX_RESOLVER_TCP_WSIZE = common dso_local global i32 0, align 4
@ngx_resolver_tcp_read = common dso_local global i32 0, align 4
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"buffer overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, %struct.TYPE_19__*, i8**, i32)* @ngx_resolver_send_tcp_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_resolver_send_tcp_query(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* @NGX_OK, align 8
  store i64 %12, i64* %11, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = icmp eq %struct.TYPE_17__* %15, null
  br i1 %16, label %17, label %162

17:                                               ; preds = %4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %10, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %22 = icmp eq %struct.TYPE_20__* %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %17
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = call %struct.TYPE_20__* @ngx_resolver_calloc(%struct.TYPE_18__* %24, i32 32)
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %10, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %27 = icmp eq %struct.TYPE_20__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* @NGX_ERROR, align 8
  store i64 %29, i64* %5, align 8
  br label %224

30:                                               ; preds = %23
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = load i32, i32* @NGX_RESOLVER_TCP_RSIZE, align 4
  %33 = call i8* @ngx_resolver_alloc(%struct.TYPE_18__* %31, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %44 = call i32 @ngx_resolver_free(%struct.TYPE_18__* %42, %struct.TYPE_20__* %43)
  %45 = load i64, i64* @NGX_ERROR, align 8
  store i64 %45, i64* %5, align 8
  br label %224

46:                                               ; preds = %30
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @NGX_RESOLVER_TCP_RSIZE, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 3
  store %struct.TYPE_20__* %55, %struct.TYPE_20__** %57, align 8
  br label %58

58:                                               ; preds = %46, %17
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 3
  store i32* %61, i32** %63, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  store i32* %66, i32** %68, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %10, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %73 = icmp eq %struct.TYPE_20__* %72, null
  br i1 %73, label %74, label %109

74:                                               ; preds = %58
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = call %struct.TYPE_20__* @ngx_resolver_calloc(%struct.TYPE_18__* %75, i32 32)
  store %struct.TYPE_20__* %76, %struct.TYPE_20__** %10, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %78 = icmp eq %struct.TYPE_20__* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i64, i64* @NGX_ERROR, align 8
  store i64 %80, i64* %5, align 8
  br label %224

81:                                               ; preds = %74
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %83 = load i32, i32* @NGX_RESOLVER_TCP_WSIZE, align 4
  %84 = call i8* @ngx_resolver_alloc(%struct.TYPE_18__* %82, i32 %83)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  store i32* %85, i32** %87, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %81
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %95 = call i32 @ngx_resolver_free(%struct.TYPE_18__* %93, %struct.TYPE_20__* %94)
  %96 = load i64, i64* @NGX_ERROR, align 8
  store i64 %96, i64* %5, align 8
  br label %224

97:                                               ; preds = %81
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @NGX_RESOLVER_TCP_WSIZE, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  store i32* %103, i32** %105, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  store %struct.TYPE_20__* %106, %struct.TYPE_20__** %108, align 8
  br label %109

109:                                              ; preds = %97, %58
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 3
  store i32* %112, i32** %114, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  store i32* %117, i32** %119, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %121 = call i64 @ngx_tcp_connect(%struct.TYPE_19__* %120)
  store i64 %121, i64* %11, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* @NGX_ERROR, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %109
  %126 = load i64, i64* @NGX_ERROR, align 8
  store i64 %126, i64* %5, align 8
  br label %224

127:                                              ; preds = %109
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 2
  store %struct.TYPE_19__* %128, %struct.TYPE_19__** %132, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  store i32 (%struct.TYPE_21__*)* @ngx_resolver_tcp_write, i32 (%struct.TYPE_21__*)** %138, align 8
  %139 = load i32, i32* @ngx_resolver_tcp_read, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  store i32 %139, i32* %145, align 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  store i32 1, i32* %151, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %155, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %159, 1000
  %161 = call i32 @ngx_add_timer(%struct.TYPE_21__* %156, i32 %160)
  br label %162

162:                                              ; preds = %127, %4
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  store %struct.TYPE_20__* %165, %struct.TYPE_20__** %10, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = ptrtoint i32* %168 to i64
  %173 = ptrtoint i32* %171 to i64
  %174 = sub i64 %172, %173
  %175 = sdiv exact i64 %174, 4
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 2, %176
  %178 = sext i32 %177 to i64
  %179 = icmp slt i64 %175, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %162
  %181 = load i32, i32* @NGX_LOG_CRIT, align 4
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  %184 = call i32 @ngx_log_error(i32 %181, i32* %183, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %185 = load i64, i64* @NGX_ERROR, align 8
  store i64 %185, i64* %5, align 8
  br label %224

186:                                              ; preds = %162
  %187 = load i32, i32* %9, align 4
  %188 = ashr i32 %187, 8
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to i8*
  %191 = ptrtoint i8* %190 to i32
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %193, align 8
  store i32 %191, i32* %194, align 4
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = inttoptr i64 %197 to i8*
  %199 = ptrtoint i8* %198 to i32
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %201, align 8
  store i32 %199, i32* %202, align 4
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i8**, i8*** %8, align 8
  %208 = load i32, i32* %9, align 4
  %209 = call i32* @ngx_cpymem(i32* %206, i8** %207, i32 %208)
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  store i32* %209, i32** %211, align 8
  %212 = load i64, i64* %11, align 8
  %213 = load i64, i64* @NGX_OK, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %186
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %219, align 8
  %221 = call i32 @ngx_resolver_tcp_write(%struct.TYPE_21__* %220)
  br label %222

222:                                              ; preds = %215, %186
  %223 = load i64, i64* @NGX_OK, align 8
  store i64 %223, i64* %5, align 8
  br label %224

224:                                              ; preds = %222, %180, %125, %92, %79, %41, %28
  %225 = load i64, i64* %5, align 8
  ret i64 %225
}

declare dso_local %struct.TYPE_20__* @ngx_resolver_calloc(%struct.TYPE_18__*, i32) #1

declare dso_local i8* @ngx_resolver_alloc(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_resolver_free(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i64 @ngx_tcp_connect(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_resolver_tcp_write(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*) #1

declare dso_local i32* @ngx_cpymem(i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
