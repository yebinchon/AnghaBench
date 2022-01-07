; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp.c_ngx_rtmp_block.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp.c_ngx_rtmp_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { i64, i64, %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i64 (%struct.TYPE_44__*)*, i8* (%struct.TYPE_44__*, %struct.TYPE_41__*)*, i8* (%struct.TYPE_44__*, %struct.TYPE_40__*, %struct.TYPE_40__*)*, i8* (%struct.TYPE_44__*, i32*, i32*)*, i64 (%struct.TYPE_44__*)*, i32* (%struct.TYPE_44__*)*, %struct.TYPE_40__* (%struct.TYPE_44__*)*, %struct.TYPE_41__* (%struct.TYPE_44__*)* }
%struct.TYPE_44__ = type { i32, %struct.TYPE_42__*, i32, i64, %struct.TYPE_38__*, i32 }
%struct.TYPE_42__ = type { i32**, %struct.TYPE_40__**, %struct.TYPE_41__** }
%struct.TYPE_40__ = type { %struct.TYPE_42__*, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_43__** }
%struct.TYPE_41__ = type { %struct.TYPE_37__, %struct.TYPE_35__ }
%struct.TYPE_37__ = type { i64, i32* }
%struct.TYPE_35__ = type { i64, %struct.TYPE_40__** }
%struct.TYPE_36__ = type { i64 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_rtmp_max_module = common dso_local global i32 0, align 4
@ngx_modules = common dso_local global %struct.TYPE_43__** null, align 8
@NGX_RTMP_MODULE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_RTMP_MAIN_CONF = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_rtmp_core_module = common dso_local global %struct.TYPE_36__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_44__*, i32*, i8*)* @ngx_rtmp_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_block(%struct.TYPE_44__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_44__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_44__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_43__**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_39__*, align 8
  %18 = alloca %struct.TYPE_42__*, align 8
  %19 = alloca %struct.TYPE_40__*, align 8
  %20 = alloca %struct.TYPE_40__**, align 8
  %21 = alloca %struct.TYPE_41__*, align 8
  store %struct.TYPE_44__* %0, %struct.TYPE_44__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %22 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @ngx_pcalloc(i32 %24, i32 24)
  %26 = bitcast i8* %25 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %26, %struct.TYPE_42__** %18, align 8
  %27 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %28 = icmp eq %struct.TYPE_42__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %30, i8** %4, align 8
  br label %595

31:                                               ; preds = %3
  %32 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_42__**
  store %struct.TYPE_42__* %32, %struct.TYPE_42__** %34, align 8
  store i32 0, i32* @ngx_rtmp_max_module, align 4
  store i64 0, i64* %10, align 8
  br label %35

35:                                               ; preds = %60, %31
  %36 = load %struct.TYPE_43__**, %struct.TYPE_43__*** @ngx_modules, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %36, i64 %37
  %39 = load %struct.TYPE_43__*, %struct.TYPE_43__** %38, align 8
  %40 = icmp ne %struct.TYPE_43__* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %35
  %42 = load %struct.TYPE_43__**, %struct.TYPE_43__*** @ngx_modules, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %42, i64 %43
  %45 = load %struct.TYPE_43__*, %struct.TYPE_43__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NGX_RTMP_MODULE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %60

51:                                               ; preds = %41
  %52 = load i32, i32* @ngx_rtmp_max_module, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @ngx_rtmp_max_module, align 4
  %54 = sext i32 %52 to i64
  %55 = load %struct.TYPE_43__**, %struct.TYPE_43__*** @ngx_modules, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %55, i64 %56
  %58 = load %struct.TYPE_43__*, %struct.TYPE_43__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %58, i32 0, i32 1
  store i64 %54, i64* %59, align 8
  br label %60

60:                                               ; preds = %51, %50
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %35

63:                                               ; preds = %35
  %64 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ngx_rtmp_max_module, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 8, %68
  %70 = trunc i64 %69 to i32
  %71 = call i8* @ngx_pcalloc(i32 %66, i32 %70)
  %72 = bitcast i8* %71 to %struct.TYPE_41__**
  %73 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %73, i32 0, i32 2
  store %struct.TYPE_41__** %72, %struct.TYPE_41__*** %74, align 8
  %75 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %76, align 8
  %78 = icmp eq %struct.TYPE_41__** %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %80, i8** %4, align 8
  br label %595

81:                                               ; preds = %63
  %82 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ngx_rtmp_max_module, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 8, %86
  %88 = trunc i64 %87 to i32
  %89 = call i8* @ngx_pcalloc(i32 %84, i32 %88)
  %90 = bitcast i8* %89 to %struct.TYPE_40__**
  %91 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %91, i32 0, i32 1
  store %struct.TYPE_40__** %90, %struct.TYPE_40__*** %92, align 8
  %93 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %94, align 8
  %96 = icmp eq %struct.TYPE_40__** %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %81
  %98 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %98, i8** %4, align 8
  br label %595

99:                                               ; preds = %81
  %100 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ngx_rtmp_max_module, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 8, %104
  %106 = trunc i64 %105 to i32
  %107 = call i8* @ngx_pcalloc(i32 %102, i32 %106)
  %108 = bitcast i8* %107 to i32**
  %109 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %109, i32 0, i32 0
  store i32** %108, i32*** %110, align 8
  %111 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %111, i32 0, i32 0
  %113 = load i32**, i32*** %112, align 8
  %114 = icmp eq i32** %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %99
  %116 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %116, i8** %4, align 8
  br label %595

117:                                              ; preds = %99
  %118 = load %struct.TYPE_43__**, %struct.TYPE_43__*** @ngx_modules, align 8
  store %struct.TYPE_43__** %118, %struct.TYPE_43__*** %15, align 8
  store i64 0, i64* %10, align 8
  br label %119

119:                                              ; preds = %226, %117
  %120 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %120, i64 %121
  %123 = load %struct.TYPE_43__*, %struct.TYPE_43__** %122, align 8
  %124 = icmp ne %struct.TYPE_43__* %123, null
  br i1 %124, label %125, label %229

125:                                              ; preds = %119
  %126 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %126, i64 %127
  %129 = load %struct.TYPE_43__*, %struct.TYPE_43__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @NGX_RTMP_MODULE, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %226

135:                                              ; preds = %125
  %136 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %136, i64 %137
  %139 = load %struct.TYPE_43__*, %struct.TYPE_43__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_39__*, %struct.TYPE_39__** %140, align 8
  store %struct.TYPE_39__* %141, %struct.TYPE_39__** %17, align 8
  %142 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %142, i64 %143
  %145 = load %struct.TYPE_43__*, %struct.TYPE_43__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %11, align 8
  %148 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %148, i32 0, i32 7
  %150 = load %struct.TYPE_41__* (%struct.TYPE_44__*)*, %struct.TYPE_41__* (%struct.TYPE_44__*)** %149, align 8
  %151 = icmp ne %struct.TYPE_41__* (%struct.TYPE_44__*)* %150, null
  br i1 %151, label %152, label %173

152:                                              ; preds = %135
  %153 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %153, i32 0, i32 7
  %155 = load %struct.TYPE_41__* (%struct.TYPE_44__*)*, %struct.TYPE_41__* (%struct.TYPE_44__*)** %154, align 8
  %156 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %157 = call %struct.TYPE_41__* %155(%struct.TYPE_44__* %156)
  %158 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %159, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %160, i64 %161
  store %struct.TYPE_41__* %157, %struct.TYPE_41__** %162, align 8
  %163 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %164, align 8
  %166 = load i64, i64* %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %165, i64 %166
  %168 = load %struct.TYPE_41__*, %struct.TYPE_41__** %167, align 8
  %169 = icmp eq %struct.TYPE_41__* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %152
  %171 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %171, i8** %4, align 8
  br label %595

172:                                              ; preds = %152
  br label %173

173:                                              ; preds = %172, %135
  %174 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %175 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %174, i32 0, i32 6
  %176 = load %struct.TYPE_40__* (%struct.TYPE_44__*)*, %struct.TYPE_40__* (%struct.TYPE_44__*)** %175, align 8
  %177 = icmp ne %struct.TYPE_40__* (%struct.TYPE_44__*)* %176, null
  br i1 %177, label %178, label %199

178:                                              ; preds = %173
  %179 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %179, i32 0, i32 6
  %181 = load %struct.TYPE_40__* (%struct.TYPE_44__*)*, %struct.TYPE_40__* (%struct.TYPE_44__*)** %180, align 8
  %182 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %183 = call %struct.TYPE_40__* %181(%struct.TYPE_44__* %182)
  %184 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %185, align 8
  %187 = load i64, i64* %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %186, i64 %187
  store %struct.TYPE_40__* %183, %struct.TYPE_40__** %188, align 8
  %189 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %191, i64 %192
  %194 = load %struct.TYPE_40__*, %struct.TYPE_40__** %193, align 8
  %195 = icmp eq %struct.TYPE_40__* %194, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %178
  %197 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %197, i8** %4, align 8
  br label %595

198:                                              ; preds = %178
  br label %199

199:                                              ; preds = %198, %173
  %200 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %201 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %200, i32 0, i32 5
  %202 = load i32* (%struct.TYPE_44__*)*, i32* (%struct.TYPE_44__*)** %201, align 8
  %203 = icmp ne i32* (%struct.TYPE_44__*)* %202, null
  br i1 %203, label %204, label %225

204:                                              ; preds = %199
  %205 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %205, i32 0, i32 5
  %207 = load i32* (%struct.TYPE_44__*)*, i32* (%struct.TYPE_44__*)** %206, align 8
  %208 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %209 = call i32* %207(%struct.TYPE_44__* %208)
  %210 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %211 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %210, i32 0, i32 0
  %212 = load i32**, i32*** %211, align 8
  %213 = load i64, i64* %11, align 8
  %214 = getelementptr inbounds i32*, i32** %212, i64 %213
  store i32* %209, i32** %214, align 8
  %215 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %215, i32 0, i32 0
  %217 = load i32**, i32*** %216, align 8
  %218 = load i64, i64* %11, align 8
  %219 = getelementptr inbounds i32*, i32** %217, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = icmp eq i32* %220, null
  br i1 %221, label %222, label %224

222:                                              ; preds = %204
  %223 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %223, i8** %4, align 8
  br label %595

224:                                              ; preds = %204
  br label %225

225:                                              ; preds = %224, %199
  br label %226

226:                                              ; preds = %225, %134
  %227 = load i64, i64* %10, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %10, align 8
  br label %119

229:                                              ; preds = %119
  %230 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %231 = bitcast %struct.TYPE_44__* %13 to i8*
  %232 = bitcast %struct.TYPE_44__* %230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %231, i8* align 8 %232, i64 48, i1 false)
  %233 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %234 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %234, i32 0, i32 1
  store %struct.TYPE_42__* %233, %struct.TYPE_42__** %235, align 8
  store i64 0, i64* %10, align 8
  br label %236

