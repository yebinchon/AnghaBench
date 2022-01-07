; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_connect_create.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_connect_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_23__ = type { i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i32, i32 }

@ngx_rtmp_notify_module = common dso_local global i32 0, align 4
@NGX_INT32_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"app=\00", align 1
@NGX_ESCAPE_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"&flashver=\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&swfurl=\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"&tcurl=\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"&pageurl=\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"&addr=\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"&epoch=\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%uD\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"&call=connect\00", align 1
@NGX_RTMP_NOTIFY_CONNECT = common dso_local global i64 0, align 8
@NGX_RTMP_NETCALL_HTTP_POST = common dso_local global i64 0, align 8
@ngx_rtmp_notify_urlencoded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_21__*, i8*, i32*)* @ngx_rtmp_notify_connect_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @ngx_rtmp_notify_connect_create(%struct.TYPE_21__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %8, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %24 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %25 = call %struct.TYPE_22__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_21__* %23, i32 %24)
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %9, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call %struct.TYPE_24__* @ngx_alloc_chain_link(i32* %26)
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %11, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %29 = icmp eq %struct.TYPE_24__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  br label %296

31:                                               ; preds = %3
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @ngx_strlen(i32* %34)
  store i64 %35, i64* %15, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @ngx_strlen(i32* %38)
  store i64 %39, i64* %16, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @ngx_strlen(i32* %42)
  store i64 %43, i64* %17, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @ngx_strlen(i32* %46)
  store i64 %47, i64* %18, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @ngx_strlen(i32* %50)
  store i64 %51, i64* %19, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @ngx_strlen(i32* %54)
  store i64 %55, i64* %20, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  store %struct.TYPE_20__* %59, %struct.TYPE_20__** %14, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i64, i64* %15, align 8
  %62 = mul i64 %61, 3
  %63 = add i64 17, %62
  %64 = add i64 %63, 11
  %65 = sub i64 %64, 1
  %66 = load i64, i64* %17, align 8
  %67 = mul i64 %66, 3
  %68 = add i64 %65, %67
  %69 = add i64 %68, 9
  %70 = sub i64 %69, 1
  %71 = load i64, i64* %18, align 8
  %72 = mul i64 %71, 3
  %73 = add i64 %70, %72
  %74 = add i64 %73, 8
  %75 = sub i64 %74, 1
  %76 = load i64, i64* %19, align 8
  %77 = mul i64 %76, 3
  %78 = add i64 %75, %77
  %79 = add i64 %78, 10
  %80 = sub i64 %79, 1
  %81 = load i64, i64* %20, align 8
  %82 = mul i64 %81, 3
  %83 = add i64 %80, %82
  %84 = add i64 %83, 7
  %85 = sub i64 %84, 1
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %88, 3
  %90 = sext i32 %89 to i64
  %91 = add i64 %85, %90
  %92 = add i64 %91, 8
  %93 = sub i64 %92, 1
  %94 = load i32, i32* @NGX_INT32_LEN, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %93, %95
  %97 = add i64 %96, 1
  %98 = load i64, i64* %16, align 8
  %99 = add i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = call %struct.TYPE_25__* @ngx_create_temp_buf(i32* %60, i32 %100)
  store %struct.TYPE_25__* %101, %struct.TYPE_25__** %13, align 8
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %103 = icmp eq %struct.TYPE_25__* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %31
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  br label %296

