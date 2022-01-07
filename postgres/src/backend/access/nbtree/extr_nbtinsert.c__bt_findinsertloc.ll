; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_findinsertloc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_findinsertloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64, i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32* }

@P_HIKEY = common dso_local global i32 0, align 4
@MAX_RANDOM_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, i32, i32, i32)* @_bt_findinsertloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_findinsertloc(i32 %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %11, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @BufferGetPage(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i64 @PageGetSpecialPointer(i32 %21)
  store i64 %22, i64* %13, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @BTMaxItemSize(i32 %26)
  %28 = icmp sgt i64 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %5
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @_bt_check_third_page(i32 %33, i32 %34, i64 %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %32, %5
  %44 = load i64, i64* %13, align 8
  %45 = call i64 @P_ISLEAF(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i64, i64* %13, align 8
  %49 = call i32 @P_INCOMPLETE_SPLIT(i64 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i1 [ false, %43 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %60, %52
  %64 = phi i1 [ true, %52 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @Assert(i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br label %76

76:                                               ; preds = %71, %63
  %77 = phi i1 [ true, %63 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @Assert(i32 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %76
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br label %89

89:                                               ; preds = %84, %76
  %90 = phi i1 [ true, %76 ], [ %88, %84 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @Assert(i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %167

97:                                               ; preds = %89
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %146

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %134, %100
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %101
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp sle i64 %109, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i64 @PageGetMaxOffsetNumber(i32 %118)
  %120 = icmp sle i64 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %145

122:                                              ; preds = %114, %106, %101
  %123 = load i64, i64* %13, align 8
  %124 = call i64 @P_RIGHTMOST(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @P_HIKEY, align 4
  %131 = call i64 @_bt_compare(i32 %127, %struct.TYPE_7__* %128, i32 %129, i32 %130)
  %132 = icmp sle i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126, %122
  br label %145

134:                                              ; preds = %126
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @_bt_stepright(i32 %135, %struct.TYPE_8__* %136, i32 %137)
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @BufferGetPage(i32 %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i64 @PageGetSpecialPointer(i32 %143)
  store i64 %144, i64* %13, align 8
  br label %101

145:                                              ; preds = %133, %121
  br label %146

146:                                              ; preds = %145, %97
  %147 = load i32, i32* %12, align 4
  %148 = call i64 @PageGetFreeSpace(i32 %147)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %148, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %146
  %154 = load i64, i64* %13, align 8
  %155 = call i64 @P_HAS_GARBAGE(i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @_bt_vacuum_one_page(i32 %158, i32 %161, i32 %162)
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  store i32 0, i32* %165, align 8
  br label %166

166:                                              ; preds = %157, %153, %146
  br label %246

167:                                              ; preds = %89
  br label %168

168:                                              ; preds = %234, %167
  %169 = load i32, i32* %12, align 4
  %170 = call i64 @PageGetFreeSpace(i32 %169)
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp slt i64 %170, %173
  br i1 %174, label %175, label %245

175:                                              ; preds = %168
  %176 = load i64, i64* %13, align 8
  %177 = call i64 @P_HAS_GARBAGE(i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %175
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @_bt_vacuum_one_page(i32 %180, i32 %183, i32 %184)
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  store i32 0, i32* %187, align 8
  %188 = load i32, i32* %12, align 4
  %189 = call i64 @PageGetFreeSpace(i32 %188)
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp sge i64 %189, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %179
  br label %245

195:                                              ; preds = %179
  br label %196

196:                                              ; preds = %195, %175
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %217

201:                                              ; preds = %196
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = icmp sle i64 %204, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %201
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* %12, align 4
  %214 = call i64 @PageGetMaxOffsetNumber(i32 %213)
  %215 = icmp sle i64 %212, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  br label %245

217:                                              ; preds = %209, %201, %196
  %218 = load i64, i64* %13, align 8
  %219 = call i64 @P_RIGHTMOST(i64 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %233, label %221

221:                                              ; preds = %217
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* @P_HIKEY, align 4
  %226 = call i64 @_bt_compare(i32 %222, %struct.TYPE_7__* %223, i32 %224, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %221
  %229 = call i32 (...) @random()
  %230 = load i32, i32* @MAX_RANDOM_VALUE, align 4
  %231 = sdiv i32 %230, 100
  %232 = icmp sle i32 %229, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %228, %221, %217
  br label %245

234:                                              ; preds = %228
  %235 = load i32, i32* %6, align 4
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %237 = load i32, i32* %9, align 4
  %238 = call i32 @_bt_stepright(i32 %235, %struct.TYPE_8__* %236, i32 %237)
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @BufferGetPage(i32 %241)
  store i32 %242, i32* %12, align 4
  %243 = load i32, i32* %12, align 4
  %244 = call i64 @PageGetSpecialPointer(i32 %243)
  store i64 %244, i64* %13, align 8
  br label %168

245:                                              ; preds = %233, %216, %194, %168
  br label %246

246:                                              ; preds = %245, %166
  %247 = load i64, i64* %13, align 8
  %248 = call i64 @P_RIGHTMOST(i64 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %257, label %250

250:                                              ; preds = %246
  %251 = load i32, i32* %6, align 4
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* @P_HIKEY, align 4
  %255 = call i64 @_bt_compare(i32 %251, %struct.TYPE_7__* %252, i32 %253, i32 %254)
  %256 = icmp sle i64 %255, 0
  br label %257

257:                                              ; preds = %250, %246
  %258 = phi i1 [ true, %246 ], [ %256, %250 ]
  %259 = zext i1 %258 to i32
  %260 = call i32 @Assert(i32 %259)
  %261 = load i32, i32* %6, align 4
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %263 = call i32 @_bt_binsrch_insert(i32 %261, %struct.TYPE_8__* %262)
  ret i32 %263
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @BTMaxItemSize(i32) #1

declare dso_local i32 @_bt_check_third_page(i32, i32, i64, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @P_ISLEAF(i64) #1

declare dso_local i32 @P_INCOMPLETE_SPLIT(i64) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @P_RIGHTMOST(i64) #1

declare dso_local i64 @_bt_compare(i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @_bt_stepright(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @PageGetFreeSpace(i32) #1

declare dso_local i64 @P_HAS_GARBAGE(i64) #1

declare dso_local i32 @_bt_vacuum_one_page(i32, i32, i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @_bt_binsrch_insert(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