236:                                              ; preds = %275, %229
  %237 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %238 = load i64, i64* %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %237, i64 %238
  %240 = load %struct.TYPE_43__*, %struct.TYPE_43__** %239, align 8
  %241 = icmp ne %struct.TYPE_43__* %240, null
  br i1 %241, label %242, label %278

242:                                              ; preds = %236
  %243 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %244 = load i64, i64* %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %243, i64 %244
  %246 = load %struct.TYPE_43__*, %struct.TYPE_43__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @NGX_RTMP_MODULE, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %242
  br label %275

252:                                              ; preds = %242
  %253 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %254 = load i64, i64* %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %253, i64 %254
  %256 = load %struct.TYPE_43__*, %struct.TYPE_43__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_39__*, %struct.TYPE_39__** %257, align 8
  store %struct.TYPE_39__* %258, %struct.TYPE_39__** %17, align 8
  %259 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %259, i32 0, i32 0
  %261 = load i64 (%struct.TYPE_44__*)*, i64 (%struct.TYPE_44__*)** %260, align 8
  %262 = icmp ne i64 (%struct.TYPE_44__*)* %261, null
  br i1 %262, label %263, label %274

263:                                              ; preds = %252
  %264 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %265 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %264, i32 0, i32 0
  %266 = load i64 (%struct.TYPE_44__*)*, i64 (%struct.TYPE_44__*)** %265, align 8
  %267 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %268 = call i64 %266(%struct.TYPE_44__* %267)
  %269 = load i64, i64* @NGX_OK, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %263
  %272 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %272, i8** %4, align 8
  br label %595

