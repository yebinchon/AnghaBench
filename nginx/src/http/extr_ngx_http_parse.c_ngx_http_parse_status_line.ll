; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_parse.c_ngx_http_parse_status_line.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_parse.c_ngx_http_parse_status_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_parse_status_line(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %224, %3
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ult i8* %18, %21
  br i1 %22, label %23, label %227

23:                                               ; preds = %17
  %24 = load i8*, i8** %9, align 8
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %8, align 1
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %223 [
    i32 0, label %27
    i32 1, label %34
    i32 2, label %41
    i32 3, label %48
    i32 4, label %55
    i32 5, label %62
    i32 6, label %78
    i32 7, label %111
    i32 8, label %127
    i32 9, label %160
    i32 10, label %197
    i32 11, label %207
    i32 12, label %213
  ]

27:                                               ; preds = %23
  %28 = load i8, i8* %8, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %31 [
    i32 72, label %30
  ]

30:                                               ; preds = %27
  store i32 1, i32* %10, align 4
  br label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @NGX_ERROR, align 4
  store i32 %32, i32* %4, align 4
  br label %262

33:                                               ; preds = %30
  br label %223

34:                                               ; preds = %23
  %35 = load i8, i8* %8, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %38 [
    i32 84, label %37
  ]

37:                                               ; preds = %34
  store i32 2, i32* %10, align 4
  br label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @NGX_ERROR, align 4
  store i32 %39, i32* %4, align 4
  br label %262

40:                                               ; preds = %37
  br label %223

41:                                               ; preds = %23
  %42 = load i8, i8* %8, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %45 [
    i32 84, label %44
  ]

44:                                               ; preds = %41
  store i32 3, i32* %10, align 4
  br label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @NGX_ERROR, align 4
  store i32 %46, i32* %4, align 4
  br label %262

47:                                               ; preds = %44
  br label %223

48:                                               ; preds = %23
  %49 = load i8, i8* %8, align 1
  %50 = sext i8 %49 to i32
  switch i32 %50, label %52 [
    i32 80, label %51
  ]

51:                                               ; preds = %48
  store i32 4, i32* %10, align 4
  br label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @NGX_ERROR, align 4
  store i32 %53, i32* %4, align 4
  br label %262

54:                                               ; preds = %51
  br label %223

55:                                               ; preds = %23
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  switch i32 %57, label %59 [
    i32 47, label %58
  ]

58:                                               ; preds = %55
  store i32 5, i32* %10, align 4
  br label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @NGX_ERROR, align 4
  store i32 %60, i32* %4, align 4
  br label %262

61:                                               ; preds = %58
  br label %223

62:                                               ; preds = %23
  %63 = load i8, i8* %8, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp slt i32 %64, 49
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i8, i8* %8, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sgt i32 %68, 57
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %62
  %71 = load i32, i32* @NGX_ERROR, align 4
  store i32 %71, i32* %4, align 4
  br label %262

72:                                               ; preds = %66
  %73 = load i8, i8* %8, align 1
  %74 = sext i8 %73 to i32
  %75 = sub nsw i32 %74, 48
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  store i32 6, i32* %10, align 4
  br label %223

78:                                               ; preds = %23
  %79 = load i8, i8* %8, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 46
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 7, i32* %10, align 4
  br label %223

83:                                               ; preds = %78
  %84 = load i8, i8* %8, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp slt i32 %85, 48
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i8, i8* %8, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sgt i32 %89, 57
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %83
  %92 = load i32, i32* @NGX_ERROR, align 4
  store i32 %92, i32* %4, align 4
  br label %262

93:                                               ; preds = %87
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 99
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @NGX_ERROR, align 4
  store i32 %99, i32* %4, align 4
  br label %262

100:                                              ; preds = %93
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 10
  %105 = load i8, i8* %8, align 1
  %106 = sext i8 %105 to i32
  %107 = sub nsw i32 %106, 48
  %108 = add nsw i32 %104, %107
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %223

111:                                              ; preds = %23
  %112 = load i8, i8* %8, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp slt i32 %113, 48
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i8, i8* %8, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp sgt i32 %117, 57
  br i1 %118, label %119, label %121

119:                                              ; preds = %115, %111
  %120 = load i32, i32* @NGX_ERROR, align 4
  store i32 %120, i32* %4, align 4
  br label %262

121:                                              ; preds = %115
  %122 = load i8, i8* %8, align 1
  %123 = sext i8 %122 to i32
  %124 = sub nsw i32 %123, 48
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  store i32 8, i32* %10, align 4
  br label %223

127:                                              ; preds = %23
  %128 = load i8, i8* %8, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 32
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 9, i32* %10, align 4
  br label %223

132:                                              ; preds = %127
  %133 = load i8, i8* %8, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp slt i32 %134, 48
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i8, i8* %8, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp sgt i32 %138, 57
  br i1 %139, label %140, label %142

140:                                              ; preds = %136, %132
  %141 = load i32, i32* @NGX_ERROR, align 4
  store i32 %141, i32* %4, align 4
  br label %262

142:                                              ; preds = %136
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %145, 99
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @NGX_ERROR, align 4
  store i32 %148, i32* %4, align 4
  br label %262

149:                                              ; preds = %142
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %152, 10
  %154 = load i8, i8* %8, align 1
  %155 = sext i8 %154 to i32
  %156 = sub nsw i32 %155, 48
  %157 = add nsw i32 %153, %156
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  br label %223

160:                                              ; preds = %23
  %161 = load i8, i8* %8, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 32
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %223

165:                                              ; preds = %160
  %166 = load i8, i8* %8, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp slt i32 %167, 48
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i8, i8* %8, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp sgt i32 %171, 57
  br i1 %172, label %173, label %175

173:                                              ; preds = %169, %165
  %174 = load i32, i32* @NGX_ERROR, align 4
  store i32 %174, i32* %4, align 4
  br label %262

175:                                              ; preds = %169
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = mul nsw i32 %178, 10
  %180 = load i8, i8* %8, align 1
  %181 = sext i8 %180 to i32
  %182 = sub nsw i32 %181, 48
  %183 = add nsw i32 %179, %182
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 4
  %190 = icmp eq i32 %189, 3
  br i1 %190, label %191, label %196

191:                                              ; preds = %175
  store i32 10, i32* %10, align 4
  %192 = load i8*, i8** %9, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 -2
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  br label %196

196:                                              ; preds = %191, %175
  br label %223

197:                                              ; preds = %23
  %198 = load i8, i8* %8, align 1
  %199 = sext i8 %198 to i32
  switch i32 %199, label %204 [
    i32 32, label %200
    i32 46, label %201
    i32 129, label %202
    i32 128, label %203
  ]

200:                                              ; preds = %197
  store i32 11, i32* %10, align 4
  br label %206

201:                                              ; preds = %197
  store i32 11, i32* %10, align 4
  br label %206

202:                                              ; preds = %197
  store i32 12, i32* %10, align 4
  br label %206

203:                                              ; preds = %197
  br label %235

204:                                              ; preds = %197
  %205 = load i32, i32* @NGX_ERROR, align 4
  store i32 %205, i32* %4, align 4
  br label %262

206:                                              ; preds = %202, %201, %200
  br label %223

207:                                              ; preds = %23
  %208 = load i8, i8* %8, align 1
  %209 = sext i8 %208 to i32
  switch i32 %209, label %212 [
    i32 129, label %210
    i32 128, label %211
  ]

210:                                              ; preds = %207
  store i32 12, i32* %10, align 4
  br label %212

211:                                              ; preds = %207
  br label %235

212:                                              ; preds = %207, %210
  br label %223

213:                                              ; preds = %23
  %214 = load i8*, i8** %9, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 -1
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 3
  store i8* %215, i8** %217, align 8
  %218 = load i8, i8* %8, align 1
  %219 = sext i8 %218 to i32
  switch i32 %219, label %221 [
    i32 128, label %220
  ]

220:                                              ; preds = %213
  br label %235

221:                                              ; preds = %213
  %222 = load i32, i32* @NGX_ERROR, align 4
  store i32 %222, i32* %4, align 4
  br label %262

223:                                              ; preds = %23, %212, %206, %196, %164, %149, %131, %121, %100, %82, %72, %61, %54, %47, %40, %33
  br label %224

224:                                              ; preds = %223
  %225 = load i8*, i8** %9, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %9, align 8
  br label %17

227:                                              ; preds = %17
  %228 = load i8*, i8** %9, align 8
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  store i8* %228, i8** %230, align 8
  %231 = load i32, i32* %10, align 4
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %234, i32* %4, align 4
  br label %262

235:                                              ; preds = %220, %211, %203
  %236 = load i8*, i8** %9, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 1
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  %242 = load i8*, i8** %241, align 8
  %243 = icmp eq i8* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %235
  %245 = load i8*, i8** %9, align 8
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 3
  store i8* %245, i8** %247, align 8
  br label %248

248:                                              ; preds = %244, %235
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = mul nsw i32 %251, 1000
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %252, %255
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 4
  store i32 %256, i32* %258, align 8
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  store i32 0, i32* %260, align 4
  %261 = load i32, i32* @NGX_OK, align 4
  store i32 %261, i32* %4, align 4
  br label %262

262:                                              ; preds = %248, %227, %221, %204, %173, %147, %140, %119, %98, %91, %70, %59, %52, %45, %38, %31
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
