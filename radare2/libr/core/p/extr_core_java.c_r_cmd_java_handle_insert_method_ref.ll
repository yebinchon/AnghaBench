; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_handle_insert_method_ref.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_handle_insert_method_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [76 x i8] c"Unable to access the current analysis, perform 'af' for function analysis.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Would be adding class name:%s, name: %s, descriptor: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @r_cmd_java_handle_insert_method_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_cmd_java_handle_insert_method_ref(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.TYPE_4__* @get_anal(i32* %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = call i64 @r_cmd_java_get_bin_obj(%struct.TYPE_4__* %22)
  %24 = inttoptr i64 %23 to i32*
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32* [ %24, %21 ], [ null, %25 ]
  store i32* %27, i32** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @r_cmd_java_consumetok(i8* %31, i8 signext 32, i32 -1)
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i8* [ %32, %30 ], [ null, %33 ]
  store i8* %35, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %3, align 4
  br label %276

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @r_list_length(i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48, %43, %40
  %55 = call i32 @eprintf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %276

56:                                               ; preds = %48
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %3, align 4
  br label %276

61:                                               ; preds = %56
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = call i8* @r_cmd_java_strtok(i8* %70, i8 signext 32, i32 -1)
  br label %73

72:                                               ; preds = %64, %61
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i8* [ %71, %69 ], [ null, %72 ]
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load i8*, i8** %8, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = icmp ne i8* %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = add nsw i64 %89, 1
  %91 = trunc i64 %90 to i32
  %92 = call i8* @malloc(i32 %91)
  br label %94

93:                                               ; preds = %80, %77, %73
  br label %94

94:                                               ; preds = %93, %84
  %95 = phi i8* [ %92, %84 ], [ null, %93 ]
  store i8* %95, i8** %10, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i8*, i8** %8, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i8*, i8** %9, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = add nsw i64 %106, 1
  br label %109

108:                                              ; preds = %98, %94
  br label %109

109:                                              ; preds = %108, %101
  %110 = phi i64 [ %107, %101 ], [ 0, %108 ]
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %13, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %3, align 4
  br label %276

116:                                              ; preds = %109
  %117 = load i8*, i8** %10, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @snprintf(i8* %117, i32 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %119)
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  store i8* %122, i8** %8, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %116
  %126 = load i8*, i8** %8, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i8*, i8** %8, align 8
  %132 = call i8* @r_cmd_java_strtok(i8* %131, i8 signext 32, i32 -1)
  br label %134

133:                                              ; preds = %125, %116
  br label %134

134:                                              ; preds = %133, %130
  %135 = phi i8* [ %132, %130 ], [ null, %133 ]
  store i8* %135, i8** %9, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %154

138:                                              ; preds = %134
  %139 = load i8*, i8** %8, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load i8*, i8** %8, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = icmp ne i8* %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i8*, i8** %9, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = ptrtoint i8* %146 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  %151 = add nsw i64 %150, 1
  %152 = trunc i64 %151 to i32
  %153 = call i8* @malloc(i32 %152)
  br label %155

154:                                              ; preds = %141, %138, %134
  br label %155

155:                                              ; preds = %154, %145
  %156 = phi i8* [ %153, %145 ], [ null, %154 ]
  store i8* %156, i8** %11, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load i8*, i8** %8, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i8*, i8** %9, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = ptrtoint i8* %163 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = add nsw i64 %167, 1
  br label %170

169:                                              ; preds = %159, %155
  br label %170

170:                                              ; preds = %169, %162
  %171 = phi i64 [ %168, %162 ], [ 0, %169 ]
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %14, align 4
  %173 = load i8*, i8** %11, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %170
  %176 = load i8*, i8** %10, align 8
  %177 = call i32 @free(i8* %176)
  %178 = load i32, i32* %16, align 4
  store i32 %178, i32* %3, align 4
  br label %276

179:                                              ; preds = %170
  %180 = load i8*, i8** %11, align 8
  %181 = load i32, i32* %14, align 4
  %182 = load i8*, i8** %8, align 8
  %183 = call i32 @snprintf(i8* %180, i32 %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %182)
  %184 = load i8*, i8** %9, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  store i8* %185, i8** %8, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %196

188:                                              ; preds = %179
  %189 = load i8*, i8** %8, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load i8*, i8** %8, align 8
  %195 = call i8* @r_cmd_java_strtok(i8* %194, i8 signext 32, i32 -1)
  br label %197

196:                                              ; preds = %188, %179
  br label %197

197:                                              ; preds = %196, %193
  %198 = phi i8* [ %195, %193 ], [ null, %196 ]
  store i8* %198, i8** %9, align 8
  %199 = load i8*, i8** %9, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %230

201:                                              ; preds = %197
  %202 = load i8*, i8** %9, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %220

204:                                              ; preds = %201
  %205 = load i8*, i8** %8, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %220

207:                                              ; preds = %204
  %208 = load i8*, i8** %8, align 8
  %209 = load i8*, i8** %9, align 8
  %210 = icmp ne i8* %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %207
  %212 = load i8*, i8** %9, align 8
  %213 = load i8*, i8** %8, align 8
  %214 = ptrtoint i8* %212 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  %217 = add nsw i64 %216, 1
  %218 = trunc i64 %217 to i32
  %219 = call i8* @malloc(i32 %218)
  br label %221

220:                                              ; preds = %207, %204, %201
  br label %221

221:                                              ; preds = %220, %211
  %222 = phi i8* [ %219, %211 ], [ null, %220 ]
  store i8* %222, i8** %12, align 8
  %223 = load i8*, i8** %9, align 8
  %224 = load i8*, i8** %8, align 8
  %225 = ptrtoint i8* %223 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = add nsw i64 %227, 1
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %15, align 4
  br label %251

230:                                              ; preds = %197
  %231 = load i8*, i8** %8, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %250

233:                                              ; preds = %230
  %234 = load i8*, i8** %8, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %233
  %239 = load i8*, i8** %8, align 8
  %240 = call i32 @strlen(i8* %239)
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %15, align 4
  %242 = load i32, i32* %15, align 4
  %243 = icmp sgt i32 %242, 1
  br i1 %243, label %244, label %247

244:                                              ; preds = %238
  %245 = load i32, i32* %15, align 4
  %246 = call i8* @malloc(i32 %245)
  br label %248

247:                                              ; preds = %238
  br label %248

248:                                              ; preds = %247, %244
  %249 = phi i8* [ %246, %244 ], [ null, %247 ]
  store i8* %249, i8** %12, align 8
  br label %250

250:                                              ; preds = %248, %233, %230
  br label %251

251:                                              ; preds = %250, %221
  %252 = load i8*, i8** %12, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %260, label %254

254:                                              ; preds = %251
  %255 = load i8*, i8** %10, align 8
  %256 = call i32 @free(i8* %255)
  %257 = load i8*, i8** %11, align 8
  %258 = call i32 @free(i8* %257)
  %259 = load i32, i32* %16, align 4
  store i32 %259, i32* %3, align 4
  br label %276

260:                                              ; preds = %251
  %261 = load i8*, i8** %12, align 8
  %262 = load i32, i32* %15, align 4
  %263 = load i8*, i8** %8, align 8
  %264 = call i32 @snprintf(i8* %261, i32 %262, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %263)
  %265 = load i8*, i8** %10, align 8
  %266 = load i8*, i8** %11, align 8
  %267 = load i8*, i8** %12, align 8
  %268 = call i32 @r_cons_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %265, i8* %266, i8* %267)
  %269 = load i8*, i8** %10, align 8
  %270 = call i32 @free(i8* %269)
  %271 = load i8*, i8** %11, align 8
  %272 = call i32 @free(i8* %271)
  %273 = load i8*, i8** %12, align 8
  %274 = call i32 @free(i8* %273)
  store i32 1, i32* %16, align 4
  %275 = load i32, i32* %16, align 4
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %260, %254, %175, %114, %59, %54, %38
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local %struct.TYPE_4__* @get_anal(i32*) #1

declare dso_local i64 @r_cmd_java_get_bin_obj(%struct.TYPE_4__*) #1

declare dso_local i8* @r_cmd_java_consumetok(i8*, i8 signext, i32) #1

declare dso_local i64 @r_list_length(i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i8* @r_cmd_java_strtok(i8*, i8 signext, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_cons_printf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