273:                                              ; preds = %263
  br label %274

274:                                              ; preds = %273, %252
  br label %275

275:                                              ; preds = %274, %251
  %276 = load i64, i64* %10, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %10, align 8
  br label %236

278:                                              ; preds = %236
  %279 = load i64, i64* @NGX_RTMP_MODULE, align 8
  %280 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %280, i32 0, i32 3
  store i64 %279, i64* %281, align 8
  %282 = load i32, i32* @NGX_RTMP_MAIN_CONF, align 4
  %283 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %283, i32 0, i32 2
  store i32 %282, i32* %284, align 8
  %285 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %286 = call i8* @ngx_conf_parse(%struct.TYPE_44__* %285, i32* null)
  store i8* %286, i8** %8, align 8
  %287 = load i8*, i8** %8, align 8
  %288 = load i8*, i8** @NGX_CONF_OK, align 8
  %289 = icmp ne i8* %287, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %278
  %291 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %292 = bitcast %struct.TYPE_44__* %291 to i8*
  %293 = bitcast %struct.TYPE_44__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %292, i8* align 8 %293, i64 48, i1 false)
  %294 = load i8*, i8** %8, align 8
  store i8* %294, i8** %4, align 8
  br label %595

295:                                              ; preds = %278
  %296 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %297 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %296, i32 0, i32 2
  %298 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %297, align 8
  %299 = load i64, i64* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @ngx_rtmp_core_module, i32 0, i32 0), align 8
  %300 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %298, i64 %299
  %301 = load %struct.TYPE_41__*, %struct.TYPE_41__** %300, align 8
  store %struct.TYPE_41__* %301, %struct.TYPE_41__** %21, align 8
  %302 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %303 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %304, align 8
  store %struct.TYPE_40__** %305, %struct.TYPE_40__*** %20, align 8
  store i64 0, i64* %10, align 8
  br label %306

