; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_avifile.c_AVIFILE_LoadIndex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_avifile.c_AVIFILE_LoadIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__**, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32 }

@AVIERR_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDX_PER_BLOCK = common dso_local global i32 0, align 4
@AVIERR_MEMORY = common dso_local global i32 0, align 4
@AVIFILEINFO_ISINTERLEAVED = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@AVIERR_FILEREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"stream %u length mismatch: dwLength=%u found=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64, i64)* @AVIFILE_LoadIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVIFILE_LoadIndex(%struct.TYPE_13__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @AVIERR_OK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %12, align 4
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i32, i32* @IDX_PER_BLOCK, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i8* @HeapAlloc(i32 %18, i32 0, i32 %22)
  %24 = bitcast i8* %23 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %8, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = icmp eq %struct.TYPE_14__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %28, i32* %4, align 4
  br label %243

29:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %144, %29
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %147

37:                                               ; preds = %30
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %40, i64 %41
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %13, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = icmp ne %struct.TYPE_14__* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %37
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = call i32 @HeapFree(i32 %51, i32 0, %struct.TYPE_14__* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %50, %37
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %60
  %67 = load i64, i64* %10, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AVIFILEINFO_ISINTERLEAVED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %69
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %80, i64 0
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %106

87:                                               ; preds = %69, %66
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sdiv i32 %97, %101
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %93, %87
  br label %106

106:                                              ; preds = %105, %77
  br label %114

107:                                              ; preds = %60
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %107, %106
  %115 = call i32 (...) @GetProcessHeap()
  %116 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 8
  %122 = trunc i64 %121 to i32
  %123 = call i8* @HeapAlloc(i32 %115, i32 %116, i32 %122)
  %124 = bitcast i8* %123 to %struct.TYPE_14__*
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 3
  store %struct.TYPE_14__* %124, %struct.TYPE_14__** %126, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = icmp eq %struct.TYPE_14__* %129, null
  br i1 %130, label %131, label %143

131:                                              ; preds = %114
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  store i32 0, i32* %138, align 4
  %139 = call i32 (...) @GetProcessHeap()
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %141 = call i32 @HeapFree(i32 %139, i32 0, %struct.TYPE_14__* %140)
  %142 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %142, i32* %4, align 4
  br label %243

143:                                              ; preds = %131, %114
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %10, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %10, align 8
  br label %30

147:                                              ; preds = %30
  store i64 -1, i64* %9, align 8
  br label %148

148:                                              ; preds = %183, %147
  %149 = load i64, i64* %6, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %192

151:                                              ; preds = %148
  %152 = load i32, i32* @IDX_PER_BLOCK, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 8
  %155 = trunc i64 %154 to i32
  %156 = load i64, i64* %6, align 8
  %157 = call i32 @min(i32 %155, i64 %156)
  store i32 %157, i32* %14, align 4
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %162 = ptrtoint %struct.TYPE_14__* %161 to i32
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @mmioRead(i32 %160, i32 %162, i32 %163)
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %151
  %168 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %168, i32* %11, align 4
  br label %192

169:                                              ; preds = %151
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* %6, align 8
  %173 = sub i64 %172, %171
  store i64 %173, i64* %6, align 8
  %174 = load i64, i64* %9, align 8
  %175 = icmp eq i64 %174, -1
  br i1 %175, label %176, label %183

176:                                              ; preds = %169
  %177 = load i64, i64* %7, align 8
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = sub i64 %177, %180
  %182 = add i64 %181, 8
  store i64 %182, i64* %9, align 8
  br label %183

183:                                              ; preds = %176, %169
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = udiv i64 %187, 8
  %189 = trunc i64 %188 to i32
  %190 = load i64, i64* %9, align 8
  %191 = call i32 @AVIFILE_ParseIndex(%struct.TYPE_13__* %184, %struct.TYPE_14__* %185, i32 %189, i64 %190, i32* %12)
  br label %148

192:                                              ; preds = %167, %148
  %193 = call i32 (...) @GetProcessHeap()
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %195 = call i32 @HeapFree(i32 %193, i32 0, %struct.TYPE_14__* %194)
  store i64 0, i64* %10, align 8
  br label %196

196:                                              ; preds = %238, %192
  %197 = load i64, i64* %10, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ult i64 %197, %201
  br i1 %202, label %203, label %241

203:                                              ; preds = %196
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %205, align 8
  %207 = load i64, i64* %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %206, i64 %207
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  store %struct.TYPE_12__* %209, %struct.TYPE_12__** %15, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %237

215:                                              ; preds = %203
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  %224 = icmp ne i32 %219, %223
  br i1 %224, label %225, label %237

225:                                              ; preds = %215
  %226 = load i64, i64* %10, align 8
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %226, i64 %231, i64 %235)
  br label %237

237:                                              ; preds = %225, %215, %203
  br label %238

238:                                              ; preds = %237
  %239 = load i64, i64* %10, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %10, align 8
  br label %196

241:                                              ; preds = %196
  %242 = load i32, i32* %11, align 4
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %241, %136, %27
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @mmioRead(i32, i32, i32) #1

declare dso_local i32 @AVIFILE_ParseIndex(%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i64, i32*) #1

declare dso_local i32 @ERR(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
