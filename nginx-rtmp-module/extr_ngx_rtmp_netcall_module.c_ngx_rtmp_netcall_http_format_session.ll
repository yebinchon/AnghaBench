; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_netcall_module.c_ngx_rtmp_netcall_http_format_session.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_netcall_module.c_ngx_rtmp_netcall_http_format_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@NGX_INT_T_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"app=\00", align 1
@NGX_ESCAPE_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"&flashver=\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&swfurl=\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"&tcurl=\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"&pageurl=\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"&addr=\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"&clientid=\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%ui\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @ngx_rtmp_netcall_http_format_session(%struct.TYPE_23__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_24__* @ngx_alloc_chain_link(i32* %13)
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %6, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %16 = icmp eq %struct.TYPE_24__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  br label %241

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, 3
  %25 = sext i32 %24 to i64
  %26 = add i64 4, %25
  %27 = add i64 %26, 11
  %28 = sub i64 %27, 1
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = add i64 %28, %34
  %36 = add i64 %35, 9
  %37 = sub i64 %36, 1
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 3
  %43 = sext i32 %42 to i64
  %44 = add i64 %37, %43
  %45 = add i64 %44, 8
  %46 = sub i64 %45, 1
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %50, 3
  %52 = sext i32 %51 to i64
  %53 = add i64 %46, %52
  %54 = add i64 %53, 10
  %55 = sub i64 %54, 1
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = add i64 %55, %61
  %63 = add i64 %62, 7
  %64 = sub i64 %63, 1
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %67, 3
  %69 = sext i32 %68 to i64
  %70 = add i64 %64, %69
  %71 = add i64 %70, 11
  %72 = sub i64 %71, 1
  %73 = load i64, i64* @NGX_INT_T_LEN, align 8
  %74 = add i64 %72, %73
  %75 = call %struct.TYPE_15__* @ngx_create_temp_buf(i32* %19, i64 %74)
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %7, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %77 = icmp eq %struct.TYPE_15__* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %18
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  br label %241

79:                                               ; preds = %18
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %82, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i8* @ngx_cpymem(i32* %87, i32* bitcast ([5 x i8]* @.str to i32*), i32 4)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i32* %89, i32** %91, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %104 = call i64 @ngx_escape_uri(i32* %94, i32 %98, i32 %102, i32 %103)
  %105 = inttoptr i64 %104 to i32*
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  store i32* %105, i32** %107, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i8* @ngx_cpymem(i32* %110, i32* bitcast ([11 x i8]* @.str.1 to i32*), i32 10)
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  store i32* %112, i32** %114, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %127 = call i64 @ngx_escape_uri(i32* %117, i32 %121, i32 %125, i32 %126)
  %128 = inttoptr i64 %127 to i32*
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  store i32* %128, i32** %130, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = call i8* @ngx_cpymem(i32* %133, i32* bitcast ([9 x i8]* @.str.2 to i32*), i32 8)
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  store i32* %135, i32** %137, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %150 = call i64 @ngx_escape_uri(i32* %140, i32 %144, i32 %148, i32 %149)
  %151 = inttoptr i64 %150 to i32*
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  store i32* %151, i32** %153, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = call i8* @ngx_cpymem(i32* %156, i32* bitcast ([8 x i8]* @.str.3 to i32*), i32 7)
  %158 = bitcast i8* %157 to i32*
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  store i32* %158, i32** %160, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %173 = call i64 @ngx_escape_uri(i32* %163, i32 %167, i32 %171, i32 %172)
  %174 = inttoptr i64 %173 to i32*
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  store i32* %174, i32** %176, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = call i8* @ngx_cpymem(i32* %179, i32* bitcast ([10 x i8]* @.str.4 to i32*), i32 9)
  %181 = bitcast i8* %180 to i32*
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  store i32* %181, i32** %183, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %196 = call i64 @ngx_escape_uri(i32* %186, i32 %190, i32 %194, i32 %195)
  %197 = inttoptr i64 %196 to i32*
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  store i32* %197, i32** %199, align 8
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = call i8* @ngx_cpymem(i32* %202, i32* bitcast ([7 x i8]* @.str.5 to i32*), i32 6)
  %204 = bitcast i8* %203 to i32*
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  store i32* %204, i32** %206, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %217 = call i64 @ngx_escape_uri(i32* %209, i32 %212, i32 %215, i32 %216)
  %218 = inttoptr i64 %217 to i32*
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  store i32* %218, i32** %220, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = call i8* @ngx_cpymem(i32* %223, i32* bitcast ([11 x i8]* @.str.6 to i32*), i32 10)
  %225 = bitcast i8* %224 to i32*
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  store i32* %225, i32** %227, align 8
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = trunc i64 %235 to i32
  %237 = call i32* @ngx_sprintf(i32* %230, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %236)
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  store i32* %237, i32** %239, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_24__* %240, %struct.TYPE_24__** %3, align 8
  br label %241

241:                                              ; preds = %79, %78, %17
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  ret %struct.TYPE_24__* %242
}

declare dso_local %struct.TYPE_24__* @ngx_alloc_chain_link(i32*) #1

declare dso_local %struct.TYPE_15__* @ngx_create_temp_buf(i32*, i64) #1

declare dso_local i8* @ngx_cpymem(i32*, i32*, i32) #1

declare dso_local i64 @ngx_escape_uri(i32*, i32, i32, i32) #1

declare dso_local i32* @ngx_sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