306:                                              ; preds = %492, %295
  %307 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %308 = load i64, i64* %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %307, i64 %308
  %310 = load %struct.TYPE_43__*, %struct.TYPE_43__** %309, align 8
  %311 = icmp ne %struct.TYPE_43__* %310, null
  br i1 %311, label %312, label %495

312:                                              ; preds = %306
  %313 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %314 = load i64, i64* %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %313, i64 %314
  %316 = load %struct.TYPE_43__*, %struct.TYPE_43__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @NGX_RTMP_MODULE, align 8
  %320 = icmp ne i64 %318, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %312
  br label %492

322:                                              ; preds = %312
  %323 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %324 = load i64, i64* %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %323, i64 %324
  %326 = load %struct.TYPE_43__*, %struct.TYPE_43__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_39__*, %struct.TYPE_39__** %327, align 8
  store %struct.TYPE_39__* %328, %struct.TYPE_39__** %17, align 8
  %329 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %330 = load i64, i64* %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %329, i64 %330
  %332 = load %struct.TYPE_43__*, %struct.TYPE_43__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %11, align 8
  %335 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %336 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %336, i32 0, i32 1
  store %struct.TYPE_42__* %335, %struct.TYPE_42__** %337, align 8
  %338 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %339 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %338, i32 0, i32 1
  %340 = load i8* (%struct.TYPE_44__*, %struct.TYPE_41__*)*, i8* (%struct.TYPE_44__*, %struct.TYPE_41__*)** %339, align 8
  %341 = icmp ne i8* (%struct.TYPE_44__*, %struct.TYPE_41__*)* %340, null
  br i1 %341, label %342, label %363

