; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pcacheManageDirtyList.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pcacheManageDirtyList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [20 x i8] c"%p.DIRTYLIST.%s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"REMOVE\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FRONT\00", align 1
@PCACHE_DIRTYLIST_REMOVE = common dso_local global i32 0, align 4
@PCACHE_DIRTYLIST_ADD = common dso_local global i32 0, align 4
@PGHDR_NEED_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @pcacheManageDirtyList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcacheManageDirtyList(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 2
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  br label %18

18:                                               ; preds = %13, %12
  %19 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %12 ], [ %17, %13 ]
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @pcacheTrace(i8* %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PCACHE_DIRTYLIST_REMOVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %161

30:                                               ; preds = %18
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = icmp eq %struct.TYPE_5__* %36, %39
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ true, %30 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = icmp eq %struct.TYPE_5__* %50, %53
  br label %55

55:                                               ; preds = %49, %41
  %56 = phi i1 [ true, %41 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = icmp eq %struct.TYPE_5__* %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %69, align 8
  br label %70

70:                                               ; preds = %64, %55
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = icmp ne %struct.TYPE_5__* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %82, align 8
  br label %96

83:                                               ; preds = %70
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = icmp eq %struct.TYPE_5__* %84, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %95, align 8
  br label %96

96:                                               ; preds = %83, %75
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = icmp ne %struct.TYPE_5__* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %108, align 8
  br label %156

109:                                              ; preds = %96
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = icmp eq %struct.TYPE_5__* %110, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  store %struct.TYPE_5__* %119, %struct.TYPE_5__** %121, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %109
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 2
  br label %131

131:                                              ; preds = %126, %109
  %132 = phi i1 [ true, %109 ], [ %130, %126 ]
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = icmp eq %struct.TYPE_5__* %137, null
  br i1 %138, label %139, label %155

139:                                              ; preds = %131
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 1
  br label %149

149:                                              ; preds = %144, %139
  %150 = phi i1 [ true, %139 ], [ %148, %144 ]
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store i32 2, i32* %154, align 8
  br label %155

155:                                              ; preds = %149, %131
  br label %156

156:                                              ; preds = %155, %101
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %158, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %160, align 8
  br label %161

161:                                              ; preds = %156, %18
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @PCACHE_DIRTYLIST_ADD, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %247

166:                                              ; preds = %161
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = icmp eq %struct.TYPE_5__* %169, null
  br i1 %170, label %171, label %182

171:                                              ; preds = %166
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = icmp eq %struct.TYPE_5__* %174, null
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %181 = icmp ne %struct.TYPE_5__* %179, %180
  br label %182

182:                                              ; preds = %176, %171, %166
  %183 = phi i1 [ false, %171 ], [ false, %166 ], [ %181, %176 ]
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  store %struct.TYPE_5__* %188, %struct.TYPE_5__** %190, align 8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = icmp ne %struct.TYPE_5__* %193, null
  br i1 %194, label %195, label %209

195:                                              ; preds = %182
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = icmp eq %struct.TYPE_5__* %200, null
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  store %struct.TYPE_5__* %204, %struct.TYPE_5__** %208, align 8
  br label %227

209:                                              ; preds = %182
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 4
  store %struct.TYPE_5__* %210, %struct.TYPE_5__** %212, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %209
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i32
  %223 = call i32 @assert(i32 %222)
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  store i32 1, i32* %225, align 8
  br label %226

226:                                              ; preds = %217, %209
  br label %227

227:                                              ; preds = %226, %195
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 3
  store %struct.TYPE_5__* %228, %struct.TYPE_5__** %230, align 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = icmp ne %struct.TYPE_5__* %233, null
  br i1 %234, label %246, label %235

235:                                              ; preds = %227
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @PGHDR_NEED_SYNC, align 4
  %240 = and i32 %238, %239
  %241 = icmp eq i32 0, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %235
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 2
  store %struct.TYPE_5__* %243, %struct.TYPE_5__** %245, align 8
  br label %246

246:                                              ; preds = %242, %235, %227
  br label %247

247:                                              ; preds = %246, %161
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %249 = call i32 @pcacheDump(%struct.TYPE_6__* %248)
  ret void
}

declare dso_local i32 @pcacheTrace(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pcacheDump(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
