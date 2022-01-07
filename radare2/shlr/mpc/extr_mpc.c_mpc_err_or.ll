; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_err_or.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_err_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, i32*, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, %struct.TYPE_8__**, i32)* @mpc_err_or to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @mpc_err_or(i32* %0, %struct.TYPE_8__** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %27, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %18, i64 %20
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %24, %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %13

30:                                               ; preds = %13
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %264

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = call i8* @mpc_malloc(i32* %35, i32 48)
  %37 = bitcast i8* %36 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %11, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 4
  %40 = call i64 (...) @mpc_state_invalid()
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = bitcast %struct.TYPE_9__* %39 to i8*
  %43 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 8, i1 false)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %51, i64 %53
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @strlen(i32* %57)
  %59 = add nsw i32 %58, 1
  %60 = call i8* @mpc_malloc(i32* %50, i32 %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 5
  store i32* %61, i32** %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %67, i64 %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @strcpy(i32* %66, i32* %73)
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %113, %34
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %116

79:                                               ; preds = %75
  %80 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %80, i64 %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = icmp ne %struct.TYPE_8__* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %113

87:                                               ; preds = %79
  %88 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %88, i64 %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %95, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %87
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %104, i64 %106
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = bitcast %struct.TYPE_9__* %103 to i8*
  %111 = bitcast %struct.TYPE_9__* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 8, i1 false)
  br label %112

112:                                              ; preds = %101, %87
  br label %113

113:                                              ; preds = %112, %86
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %75

116:                                              ; preds = %75
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %235, %116
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %238

121:                                              ; preds = %117
  %122 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %122, i64 %124
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = icmp ne %struct.TYPE_8__* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %235

129:                                              ; preds = %121
  %130 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %130, i64 %132
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp slt i64 %137, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %129
  br label %235

144:                                              ; preds = %129
  %145 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %145, i64 %147
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %179

153:                                              ; preds = %144
  %154 = load i32*, i32** %5, align 8
  %155 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %155, i64 %157
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @strlen(i32* %161)
  %163 = add nsw i32 %162, 1
  %164 = call i8* @mpc_malloc(i32* %154, i32 %163)
  %165 = bitcast i8* %164 to i32*
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  store i32* %165, i32** %167, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %171, i64 %173
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @strcpy(i32* %170, i32* %177)
  br label %238

179:                                              ; preds = %144
  %180 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %180, i64 %182
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  store i32 0, i32* %9, align 4
  br label %189

189:                                              ; preds = %231, %179
  %190 = load i32, i32* %9, align 4
  %191 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %191, i64 %193
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %190, %197
  br i1 %198, label %199, label %234

199:                                              ; preds = %189
  %200 = load i32*, i32** %5, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %202 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %202, i64 %204
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @mpc_err_contains_expected(i32* %200, %struct.TYPE_8__* %201, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %230, label %215

215:                                              ; preds = %199
  %216 = load i32*, i32** %5, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %218 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %218, i64 %220
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @mpc_err_add_expected(i32* %216, %struct.TYPE_8__* %217, i32 %228)
  br label %230

230:                                              ; preds = %215, %199
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %189

234:                                              ; preds = %189
  br label %235

235:                                              ; preds = %234, %143, %128
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %8, align 4
  br label %117

238:                                              ; preds = %153, %117
  store i32 0, i32* %8, align 4
  br label %239

239:                                              ; preds = %259, %238
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %262

243:                                              ; preds = %239
  %244 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %244, i64 %246
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = icmp ne %struct.TYPE_8__* %248, null
  br i1 %249, label %251, label %250

250:                                              ; preds = %243
  br label %259

251:                                              ; preds = %243
  %252 = load i32*, i32** %5, align 8
  %253 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %254 = load i32, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %253, i64 %255
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %256, align 8
  %258 = call i32 @mpc_err_delete_internal(i32* %252, %struct.TYPE_8__* %257)
  br label %259

259:                                              ; preds = %251, %250
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %239

262:                                              ; preds = %239
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %263, %struct.TYPE_8__** %4, align 8
  br label %264

264:                                              ; preds = %262, %33
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %265
}

declare dso_local i8* @mpc_malloc(i32*, i32) #1

declare dso_local i64 @mpc_state_invalid(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @strcpy(i32*, i32*) #1

declare dso_local i32 @mpc_err_contains_expected(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mpc_err_add_expected(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mpc_err_delete_internal(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