342:                                              ; preds = %322
  %343 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %344 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %343, i32 0, i32 1
  %345 = load i8* (%struct.TYPE_44__*, %struct.TYPE_41__*)*, i8* (%struct.TYPE_44__*, %struct.TYPE_41__*)** %344, align 8
  %346 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %347 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %348 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %348, align 8
  %350 = load i64, i64* %11, align 8
  %351 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %349, i64 %350
  %352 = load %struct.TYPE_41__*, %struct.TYPE_41__** %351, align 8
  %353 = call i8* %345(%struct.TYPE_44__* %346, %struct.TYPE_41__* %352)
  store i8* %353, i8** %8, align 8
  %354 = load i8*, i8** %8, align 8
  %355 = load i8*, i8** @NGX_CONF_OK, align 8
  %356 = icmp ne i8* %354, %355
  br i1 %356, label %357, label %362

357:                                              ; preds = %342
  %358 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %359 = bitcast %struct.TYPE_44__* %358 to i8*
  %360 = bitcast %struct.TYPE_44__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %359, i8* align 8 %360, i64 48, i1 false)
  %361 = load i8*, i8** %8, align 8
  store i8* %361, i8** %4, align 8
  br label %595

362:                                              ; preds = %342
  br label %363

363:                                              ; preds = %362, %322
  store i64 0, i64* %12, align 8
  br label %364

364:                                              ; preds = %488, %363
  %365 = load i64, i64* %12, align 8
  %366 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %367 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = icmp ult i64 %365, %369
  br i1 %370, label %371, label %491

371:                                              ; preds = %364
  %372 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %20, align 8
  %373 = load i64, i64* %12, align 8
  %374 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %372, i64 %373
  %375 = load %struct.TYPE_40__*, %struct.TYPE_40__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %375, i32 0, i32 0
  %377 = load %struct.TYPE_42__*, %struct.TYPE_42__** %376, align 8
  %378 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %378, i32 0, i32 1
  store %struct.TYPE_42__* %377, %struct.TYPE_42__** %379, align 8
  %380 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %381 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %380, i32 0, i32 2
  %382 = load i8* (%struct.TYPE_44__*, %struct.TYPE_40__*, %struct.TYPE_40__*)*, i8* (%struct.TYPE_44__*, %struct.TYPE_40__*, %struct.TYPE_40__*)** %381, align 8
  %383 = icmp ne i8* (%struct.TYPE_44__*, %struct.TYPE_40__*, %struct.TYPE_40__*)* %382, null
  br i1 %383, label %384, label %416

384:                                              ; preds = %371
  %385 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %386 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %385, i32 0, i32 2
  %387 = load i8* (%struct.TYPE_44__*, %struct.TYPE_40__*, %struct.TYPE_40__*)*, i8* (%struct.TYPE_44__*, %struct.TYPE_40__*, %struct.TYPE_40__*)** %386, align 8
  %388 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %389 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %390 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %389, i32 0, i32 1
  %391 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %390, align 8
  %392 = load i64, i64* %11, align 8
  %393 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %391, i64 %392
  %394 = load %struct.TYPE_40__*, %struct.TYPE_40__** %393, align 8
  %395 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %20, align 8
  %396 = load i64, i64* %12, align 8
  %397 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %395, i64 %396
  %398 = load %struct.TYPE_40__*, %struct.TYPE_40__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %398, i32 0, i32 0
  %400 = load %struct.TYPE_42__*, %struct.TYPE_42__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %400, i32 0, i32 1
  %402 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %401, align 8
  %403 = load i64, i64* %11, align 8
  %404 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %402, i64 %403
  %405 = load %struct.TYPE_40__*, %struct.TYPE_40__** %404, align 8
  %406 = call i8* %387(%struct.TYPE_44__* %388, %struct.TYPE_40__* %394, %struct.TYPE_40__* %405)
  store i8* %406, i8** %8, align 8
  %407 = load i8*, i8** %8, align 8
  %408 = load i8*, i8** @NGX_CONF_OK, align 8
  %409 = icmp ne i8* %407, %408
  br i1 %409, label %410, label %415

