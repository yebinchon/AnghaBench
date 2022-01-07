; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_profile.c_PROFILE_Find.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_profile.c_PROFILE_Find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__*, i32* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_7__*, %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_6__**, i64*, i64*, i32, i32)* @PROFILE_Find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @PROFILE_Find(%struct.TYPE_6__** %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__**, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %21, %5
  %17 = load i64*, i64** %8, align 8
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @PROFILE_isspaceW(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64*, i64** %8, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %8, align 8
  br label %16

24:                                               ; preds = %16
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = load i64*, i64** %8, align 8
  %30 = load i64*, i64** %8, align 8
  %31 = call i32 @strlenW(i64* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = getelementptr inbounds i64, i64* %33, i64 -1
  store i64* %34, i64** %12, align 8
  br label %35

35:                                               ; preds = %46, %28
  %36 = load i64*, i64** %12, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = icmp ugt i64* %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i64*, i64** %12, align 8
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @PROFILE_isspaceW(i64 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i64*, i64** %12, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 -1
  store i64* %48, i64** %12, align 8
  br label %35

49:                                               ; preds = %44
  %50 = load i64*, i64** %12, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = ptrtoint i64* %50 to i64
  %53 = ptrtoint i64* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 8
  %56 = add nsw i64 %55, 1
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %49, %24
  br label %59

59:                                               ; preds = %64, %58
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @PROFILE_isspaceW(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i64*, i64** %9, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %9, align 8
  br label %59

67:                                               ; preds = %59
  %68 = load i64*, i64** %9, align 8
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %67
  %72 = load i64*, i64** %9, align 8
  %73 = load i64*, i64** %9, align 8
  %74 = call i32 @strlenW(i64* %73)
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  %77 = getelementptr inbounds i64, i64* %76, i64 -1
  store i64* %77, i64** %12, align 8
  br label %78

78:                                               ; preds = %89, %71
  %79 = load i64*, i64** %12, align 8
  %80 = load i64*, i64** %9, align 8
  %81 = icmp ugt i64* %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i64*, i64** %12, align 8
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @PROFILE_isspaceW(i64 %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i1 [ false, %78 ], [ %86, %82 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i64*, i64** %12, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 -1
  store i64* %91, i64** %12, align 8
  br label %78

92:                                               ; preds = %87
  %93 = load i64*, i64** %12, align 8
  %94 = load i64*, i64** %9, align 8
  %95 = ptrtoint i64* %93 to i64
  %96 = ptrtoint i64* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 8
  %99 = add nsw i64 %98, 1
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %92, %67
  br label %102

102:                                              ; preds = %197, %101
  %103 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = icmp ne %struct.TYPE_6__* %104, null
  br i1 %105, label %106, label %201

106:                                              ; preds = %102
  %107 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i64*, i64** %8, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @strncmpiW(i8* %110, i64* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %197, label %115

115:                                              ; preds = %106
  %116 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %197

126:                                              ; preds = %115
  %127 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  store %struct.TYPE_7__** %129, %struct.TYPE_7__*** %15, align 8
  br label %130

130:                                              ; preds = %161, %126
  %131 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = icmp ne %struct.TYPE_7__* %132, null
  br i1 %133, label %134, label %165

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %161, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i64*, i64** %9, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @strncmpiW(i8* %141, i64* %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %137
  %147 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %146
  %158 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  store %struct.TYPE_7__* %159, %struct.TYPE_7__** %6, align 8
  br label %271

160:                                              ; preds = %146, %137
  br label %161

161:                                              ; preds = %160, %134
  %162 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  store %struct.TYPE_7__** %164, %struct.TYPE_7__*** %15, align 8
  br label %130

165:                                              ; preds = %130
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %271

169:                                              ; preds = %165
  %170 = call i32 (...) @GetProcessHeap()
  %171 = load i64*, i64** %9, align 8
  %172 = call i32 @strlenW(i64* %171)
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 4
  %175 = add i64 24, %174
  %176 = trunc i64 %175 to i32
  %177 = call i8* @HeapAlloc(i32 %170, i32 0, i32 %176)
  %178 = bitcast i8* %177 to %struct.TYPE_7__*
  %179 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  store %struct.TYPE_7__* %178, %struct.TYPE_7__** %179, align 8
  %180 = icmp ne %struct.TYPE_7__* %178, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %169
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %271

182:                                              ; preds = %169
  %183 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i64*, i64** %9, align 8
  %188 = call i32 @strcpyW(i8* %186, i64* %187)
  %189 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  store i32* null, i32** %191, align 8
  %192 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %194, align 8
  %195 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  store %struct.TYPE_7__* %196, %struct.TYPE_7__** %6, align 8
  br label %271

197:                                              ; preds = %115, %106
  %198 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  store %struct.TYPE_6__** %200, %struct.TYPE_6__*** %7, align 8
  br label %102

201:                                              ; preds = %102
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %201
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %271

205:                                              ; preds = %201
  %206 = call i32 (...) @GetProcessHeap()
  %207 = load i64*, i64** %8, align 8
  %208 = call i32 @strlenW(i64* %207)
  %209 = sext i32 %208 to i64
  %210 = mul i64 %209, 4
  %211 = add i64 24, %210
  %212 = trunc i64 %211 to i32
  %213 = call i8* @HeapAlloc(i32 %206, i32 0, i32 %212)
  %214 = bitcast i8* %213 to %struct.TYPE_6__*
  %215 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %214, %struct.TYPE_6__** %215, align 8
  %216 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = icmp eq %struct.TYPE_6__* %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %205
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %271

220:                                              ; preds = %205
  %221 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = load i64*, i64** %8, align 8
  %226 = call i32 @strcpyW(i8* %224, i64* %225)
  %227 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %229, align 8
  %230 = call i32 (...) @GetProcessHeap()
  %231 = load i64*, i64** %9, align 8
  %232 = call i32 @strlenW(i64* %231)
  %233 = sext i32 %232 to i64
  %234 = mul i64 %233, 4
  %235 = add i64 24, %234
  %236 = trunc i64 %235 to i32
  %237 = call i8* @HeapAlloc(i32 %230, i32 0, i32 %236)
  %238 = bitcast i8* %237 to %struct.TYPE_7__*
  %239 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  store %struct.TYPE_7__* %238, %struct.TYPE_7__** %241, align 8
  %242 = icmp ne %struct.TYPE_7__* %238, null
  br i1 %242, label %248, label %243

243:                                              ; preds = %220
  %244 = call i32 (...) @GetProcessHeap()
  %245 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = call i32 @HeapFree(i32 %244, i32 0, %struct.TYPE_6__* %246)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %271

248:                                              ; preds = %220
  %249 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = load i64*, i64** %9, align 8
  %256 = call i32 @strcpyW(i8* %254, i64* %255)
  %257 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 2
  store i32* null, i32** %261, align 8
  %262 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %266, align 8
  %267 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %269, align 8
  store %struct.TYPE_7__* %270, %struct.TYPE_7__** %6, align 8
  br label %271

271:                                              ; preds = %248, %243, %219, %204, %182, %181, %168, %157
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %272
}

declare dso_local i64 @PROFILE_isspaceW(i64) #1

declare dso_local i32 @strlenW(i64*) #1

declare dso_local i32 @strncmpiW(i8*, i64*, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strcpyW(i8*, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
