; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_cred.c_convert_PCREDENTIALW_to_PCREDENTIALA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_cred.c_convert_PCREDENTIALW_to_PCREDENTIALA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i64, i8*, i8*, i32*, i64, i32, i32*, i32, i32, i32 }

@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, %struct.TYPE_5__*, i64)* @convert_PCREDENTIALW_to_PCREDENTIALA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_PCREDENTIALW_to_PCREDENTIALA(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 4, i64* %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %72, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i32, i32* @CP_ACP, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @WideCharToMultiByte(i32 %19, i32 0, i64 %22, i32 -1, i8* null, i64 0, i32* null, i32* null)
  %24 = load i64, i64* %10, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %18, %13
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* @CP_ACP, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @WideCharToMultiByte(i32 %32, i32 0, i64 %35, i32 -1, i8* null, i64 0, i32* null, i32* null)
  %37 = load i64, i64* %10, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %10, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load i32, i32* @CP_ACP, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @WideCharToMultiByte(i32 %50, i32 0, i64 %53, i32 -1, i8* null, i64 0, i32* null, i32* null)
  %55 = load i64, i64* %10, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %49, %39
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* @CP_ACP, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @WideCharToMultiByte(i32 %63, i32 0, i64 %66, i32 -1, i8* null, i64 0, i32* null, i32* null)
  %68 = load i64, i64* %10, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %62, %57
  %71 = load i64, i64* %10, align 8
  store i64 %71, i64* %4, align 8
  br label %258

72:                                               ; preds = %3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = bitcast %struct.TYPE_5__* %73 to i8*
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  store i8* %75, i8** %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = sub i64 %76, 4
  store i64 %77, i64* %7, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 11
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %72
  %93 = load i8*, i8** %8, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @CP_ACP, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i64 @WideCharToMultiByte(i32 %96, i32 0, i64 %99, i32 -1, i8* %100, i64 %101, i32* null, i32* null)
  store i64 %102, i64* %9, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 %103
  store i8* %105, i8** %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %7, align 8
  %111 = sub nsw i64 %110, %109
  store i64 %111, i64* %7, align 8
  br label %115

112:                                              ; preds = %72
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i8* null, i8** %114, align 8
  br label %115

115:                                              ; preds = %112, %92
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %115
  %121 = load i8*, i8** %8, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load i32, i32* @CP_ACP, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load i64, i64* %7, align 8
  %130 = call i64 @WideCharToMultiByte(i32 %124, i32 0, i64 %127, i32 -1, i8* %128, i64 %129, i32* null, i32* null)
  store i64 %130, i64* %9, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 %131
  store i8* %133, i8** %8, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* %10, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* %7, align 8
  %139 = sub nsw i64 %138, %137
  store i64 %139, i64* %7, align 8
  br label %143

140:                                              ; preds = %115
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  store i8* null, i8** %142, align 8
  br label %143

143:                                              ; preds = %140, %120
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 9
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %194

158:                                              ; preds = %143
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %7, align 8
  %163 = icmp sle i64 %161, %162
  br i1 %163, label %164, label %194

164:                                              ; preds = %158
  %165 = load i8*, i8** %8, align 8
  %166 = bitcast i8* %165 to i32*
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 8
  store i32* %166, i32** %168, align 8
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 8
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @memcpy(i32* %171, i32 %174, i64 %177)
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i8*, i8** %8, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 %181
  store i8* %183, i8** %8, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %10, align 8
  %188 = add nsw i64 %187, %186
  store i64 %188, i64* %10, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %7, align 8
  %193 = sub nsw i64 %192, %191
  store i64 %193, i64* %7, align 8
  br label %197

194:                                              ; preds = %158, %143
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 8
  store i32* null, i32** %196, align 8
  br label %197

197:                                              ; preds = %194, %164
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 7
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 6
  store i64 0, i64* %204, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 5
  store i32* null, i32** %206, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %231

211:                                              ; preds = %197
  %212 = load i8*, i8** %8, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  %215 = load i32, i32* @CP_ACP, align 4
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i8*, i8** %8, align 8
  %220 = load i64, i64* %7, align 8
  %221 = call i64 @WideCharToMultiByte(i32 %215, i32 0, i64 %218, i32 -1, i8* %219, i64 %220, i32* null, i32* null)
  store i64 %221, i64* %9, align 8
  %222 = load i64, i64* %9, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 %222
  store i8* %224, i8** %8, align 8
  %225 = load i64, i64* %9, align 8
  %226 = load i64, i64* %10, align 8
  %227 = add nsw i64 %226, %225
  store i64 %227, i64* %10, align 8
  %228 = load i64, i64* %9, align 8
  %229 = load i64, i64* %7, align 8
  %230 = sub nsw i64 %229, %228
  store i64 %230, i64* %7, align 8
  br label %234

231:                                              ; preds = %197
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 3
  store i8* null, i8** %233, align 8
  br label %234

234:                                              ; preds = %231, %211
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %253

239:                                              ; preds = %234
  %240 = load i8*, i8** %8, align 8
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 4
  store i8* %240, i8** %242, align 8
  %243 = load i32, i32* @CP_ACP, align 4
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i8*, i8** %8, align 8
  %248 = load i64, i64* %7, align 8
  %249 = call i64 @WideCharToMultiByte(i32 %243, i32 0, i64 %246, i32 -1, i8* %247, i64 %248, i32* null, i32* null)
  store i64 %249, i64* %9, align 8
  %250 = load i64, i64* %9, align 8
  %251 = load i64, i64* %10, align 8
  %252 = add nsw i64 %251, %250
  store i64 %252, i64* %10, align 8
  br label %256

253:                                              ; preds = %234
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 4
  store i8* null, i8** %255, align 8
  br label %256

256:                                              ; preds = %253, %239
  %257 = load i64, i64* %10, align 8
  store i64 %257, i64* %4, align 8
  br label %258

258:                                              ; preds = %256, %70
  %259 = load i64, i64* %4, align 8
  ret i64 %259
}

declare dso_local i64 @WideCharToMultiByte(i32, i32, i64, i32, i8*, i64, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