410:                                              ; preds = %384
  %411 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %412 = bitcast %struct.TYPE_44__* %411 to i8*
  %413 = bitcast %struct.TYPE_44__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %412, i8* align 8 %413, i64 48, i1 false)
  %414 = load i8*, i8** %8, align 8
  store i8* %414, i8** %4, align 8
  br label %595

415:                                              ; preds = %384
  br label %416

416:                                              ; preds = %415, %371
  %417 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %418 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %417, i32 0, i32 3
  %419 = load i8* (%struct.TYPE_44__*, i32*, i32*)*, i8* (%struct.TYPE_44__*, i32*, i32*)** %418, align 8
  %420 = icmp ne i8* (%struct.TYPE_44__*, i32*, i32*)* %419, null
  br i1 %420, label %421, label %487

421:                                              ; preds = %416
  %422 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %423 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %422, i32 0, i32 3
  %424 = load i8* (%struct.TYPE_44__*, i32*, i32*)*, i8* (%struct.TYPE_44__*, i32*, i32*)** %423, align 8
  %425 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %426 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %427 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %426, i32 0, i32 0
  %428 = load i32**, i32*** %427, align 8
  %429 = load i64, i64* %11, align 8
  %430 = getelementptr inbounds i32*, i32** %428, i64 %429
  %431 = load i32*, i32** %430, align 8
  %432 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %20, align 8
  %433 = load i64, i64* %12, align 8
  %434 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %432, i64 %433
  %435 = load %struct.TYPE_40__*, %struct.TYPE_40__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %435, i32 0, i32 0
  %437 = load %struct.TYPE_42__*, %struct.TYPE_42__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %437, i32 0, i32 0
  %439 = load i32**, i32*** %438, align 8
  %440 = load i64, i64* %11, align 8
  %441 = getelementptr inbounds i32*, i32** %439, i64 %440
  %442 = load i32*, i32** %441, align 8
  %443 = call i8* %424(%struct.TYPE_44__* %425, i32* %431, i32* %442)
  store i8* %443, i8** %8, align 8
  %444 = load i8*, i8** %8, align 8
  %445 = load i8*, i8** @NGX_CONF_OK, align 8
  %446 = icmp ne i8* %444, %445
  br i1 %446, label %447, label %452

447:                                              ; preds = %421
  %448 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %449 = bitcast %struct.TYPE_44__* %448 to i8*
  %450 = bitcast %struct.TYPE_44__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %449, i8* align 8 %450, i64 48, i1 false)
  %451 = load i8*, i8** %8, align 8
  store i8* %451, i8** %4, align 8
  br label %595

452:                                              ; preds = %421
  %453 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %20, align 8
  %454 = load i64, i64* %12, align 8
  %455 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %453, i64 %454
  %456 = load %struct.TYPE_40__*, %struct.TYPE_40__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %456, i32 0, i32 0
  %458 = load %struct.TYPE_42__*, %struct.TYPE_42__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %458, i32 0, i32 1
  %460 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %459, align 8
  %461 = load i64, i64* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @ngx_rtmp_core_module, i32 0, i32 0), align 8
  %462 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %460, i64 %461
  %463 = load %struct.TYPE_40__*, %struct.TYPE_40__** %462, align 8
  store %struct.TYPE_40__* %463, %struct.TYPE_40__** %19, align 8
  %464 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %465 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %466 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %465, i32 0, i32 1
  %467 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %20, align 8
  %468 = load i64, i64* %12, align 8
  %469 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %467, i64 %468
  %470 = load %struct.TYPE_40__*, %struct.TYPE_40__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %470, i32 0, i32 0
  %472 = load %struct.TYPE_42__*, %struct.TYPE_42__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %472, i32 0, i32 0
  %474 = load i32**, i32*** %473, align 8
  %475 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %476 = load i64, i64* %11, align 8
  %477 = call i8* @ngx_rtmp_merge_applications(%struct.TYPE_44__* %464, i32* %466, i32** %474, %struct.TYPE_39__* %475, i64 %476)
  store i8* %477, i8** %8, align 8
  %478 = load i8*, i8** %8, align 8
  %479 = load i8*, i8** @NGX_CONF_OK, align 8
  %480 = icmp ne i8* %478, %479
  br i1 %480, label %481, label %486

