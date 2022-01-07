; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_request_translate_vpath.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_request_translate_vpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i64, i8*, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@php_cli_server_request_translate_vpath.index_files = internal global [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [10 x i8] c"index.php\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"index.html\00", align 1
@DEFAULT_SLASH = common dso_local global i8 0, align 1
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i64)* @php_cli_server_request_translate_vpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_cli_server_request_translate_vpath(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add i64 1, %20
  %22 = add i64 %21, 1
  %23 = add i64 %22, 11
  %24 = trunc i64 %23 to i32
  %25 = call i8* @safe_pemalloc(i32 1, i64 %19, i32 %24, i32 1)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @memmove(i8* %27, i8* %28, i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  store i8* %34, i8** %12, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 47
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i8, i8* @DEFAULT_SLASH, align 1
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  store i8 %48, i8* %49, align 1
  br label %51

51:                                               ; preds = %47, %39, %3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8* %58, i8** %11, align 8
  br label %59

59:                                               ; preds = %72, %51
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ugt i8* %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %67, i8** %11, align 8
  %68 = load i8, i8* %66, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 46
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %14, align 4
  br label %73

72:                                               ; preds = %65
  br label %59

73:                                               ; preds = %71, %59
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @memmove(i8* %74, i8* %77, i64 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %84
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** %9, align 8
  store i8* %88, i8** %11, align 8
  br label %89

89:                                               ; preds = %188, %73
  %90 = load i8*, i8** %11, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = icmp ugt i8* %90, %91
  br i1 %92, label %93, label %199

93:                                               ; preds = %89
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @php_sys_stat(i8* %94, %struct.TYPE_5__* %7)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %164, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @S_IFDIR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %163

103:                                              ; preds = %97
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @php_cli_server_request_translate_vpath.index_files, i64 0, i64 0), i8*** %15, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 -1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* @DEFAULT_SLASH, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load i8, i8* @DEFAULT_SLASH, align 1
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %11, align 8
  store i8 %112, i8* %113, align 1
  br label %115

115:                                              ; preds = %111, %103
  br label %116

116:                                              ; preds = %143, %115
  %117 = load i8**, i8*** %15, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %146

120:                                              ; preds = %116
  %121 = load i8**, i8*** %15, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @strlen(i8* %122)
  store i64 %123, i64* %16, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = load i8**, i8*** %15, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = load i64, i64* %16, align 8
  %128 = add i64 %127, 1
  %129 = call i32 @memmove(i8* %124, i8* %126, i64 %128)
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 @php_sys_stat(i8* %130, %struct.TYPE_5__* %7)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %120
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @S_IFREG, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i64, i64* %16, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 %140
  store i8* %142, i8** %11, align 8
  br label %146

143:                                              ; preds = %133, %120
  %144 = load i8**, i8*** %15, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i32 1
  store i8** %145, i8*** %15, align 8
  br label %116

146:                                              ; preds = %139, %116
  %147 = load i8**, i8*** %15, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i32, i32* %14, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %150, %146
  %154 = load i8*, i8** %10, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @pefree(i8* %157, i32 1)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i8*, i8** %8, align 8
  %161 = call i32 @pefree(i8* %160, i32 1)
  br label %279

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %162, %97
  br label %199

164:                                              ; preds = %93
  %165 = load i8*, i8** %10, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i8*, i8** %10, align 8
  %169 = call i32 @pefree(i8* %168, i32 1)
  %170 = load i8, i8* @DEFAULT_SLASH, align 1
  %171 = load i8*, i8** %11, align 8
  store i8 %170, i8* %171, align 1
  br label %172

172:                                              ; preds = %167, %164
  br label %173

173:                                              ; preds = %187, %172
  %174 = load i8*, i8** %11, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = icmp ugt i8* %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %173
  %178 = load i8*, i8** %11, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 -1
  store i8* %179, i8** %11, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = load i8, i8* @DEFAULT_SLASH, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %181, %183
  br label %185

185:                                              ; preds = %177, %173
  %186 = phi i1 [ false, %173 ], [ %184, %177 ]
  br i1 %186, label %187, label %188

187:                                              ; preds = %185
  br label %173

188:                                              ; preds = %185
  %189 = load i8*, i8** %9, align 8
  %190 = load i8*, i8** %11, align 8
  %191 = ptrtoint i8* %189 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  store i64 %193, i64* %13, align 8
  %194 = load i8*, i8** %11, align 8
  %195 = load i64, i64* %13, align 8
  %196 = trunc i64 %195 to i32
  %197 = call i8* @pestrndup(i8* %194, i32 %196, i32 1)
  store i8* %197, i8** %10, align 8
  %198 = load i8*, i8** %11, align 8
  store i8 0, i8* %198, align 1
  br label %89

199:                                              ; preds = %163, %89
  %200 = load i8*, i8** %10, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %241

202:                                              ; preds = %199
  %203 = load i64, i64* %13, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 2
  store i64 %203, i64* %205, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 3
  store i8* %206, i8** %208, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @pefree(i8* %211, i32 1)
  %213 = load i8*, i8** %12, align 8
  %214 = load i8*, i8** %11, align 8
  %215 = load i8*, i8** %12, align 8
  %216 = ptrtoint i8* %214 to i64
  %217 = ptrtoint i8* %215 to i64
  %218 = sub i64 %216, %217
  %219 = trunc i64 %218 to i32
  %220 = call i8* @pestrndup(i8* %213, i32 %219, i32 1)
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  store i8* %220, i8** %222, align 8
  %223 = load i8*, i8** %11, align 8
  %224 = load i8*, i8** %12, align 8
  %225 = ptrtoint i8* %223 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  %230 = load i8*, i8** %8, align 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 4
  store i8* %230, i8** %232, align 8
  %233 = load i8*, i8** %11, align 8
  %234 = load i8*, i8** %8, align 8
  %235 = ptrtoint i8* %233 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  %238 = trunc i64 %237 to i32
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 8
  br label %274

241:                                              ; preds = %199
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @pefree(i8* %244, i32 1)
  %246 = load i8*, i8** %12, align 8
  %247 = load i8*, i8** %11, align 8
  %248 = load i8*, i8** %12, align 8
  %249 = ptrtoint i8* %247 to i64
  %250 = ptrtoint i8* %248 to i64
  %251 = sub i64 %249, %250
  %252 = trunc i64 %251 to i32
  %253 = call i8* @pestrndup(i8* %246, i32 %252, i32 1)
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 1
  store i8* %253, i8** %255, align 8
  %256 = load i8*, i8** %11, align 8
  %257 = load i8*, i8** %12, align 8
  %258 = ptrtoint i8* %256 to i64
  %259 = ptrtoint i8* %257 to i64
  %260 = sub i64 %258, %259
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  store i64 %260, i64* %262, align 8
  %263 = load i8*, i8** %8, align 8
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 4
  store i8* %263, i8** %265, align 8
  %266 = load i8*, i8** %11, align 8
  %267 = load i8*, i8** %8, align 8
  %268 = ptrtoint i8* %266 to i64
  %269 = ptrtoint i8* %267 to i64
  %270 = sub i64 %268, %269
  %271 = trunc i64 %270 to i32
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 5
  store i32 %271, i32* %273, align 8
  br label %274

274:                                              ; preds = %241, %202
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 6
  %277 = bitcast %struct.TYPE_5__* %276 to i8*
  %278 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %277, i8* align 4 %278, i64 4, i1 false)
  br label %279

279:                                              ; preds = %274, %159
  ret void
}

declare dso_local i8* @safe_pemalloc(i32, i64, i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @php_sys_stat(i8*, %struct.TYPE_5__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pefree(i8*, i32) #1

declare dso_local i8* @pestrndup(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
