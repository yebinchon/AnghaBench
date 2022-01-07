; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_make_request.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_29__ = type { i32, i32* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_27__, %struct.TYPE_24__*, %struct.TYPE_20__, %struct.TYPE_21__ }
%struct.TYPE_27__ = type { i64, i32* }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32, i32*, i64, i32, i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_22__ }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_22__ = type { i32, i32* }

@message_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"message_id: %d.\0A\00", align 1
@the_token = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@COAP_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@COAP_OPTION_URI_HOST = common dso_local global i32 0, align 4
@COAP_DEFAULT_PORT = common dso_local global i64 0, align 8
@COAP_OPTION_URI_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coap_make_request(%struct.TYPE_29__* %0, %struct.TYPE_19__* %1, i32 %2, i32 %3, %struct.TYPE_28__* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %9, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_28__* %4, %struct.TYPE_28__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @message_id, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* @message_id, align 4
  %41 = and i32 %40, 255
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* @message_id, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @message_id, align 4
  %49 = load i32, i32* @message_id, align 4
  %50 = call i32 @NODE_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @the_token, i32 0, i32 0), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %7
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @the_token, i32 0, i32 0), align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  store i64 %56, i64* %59, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 3
  %62 = bitcast %struct.TYPE_20__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 bitcast (%struct.TYPE_20__* @the_token to i8*), i64 8, i1 false)
  br label %63

63:                                               ; preds = %55, %7
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @COAP_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %69, i32* %8, align 4
  br label %227

70:                                               ; preds = %63
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %17, align 8
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %70
  %80 = load i32, i32* @COAP_OPTION_URI_HOST, align 4
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 1
  store i32 %80, i32* %88, align 8
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %94, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  store i32* %92, i32** %101, align 8
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %107, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  store i32 %105, i32* %114, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %116, align 8
  br label %119

119:                                              ; preds = %79, %70
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @COAP_DEFAULT_PORT, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %179

125:                                              ; preds = %119
  %126 = load i32, i32* @COAP_OPTION_URI_PORT, align 4
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %128, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 1
  store i32 %126, i32* %134, align 8
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @coap_encode_var_bytes(i32* %137, i64 %140)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %144, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  store i32 %142, i32* %151, align 8
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %156, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  store i32* %154, i32** %163, align 8
  %164 = load i32, i32* %16, align 4
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = sext i32 %164 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %166, align 8
  %170 = load i32, i32* %16, align 4
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %176, align 8
  br label %179

179:                                              ; preds = %125, %119
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %179
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @coap_split_path(%struct.TYPE_29__* %186, %struct.TYPE_19__* %187, i32 %191, i64 %195)
  store i32 %196, i32* %16, align 4
  br label %197

197:                                              ; preds = %185, %179
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %197
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @coap_split_query(%struct.TYPE_29__* %204, %struct.TYPE_19__* %205, i32 %209, i64 %213)
  store i32 %214, i32* %16, align 4
  br label %215

215:                                              ; preds = %203, %197
  %216 = load i32*, i32** %14, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 1
  store i32* %216, i32** %219, align 8
  %220 = load i64, i64* %15, align 8
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 0
  store i64 %220, i64* %223, align 8
  %224 = load i32*, i32** %17, align 8
  %225 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %225, i32 0, i32 1
  store i32* %224, i32** %226, align 8
  store i32 0, i32* %8, align 4
  br label %227

227:                                              ; preds = %215, %68
  %228 = load i32, i32* %8, align 4
  ret i32 %228
}

declare dso_local i32 @NODE_DBG(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @coap_encode_var_bytes(i32*, i64) #1

declare dso_local i32 @coap_split_path(%struct.TYPE_29__*, %struct.TYPE_19__*, i32, i64) #1

declare dso_local i32 @coap_split_query(%struct.TYPE_29__*, %struct.TYPE_19__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