481:                                              ; preds = %452
  %482 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %483 = bitcast %struct.TYPE_44__* %482 to i8*
  %484 = bitcast %struct.TYPE_44__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %483, i8* align 8 %484, i64 48, i1 false)
  %485 = load i8*, i8** %8, align 8
  store i8* %485, i8** %4, align 8
  br label %595

486:                                              ; preds = %452
  br label %487

487:                                              ; preds = %486, %416
  br label %488

488:                                              ; preds = %487
  %489 = load i64, i64* %12, align 8
  %490 = add i64 %489, 1
  store i64 %490, i64* %12, align 8
  br label %364

491:                                              ; preds = %364
  br label %492

492:                                              ; preds = %491, %321
  %493 = load i64, i64* %10, align 8
  %494 = add i64 %493, 1
  store i64 %494, i64* %10, align 8
  br label %306

495:                                              ; preds = %306
  %496 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %497 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %498 = call i64 @ngx_rtmp_init_events(%struct.TYPE_44__* %496, %struct.TYPE_41__* %497)
  %499 = load i64, i64* @NGX_OK, align 8
  %500 = icmp ne i64 %498, %499
  br i1 %500, label %501, label %503

501:                                              ; preds = %495
  %502 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %502, i8** %4, align 8
  br label %595

503:                                              ; preds = %495
  store i64 0, i64* %10, align 8
  br label %504

504:                                              ; preds = %543, %503
  %505 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %506 = load i64, i64* %10, align 8
  %507 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %505, i64 %506
  %508 = load %struct.TYPE_43__*, %struct.TYPE_43__** %507, align 8
  %509 = icmp ne %struct.TYPE_43__* %508, null
  br i1 %509, label %510, label %546

510:                                              ; preds = %504
  %511 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %512 = load i64, i64* %10, align 8
  %513 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %511, i64 %512
  %514 = load %struct.TYPE_43__*, %struct.TYPE_43__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = load i64, i64* @NGX_RTMP_MODULE, align 8
  %518 = icmp ne i64 %516, %517
  br i1 %518, label %519, label %520

519:                                              ; preds = %510
  br label %543

520:                                              ; preds = %510
  %521 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %15, align 8
  %522 = load i64, i64* %10, align 8
  %523 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %521, i64 %522
  %524 = load %struct.TYPE_43__*, %struct.TYPE_43__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %524, i32 0, i32 2
  %526 = load %struct.TYPE_39__*, %struct.TYPE_39__** %525, align 8
  store %struct.TYPE_39__* %526, %struct.TYPE_39__** %17, align 8
  %527 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %528 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %527, i32 0, i32 4
  %529 = load i64 (%struct.TYPE_44__*)*, i64 (%struct.TYPE_44__*)** %528, align 8
  %530 = icmp ne i64 (%struct.TYPE_44__*)* %529, null
  br i1 %530, label %531, label %542

531:                                              ; preds = %520
  %532 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %533 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %532, i32 0, i32 4
  %534 = load i64 (%struct.TYPE_44__*)*, i64 (%struct.TYPE_44__*)** %533, align 8
  %535 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %536 = call i64 %534(%struct.TYPE_44__* %535)
  %537 = load i64, i64* @NGX_OK, align 8
  %538 = icmp ne i64 %536, %537
  br i1 %538, label %539, label %541

