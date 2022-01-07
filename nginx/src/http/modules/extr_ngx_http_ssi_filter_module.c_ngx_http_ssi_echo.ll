; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_echo.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_27__** }
%struct.TYPE_27__ = type { %struct.TYPE_27__*, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32*, i32* }
%struct.TYPE_24__ = type { i64, i32*, i32 }

@NGX_HTTP_SSI_ECHO_VAR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ssi echo \22%V\22\00", align 1
@NGX_HTTP_SSI_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_SSI_ECHO_DEFAULT = common dso_local global i64 0, align 8
@ngx_http_ssi_none = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_SSI_ECHO_ENCODING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@NGX_HTTP_SSI_NO_ENCODING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"entity\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"unknown encoding \22%V\22 in the \22echo\22 command\00", align 1
@NGX_ESCAPE_HTML = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_23__**)* @ngx_http_ssi_echo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_ssi_echo(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1, %struct.TYPE_23__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_23__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_23__** %2, %struct.TYPE_23__*** %7, align 8
  %18 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %19 = load i64, i64* @NGX_HTTP_SSI_ECHO_VAR, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %18, i64 %19
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %11, align 8
  %22 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %29 = call i32 @ngx_log_debug1(i32 %22, i32 %27, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_23__* %28)
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ngx_hash_strlow(i32* %32, i32* %35, i64 %38)
  store i32 %39, i32* %15, align 4
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call %struct.TYPE_23__* @ngx_http_ssi_get_variable(%struct.TYPE_26__* %40, %struct.TYPE_23__* %41, i32 %42)
  store %struct.TYPE_23__* %43, %struct.TYPE_23__** %12, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %45 = icmp eq %struct.TYPE_23__* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %3
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call %struct.TYPE_24__* @ngx_http_get_variable(%struct.TYPE_26__* %47, %struct.TYPE_23__* %48, i32 %49)
  store %struct.TYPE_24__* %50, %struct.TYPE_24__** %17, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %52 = icmp eq %struct.TYPE_24__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @NGX_HTTP_SSI_ERROR, align 4
  store i32 %54, i32* %4, align 4
  br label %302

55:                                               ; preds = %46
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  store i32* %63, i32** %64, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %12, align 8
  br label %69

69:                                               ; preds = %60, %55
  br label %70

70:                                               ; preds = %69, %3
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %72 = icmp eq %struct.TYPE_23__* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %75 = load i64, i64* @NGX_HTTP_SSI_ECHO_DEFAULT, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %74, i64 %75
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %76, align 8
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %12, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %79 = icmp eq %struct.TYPE_23__* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store %struct.TYPE_23__* @ngx_http_ssi_none, %struct.TYPE_23__** %12, align 8
  br label %89

81:                                               ; preds = %73
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @NGX_OK, align 4
  store i32 %87, i32* %4, align 4
  br label %302

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %80
  br label %98

90:                                               ; preds = %70
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @NGX_OK, align 4
  store i32 %96, i32* %4, align 4
  br label %302

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %89
  %99 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %100 = load i64, i64* @NGX_HTTP_SSI_ECHO_ENCODING, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %99, i64 %100
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %101, align 8
  store %struct.TYPE_23__* %102, %struct.TYPE_23__** %13, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %104 = icmp ne %struct.TYPE_23__* %103, null
  br i1 %104, label %105, label %160

105:                                              ; preds = %98
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 4
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i64 @ngx_strncmp(i32* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* @NGX_HTTP_SSI_NO_ENCODING, align 4
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %159

120:                                              ; preds = %110, %105
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 3
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = call i64 @ngx_strncmp(i32* %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  store i32 128, i32* %133, align 8
  br label %158

134:                                              ; preds = %125, %120
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 6
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @ngx_strncmp(i32* %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  store i32 129, i32* %147, align 8
  br label %157

148:                                              ; preds = %139, %134
  %149 = load i32, i32* @NGX_LOG_ERR, align 4
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %156 = call i32 @ngx_log_error(i32 %149, i32 %154, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_23__* %155)
  br label %157

157:                                              ; preds = %148, %145
  br label %158

158:                                              ; preds = %157, %131
  br label %159

159:                                              ; preds = %158, %116
  br label %160

160:                                              ; preds = %159, %98
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  store i32* %163, i32** %8, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  switch i32 %166, label %255 [
    i32 128, label %167
    i32 129, label %213
  ]

167:                                              ; preds = %160
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* @NGX_ESCAPE_HTML, align 4
  %176 = call i32 @ngx_escape_uri(i32* null, i32* %170, i32 %174, i32 %175)
  %177 = mul nsw i32 2, %176
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %9, align 8
  %179 = load i64, i64* %9, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %207

181:                                              ; preds = %167
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %9, align 8
  %189 = add i64 %187, %188
  %190 = trunc i64 %189 to i32
  %191 = call i32* @ngx_pnalloc(i32 %184, i32 %190)
  store i32* %191, i32** %8, align 8
  %192 = load i32*, i32** %8, align 8
  %193 = icmp eq i32* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %181
  %195 = load i32, i32* @NGX_HTTP_SSI_ERROR, align 4
  store i32 %195, i32* %4, align 4
  br label %302

196:                                              ; preds = %181
  %197 = load i32*, i32** %8, align 8
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = load i32, i32* @NGX_ESCAPE_HTML, align 4
  %206 = call i32 @ngx_escape_uri(i32* %197, i32* %200, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %196, %167
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %9, align 8
  %212 = add i64 %211, %210
  store i64 %212, i64* %9, align 8
  br label %259

213:                                              ; preds = %160
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = trunc i64 %219 to i32
  %221 = call i64 @ngx_escape_html(i32* null, i32* %216, i32 %220)
  store i64 %221, i64* %9, align 8
  %222 = load i64, i64* %9, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %249

224:                                              ; preds = %213
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* %9, align 8
  %232 = add i64 %230, %231
  %233 = trunc i64 %232 to i32
  %234 = call i32* @ngx_pnalloc(i32 %227, i32 %233)
  store i32* %234, i32** %8, align 8
  %235 = load i32*, i32** %8, align 8
  %236 = icmp eq i32* %235, null
  br i1 %236, label %237, label %239

237:                                              ; preds = %224
  %238 = load i32, i32* @NGX_HTTP_SSI_ERROR, align 4
  store i32 %238, i32* %4, align 4
  br label %302

239:                                              ; preds = %224
  %240 = load i32*, i32** %8, align 8
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = trunc i64 %246 to i32
  %248 = call i64 @ngx_escape_html(i32* %240, i32* %243, i32 %247)
  br label %249

249:                                              ; preds = %239, %213
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* %9, align 8
  %254 = add i64 %253, %252
  store i64 %254, i64* %9, align 8
  br label %259

255:                                              ; preds = %160
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %9, align 8
  br label %259

259:                                              ; preds = %255, %249, %207
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call %struct.TYPE_28__* @ngx_calloc_buf(i32 %262)
  store %struct.TYPE_28__* %263, %struct.TYPE_28__** %10, align 8
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %265 = icmp eq %struct.TYPE_28__* %264, null
  br i1 %265, label %266, label %268

266:                                              ; preds = %259
  %267 = load i32, i32* @NGX_HTTP_SSI_ERROR, align 4
  store i32 %267, i32* %4, align 4
  br label %302

268:                                              ; preds = %259
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call %struct.TYPE_27__* @ngx_alloc_chain_link(i32 %271)
  store %struct.TYPE_27__* %272, %struct.TYPE_27__** %16, align 8
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %274 = icmp eq %struct.TYPE_27__* %273, null
  br i1 %274, label %275, label %277

275:                                              ; preds = %268
  %276 = load i32, i32* @NGX_HTTP_SSI_ERROR, align 4
  store i32 %276, i32* %4, align 4
  br label %302

277:                                              ; preds = %268
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i32 0, i32 0
  store i32 1, i32* %279, align 8
  %280 = load i32*, i32** %8, align 8
  %281 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %281, i32 0, i32 2
  store i32* %280, i32** %282, align 8
  %283 = load i32*, i32** %8, align 8
  %284 = load i64, i64* %9, align 8
  %285 = getelementptr inbounds i32, i32* %283, i64 %284
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i32 0, i32 1
  store i32* %285, i32** %287, align 8
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %289 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %290 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %289, i32 0, i32 1
  store %struct.TYPE_28__* %288, %struct.TYPE_28__** %290, align 8
  %291 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 0
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %292, align 8
  %293 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %295, align 8
  store %struct.TYPE_27__* %293, %struct.TYPE_27__** %296, align 8
  %297 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %298 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 1
  store %struct.TYPE_27__** %298, %struct.TYPE_27__*** %300, align 8
  %301 = load i32, i32* @NGX_OK, align 4
  store i32 %301, i32* %4, align 4
  br label %302

302:                                              ; preds = %277, %275, %266, %237, %194, %95, %86, %53
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_23__*) #1

declare dso_local i32 @ngx_hash_strlow(i32*, i32*, i64) #1

declare dso_local %struct.TYPE_23__* @ngx_http_ssi_get_variable(%struct.TYPE_26__*, %struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_http_get_variable(%struct.TYPE_26__*, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @ngx_strncmp(i32*, i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_23__*) #1

declare dso_local i32 @ngx_escape_uri(i32*, i32*, i32, i32) #1

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

declare dso_local i64 @ngx_escape_html(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_calloc_buf(i32) #1

declare dso_local %struct.TYPE_27__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