105:                                              ; preds = %31
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 1
  store %struct.TYPE_25__* %106, %struct.TYPE_25__** %108, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  store i32* null, i32** %110, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i8* @ngx_cpymem(i32* %113, i32* bitcast ([5 x i8]* @.str to i32*), i64 4)
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %15, align 8
  %125 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %126 = call i64 @ngx_escape_uri(i32* %120, i32* %123, i64 %124, i32 %125)
  %127 = inttoptr i64 %126 to i32*
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i8* @ngx_cpymem(i32* %132, i32* bitcast ([11 x i8]* @.str.1 to i32*), i64 10)
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  store i32* %134, i32** %136, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %17, align 8
  %144 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %145 = call i64 @ngx_escape_uri(i32* %139, i32* %142, i64 %143, i32 %144)
  %146 = inttoptr i64 %145 to i32*
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  store i32* %146, i32** %148, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = call i8* @ngx_cpymem(i32* %151, i32* bitcast ([9 x i8]* @.str.2 to i32*), i64 8)
  %153 = bitcast i8* %152 to i32*
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 0
  store i32* %153, i32** %155, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* %18, align 8
  %163 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %164 = call i64 @ngx_escape_uri(i32* %158, i32* %161, i64 %162, i32 %163)
  %165 = inttoptr i64 %164 to i32*
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  store i32* %165, i32** %167, align 8
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i8* @ngx_cpymem(i32* %170, i32* bitcast ([8 x i8]* @.str.3 to i32*), i64 7)
  %172 = bitcast i8* %171 to i32*
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  store i32* %172, i32** %174, align 8
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* %19, align 8
  %182 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %183 = call i64 @ngx_escape_uri(i32* %177, i32* %180, i64 %181, i32 %182)
  %184 = inttoptr i64 %183 to i32*
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 0
  store i32* %184, i32** %186, align 8
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = call i8* @ngx_cpymem(i32* %189, i32* bitcast ([10 x i8]* @.str.4 to i32*), i64 9)
  %191 = bitcast i8* %190 to i32*
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 0
  store i32* %191, i32** %193, align 8
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* %20, align 8
  %201 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %202 = call i64 @ngx_escape_uri(i32* %196, i32* %199, i64 %200, i32 %201)
  %203 = inttoptr i64 %202 to i32*
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 0
  store i32* %203, i32** %205, align 8
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = call i8* @ngx_cpymem(i32* %208, i32* bitcast ([7 x i8]* @.str.5 to i32*), i64 6)
  %210 = bitcast i8* %209 to i32*
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 0
  store i32* %210, i32** %212, align 8
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %224 = call i64 @ngx_escape_uri(i32* %215, i32* %218, i64 %222, i32 %223)
  %225 = inttoptr i64 %224 to i32*
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 0
  store i32* %225, i32** %227, align 8
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = call i8* @ngx_cpymem(i32* %230, i32* bitcast ([8 x i8]* @.str.6 to i32*), i64 7)
  %232 = bitcast i8* %231 to i32*
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 0
  store i32* %232, i32** %234, align 8
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = trunc i64 %240 to i32
  %242 = call i32* @ngx_sprintf(i32* %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %241)
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 0
  store i32* %242, i32** %244, align 8
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = call i8* @ngx_cpymem(i32* %247, i32* bitcast ([14 x i8]* @.str.8 to i32*), i64 13)
  %249 = bitcast i8* %248 to i32*
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 0
  store i32* %249, i32** %251, align 8
  %252 = load i64, i64* %16, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %270

254:                                              ; preds = %105
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i32 1
  store i32* %258, i32** %256, align 8
  store i32 38, i32* %257, align 4
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = load i64, i64* %16, align 8
  %266 = call i8* @ngx_cpymem(i32* %261, i32* %264, i64 %265)
  %267 = bitcast i8* %266 to i32*
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %268, i32 0, i32 0
  store i32* %267, i32** %269, align 8
  br label %270

270:                                              ; preds = %254, %105
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %272, align 8
  %274 = load i64, i64* @NGX_RTMP_NOTIFY_CONNECT, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %273, i64 %274
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %275, align 8
  store %struct.TYPE_19__* %276, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %12, align 8
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @NGX_RTMP_NETCALL_HTTP_POST, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %270
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_24__* %283, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %11, align 8
  br label %284

284:                                              ; preds = %282, %270
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %294 = load i32*, i32** %7, align 8
  %295 = call %struct.TYPE_24__* @ngx_rtmp_netcall_http_format_request(i64 %287, i32* %289, i32* %291, %struct.TYPE_24__* %292, %struct.TYPE_24__* %293, i32* %294, i32* @ngx_rtmp_notify_urlencoded)
  store %struct.TYPE_24__* %295, %struct.TYPE_24__** %4, align 8
  br label %296

296:                                              ; preds = %284, %104, %30
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  ret %struct.TYPE_24__* %297
}

declare dso_local %struct.TYPE_22__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_alloc_chain_link(i32*) #1

declare dso_local i64 @ngx_strlen(i32*) #1

declare dso_local %struct.TYPE_25__* @ngx_create_temp_buf(i32*, i32) #1

declare dso_local i8* @ngx_cpymem(i32*, i32*, i64) #1

declare dso_local i64 @ngx_escape_uri(i32*, i32*, i64, i32) #1

declare dso_local i32* @ngx_sprintf(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_rtmp_netcall_http_format_request(i64, i32*, i32*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
