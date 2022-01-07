; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_rpcserver.c_ScmAssignNewTag.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_rpcserver.c_ScmAssignNewTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@TAG_ARRAY_SIZE = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 92, i32 71, i32 114, i32 111, i32 117, i32 112, i32 79, i32 114, i32 100, i32 101, i32 114, i32 76, i32 105, i32 115, i32 116, i32 0], align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SERVICE = common dso_local global i32 0, align 4
@ServiceListEntry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Assigning new tag %lu to service %S in group %S\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Failed to assign new tag to service %S, error=%lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ScmAssignNewTag(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32* null, i32** %3, align 8
  store i64 0, i64* %5, align 8
  store i64* null, i64** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 1, i64* %8, align 8
  %16 = load i32, i32* @TAG_ARRAY_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %31 = load i32, i32* @KEY_READ, align 4
  %32 = call i64 @RegOpenKeyExW(i32 %30, i8* bitcast ([48 x i32]* @.str to i8*), i32 0, i32 %31, i32** %3)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %88

37:                                               ; preds = %1
  store i64 0, i64* %13, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @RegQueryValueExW(i32* %38, i32 %43, i32* null, i32* null, i32* null, i64* %13)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @ERROR_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @ERROR_MORE_DATA, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %88

53:                                               ; preds = %48, %37
  %54 = call i32 (...) @GetProcessHeap()
  %55 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %56 = load i64, i64* %13, align 8
  %57 = call i64* @HeapAlloc(i32 %54, i32 %55, i64 %56)
  store i64* %57, i64** %6, align 8
  %58 = load i64*, i64** %6, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %61, i64* %4, align 8
  br label %208

62:                                               ; preds = %53
  %63 = load i32*, i32** %3, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64*, i64** %6, align 8
  %70 = bitcast i64* %69 to i32*
  %71 = call i64 @RegQueryValueExW(i32* %63, i32 %68, i32* null, i32* null, i32* %70, i64* %13)
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %88

76:                                               ; preds = %62
  %77 = load i64, i64* %13, align 8
  %78 = icmp ult i64 %77, 8
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %88

80:                                               ; preds = %76
  %81 = load i64*, i64** %6, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %13, align 8
  %85 = udiv i64 %84, 8
  %86 = sub i64 %85, 1
  %87 = call i64 @min(i64 %83, i64 %86)
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %80, %79, %75, %52, %36
  br label %89

89:                                               ; preds = %203, %88
  store i64 0, i64* %12, align 8
  br label %90

90:                                               ; preds = %99, %89
  %91 = load i64, i64* %12, align 8
  %92 = load i32, i32* @TAG_ARRAY_SIZE, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32, i32* @FALSE, align 4
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds i32, i32* %19, i64 %97
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %12, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %12, align 8
  br label %90

102:                                              ; preds = %90
  store i64 1, i64* %12, align 8
  br label %103

103:                                              ; preds = %127, %102
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* %5, align 8
  %106 = icmp sle i64 %104, %105
  br i1 %106, label %107, label %130

107:                                              ; preds = %103
  %108 = load i64*, i64** %6, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = sub nsw i64 %111, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %107
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @TAG_ARRAY_SIZE, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* @TRUE, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %19, i64 %124
  store i32 %122, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %117, %107
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %12, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %12, align 8
  br label %103

130:                                              ; preds = %103
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  store %struct.TYPE_9__* %134, %struct.TYPE_9__** %14, align 8
  br label %135

135:                                              ; preds = %175, %130
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  %139 = icmp ne %struct.TYPE_9__* %136, %138
  br i1 %139, label %140, label %179

140:                                              ; preds = %135
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %142 = icmp ne %struct.TYPE_9__* %141, null
  %143 = zext i1 %142 to i32
  %144 = call i32 @ASSERT(i32 %143)
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %146 = load i32, i32* @SERVICE, align 4
  %147 = load i32, i32* @ServiceListEntry, align 4
  %148 = call %struct.TYPE_8__* @CONTAINING_RECORD(%struct.TYPE_9__* %145, i32 %146, i32 %147)
  store %struct.TYPE_8__* %148, %struct.TYPE_8__** %15, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = icmp eq %struct.TYPE_7__* %151, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %140
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %8, align 8
  %161 = sub nsw i64 %159, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %156
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @TAG_ARRAY_SIZE, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i32, i32* @TRUE, align 4
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %19, i64 %172
  store i32 %170, i32* %173, align 4
  br label %174

174:                                              ; preds = %169, %165, %156
  br label %175

175:                                              ; preds = %174, %140
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  store %struct.TYPE_9__* %178, %struct.TYPE_9__** %14, align 8
  br label %135

179:                                              ; preds = %135
  store i64 0, i64* %12, align 8
  br label %180

180:                                              ; preds = %195, %179
  %181 = load i64, i64* %12, align 8
  %182 = load i32, i32* @TAG_ARRAY_SIZE, align 4
  %183 = sext i32 %182 to i64
  %184 = icmp slt i64 %181, %183
  br i1 %184, label %185, label %198

185:                                              ; preds = %180
  %186 = load i64, i64* %12, align 8
  %187 = getelementptr inbounds i32, i32* %19, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %185
  %191 = load i64, i64* %8, align 8
  %192 = load i64, i64* %12, align 8
  %193 = add nsw i64 %191, %192
  store i64 %193, i64* %7, align 8
  br label %198

194:                                              ; preds = %185
  br label %195

195:                                              ; preds = %194
  %196 = load i64, i64* %12, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %12, align 8
  br label %180

198:                                              ; preds = %190, %180
  %199 = load i32, i32* @TAG_ARRAY_SIZE, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %8, align 8
  %202 = add nsw i64 %201, %200
  store i64 %202, i64* %8, align 8
  br label %203

203:                                              ; preds = %198
  %204 = load i64, i64* %7, align 8
  %205 = icmp ne i64 %204, 0
  %206 = xor i1 %205, true
  br i1 %206, label %89, label %207

207:                                              ; preds = %203
  br label %208

208:                                              ; preds = %207, %60
  %209 = load i64*, i64** %6, align 8
  %210 = icmp ne i64* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = call i32 (...) @GetProcessHeap()
  %213 = load i64*, i64** %6, align 8
  %214 = call i32 @HeapFree(i32 %212, i32 0, i64* %213)
  br label %215

215:                                              ; preds = %211, %208
  %216 = load i32*, i32** %3, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32*, i32** %3, align 8
  %220 = call i32 @RegCloseKey(i32* %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load i64, i64* %7, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %241

224:                                              ; preds = %221
  %225 = load i64, i64* %7, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @DPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %230, i32 %233, i32 %238)
  %240 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %240, i64* %4, align 8
  br label %247

241:                                              ; preds = %221
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i64, i64* %4, align 8
  %246 = call i32 @DPRINT1(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %244, i64 %245)
  br label %247

247:                                              ; preds = %241, %224
  %248 = load i64, i64* %4, align 8
  %249 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %249)
  ret i64 %248
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32**) #2

declare dso_local i64 @RegQueryValueExW(i32*, i32, i32*, i32*, i32*, i64*) #2

declare dso_local i64* @HeapAlloc(i32, i32, i64) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @min(i64, i64) #2

declare dso_local %struct.TYPE_8__* @CONTAINING_RECORD(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @HeapFree(i32, i32, i64*) #2

declare dso_local i32 @RegCloseKey(i32*) #2

declare dso_local i32 @DPRINT(i8*, i64, i32, i32) #2

declare dso_local i32 @DPRINT1(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