539:                                              ; preds = %531
  %540 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %540, i8** %4, align 8
  br label %595

541:                                              ; preds = %531
  br label %542

542:                                              ; preds = %541, %520
  br label %543

543:                                              ; preds = %542, %519
  %544 = load i64, i64* %10, align 8
  %545 = add i64 %544, 1
  store i64 %545, i64* %10, align 8
  br label %504

546:                                              ; preds = %504
  %547 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %548 = bitcast %struct.TYPE_44__* %547 to i8*
  %549 = bitcast %struct.TYPE_44__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %548, i8* align 8 %549, i64 48, i1 false)
  %550 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %551 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %552 = call i64 @ngx_rtmp_init_event_handlers(%struct.TYPE_44__* %550, %struct.TYPE_41__* %551)
  %553 = load i64, i64* @NGX_OK, align 8
  %554 = icmp ne i64 %552, %553
  br i1 %554, label %555, label %557

555:                                              ; preds = %546
  %556 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %556, i8** %4, align 8
  br label %595

557:                                              ; preds = %546
  %558 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %559 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = call i64 @ngx_array_init(i32* %14, i32 %560, i32 4, i32 4)
  %562 = load i64, i64* @NGX_OK, align 8
  %563 = icmp ne i64 %561, %562
  br i1 %563, label %564, label %566

564:                                              ; preds = %557
  %565 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %565, i8** %4, align 8
  br label %595

566:                                              ; preds = %557
  %567 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %568 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %567, i32 0, i32 0
  %569 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %568, i32 0, i32 1
  %570 = load i32*, i32** %569, align 8
  store i32* %570, i32** %16, align 8
  store i64 0, i64* %9, align 8
  br label %571

571:                                              ; preds = %589, %566
  %572 = load i64, i64* %9, align 8
  %573 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %574 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = icmp ult i64 %572, %576
  br i1 %577, label %578, label %592

578:                                              ; preds = %571
  %579 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %580 = load i32*, i32** %16, align 8
  %581 = load i64, i64* %9, align 8
  %582 = getelementptr inbounds i32, i32* %580, i64 %581
  %583 = call i64 @ngx_rtmp_add_ports(%struct.TYPE_44__* %579, i32* %14, i32* %582)
  %584 = load i64, i64* @NGX_OK, align 8
  %585 = icmp ne i64 %583, %584
  br i1 %585, label %586, label %588

586:                                              ; preds = %578
  %587 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %587, i8** %4, align 8
  br label %595

588:                                              ; preds = %578
  br label %589

589:                                              ; preds = %588
  %590 = load i64, i64* %9, align 8
  %591 = add i64 %590, 1
  store i64 %591, i64* %9, align 8
  br label %571

592:                                              ; preds = %571
  %593 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %594 = call i8* @ngx_rtmp_optimize_servers(%struct.TYPE_44__* %593, i32* %14)
  store i8* %594, i8** %4, align 8
  br label %595

595:                                              ; preds = %592, %586, %564, %555, %539, %501, %481, %447, %410, %357, %290, %271, %222, %196, %170, %115, %97, %79, %29
  %596 = load i8*, i8** %4, align 8
  ret i8* %596
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_44__*, i32*) #1

declare dso_local i8* @ngx_rtmp_merge_applications(%struct.TYPE_44__*, i32*, i32**, %struct.TYPE_39__*, i64) #1

declare dso_local i64 @ngx_rtmp_init_events(%struct.TYPE_44__*, %struct.TYPE_41__*) #1

declare dso_local i64 @ngx_rtmp_init_event_handlers(%struct.TYPE_44__*, %struct.TYPE_41__*) #1

declare dso_local i64 @ngx_array_init(i32*, i32, i32, i32) #1

declare dso_local i64 @ngx_rtmp_add_ports(%struct.TYPE_44__*, i32*, i32*) #1

declare dso_local i8* @ngx_rtmp_optimize_servers(%struct.TYPE_44__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
