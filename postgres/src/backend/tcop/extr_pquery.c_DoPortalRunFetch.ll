; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_pquery.c_DoPortalRunFetch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_pquery.c_DoPortalRunFetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32, i64, i32 }

@PORTAL_ONE_SELECT = common dso_local global i64 0, align 8
@PORTAL_ONE_RETURNING = common dso_local global i64 0, align 8
@PORTAL_ONE_MOD_WITH = common dso_local global i64 0, align 8
@PORTAL_UTIL_SELECT = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i32 0, align 4
@None_Receiver = common dso_local global %struct.TYPE_10__* null, align 8
@FETCH_ALL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bogus direction\00", align 1
@DestNone = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i64, %struct.TYPE_10__*)* @DoPortalRunFetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoPortalRunFetch(%struct.TYPE_9__* %0, i32 %1, i64 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PORTAL_ONE_SELECT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %37, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PORTAL_ONE_RETURNING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PORTAL_ONE_MOD_WITH, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PORTAL_UTIL_SELECT, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %31, %25, %19, %4
  %38 = phi i1 [ true, %25 ], [ true, %19 ], [ true, %4 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %192 [
    i32 129, label %42
    i32 130, label %49
    i32 131, label %56
    i32 128, label %156
  ]

42:                                               ; preds = %37
  %43 = load i64, i64* %8, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  store i32 130, i32* %7, align 4
  %46 = load i64, i64* %8, align 8
  %47 = sub nsw i64 0, %46
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %45, %42
  br label %195

49:                                               ; preds = %37
  %50 = load i64, i64* %8, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  store i32 129, i32* %7, align 4
  %53 = load i64, i64* %8, align 8
  %54 = sub nsw i64 0, %53
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %52, %49
  br label %195

56:                                               ; preds = %37
  %57 = load i64, i64* %8, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %129

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = sub nsw i64 %60, 1
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sdiv i32 %65, 2
  %67 = icmp sle i32 %62, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %59
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @LONG_MAX, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %68, %59
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = call i32 @DoPortalRewind(%struct.TYPE_9__* %75)
  %77 = load i64, i64* %8, align 8
  %78 = icmp sgt i64 %77, 1
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = load i64, i64* %8, align 8
  %82 = sub nsw i64 %81, 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @None_Receiver, align 8
  %84 = call i32 @PortalRunSelect(%struct.TYPE_9__* %80, i32 1, i64 %82, %struct.TYPE_10__* %83)
  br label %85

85:                                               ; preds = %79, %74
  br label %125

86:                                               ; preds = %68
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %11, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load i64, i64* %11, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %95, %86
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp sle i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %8, align 8
  %106 = sub nsw i64 %104, %105
  %107 = add nsw i64 %106, 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** @None_Receiver, align 8
  %109 = call i32 @PortalRunSelect(%struct.TYPE_9__* %103, i32 0, i64 %107, %struct.TYPE_10__* %108)
  br label %124

110:                                              ; preds = %98
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %11, align 8
  %113 = add nsw i64 %112, 1
  %114 = icmp sgt i64 %111, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* %11, align 8
  %119 = sub nsw i64 %117, %118
  %120 = sub nsw i64 %119, 1
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** @None_Receiver, align 8
  %122 = call i32 @PortalRunSelect(%struct.TYPE_9__* %116, i32 1, i64 %120, %struct.TYPE_10__* %121)
  br label %123

123:                                              ; preds = %115, %110
  br label %124

124:                                              ; preds = %123, %102
  br label %125

125:                                              ; preds = %124, %85
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %128 = call i32 @PortalRunSelect(%struct.TYPE_9__* %126, i32 1, i64 1, %struct.TYPE_10__* %127)
  store i32 %128, i32* %5, align 4
  br label %271

129:                                              ; preds = %56
  %130 = load i64, i64* %8, align 8
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %134 = load i64, i64* @FETCH_ALL, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** @None_Receiver, align 8
  %136 = call i32 @PortalRunSelect(%struct.TYPE_9__* %133, i32 1, i64 %134, %struct.TYPE_10__* %135)
  %137 = load i64, i64* %8, align 8
  %138 = icmp slt i64 %137, -1
  br i1 %138, label %139, label %146

139:                                              ; preds = %132
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %141 = load i64, i64* %8, align 8
  %142 = sub nsw i64 0, %141
  %143 = sub nsw i64 %142, 1
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** @None_Receiver, align 8
  %145 = call i32 @PortalRunSelect(%struct.TYPE_9__* %140, i32 0, i64 %143, %struct.TYPE_10__* %144)
  br label %146

146:                                              ; preds = %139, %132
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %149 = call i32 @PortalRunSelect(%struct.TYPE_9__* %147, i32 0, i64 1, %struct.TYPE_10__* %148)
  store i32 %149, i32* %5, align 4
  br label %271

150:                                              ; preds = %129
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %152 = call i32 @DoPortalRewind(%struct.TYPE_9__* %151)
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %155 = call i32 @PortalRunSelect(%struct.TYPE_9__* %153, i32 1, i64 0, %struct.TYPE_10__* %154)
  store i32 %155, i32* %5, align 4
  br label %271

156:                                              ; preds = %37
  %157 = load i64, i64* %8, align 8
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %156
  %160 = load i64, i64* %8, align 8
  %161 = icmp sgt i64 %160, 1
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %164 = load i64, i64* %8, align 8
  %165 = sub nsw i64 %164, 1
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** @None_Receiver, align 8
  %167 = call i32 @PortalRunSelect(%struct.TYPE_9__* %163, i32 1, i64 %165, %struct.TYPE_10__* %166)
  br label %168

168:                                              ; preds = %162, %159
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %171 = call i32 @PortalRunSelect(%struct.TYPE_9__* %169, i32 1, i64 1, %struct.TYPE_10__* %170)
  store i32 %171, i32* %5, align 4
  br label %271

172:                                              ; preds = %156
  %173 = load i64, i64* %8, align 8
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %172
  %176 = load i64, i64* %8, align 8
  %177 = icmp slt i64 %176, -1
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %180 = load i64, i64* %8, align 8
  %181 = sub nsw i64 0, %180
  %182 = sub nsw i64 %181, 1
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** @None_Receiver, align 8
  %184 = call i32 @PortalRunSelect(%struct.TYPE_9__* %179, i32 0, i64 %182, %struct.TYPE_10__* %183)
  br label %185

185:                                              ; preds = %178, %175
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %188 = call i32 @PortalRunSelect(%struct.TYPE_9__* %186, i32 0, i64 1, %struct.TYPE_10__* %187)
  store i32 %188, i32* %5, align 4
  br label %271

189:                                              ; preds = %172
  store i32 129, i32* %7, align 4
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  br label %195

192:                                              ; preds = %37
  %193 = load i32, i32* @ERROR, align 4
  %194 = call i32 @elog(i32 %193, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %195

195:                                              ; preds = %192, %191, %55, %48
  %196 = load i32, i32* %7, align 4
  %197 = icmp eq i32 %196, 129
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %10, align 4
  %199 = load i64, i64* %8, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %234

201:                                              ; preds = %195
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %201
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  %211 = xor i1 %210, true
  br label %212

212:                                              ; preds = %206, %201
  %213 = phi i1 [ false, %201 ], [ %211, %206 ]
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %12, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @DestNone, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %212
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 1, i32 0
  store i32 %224, i32* %5, align 4
  br label %271

225:                                              ; preds = %212
  %226 = load i32, i32* %12, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** @None_Receiver, align 8
  %231 = call i32 @PortalRunSelect(%struct.TYPE_9__* %229, i32 0, i64 1, %struct.TYPE_10__* %230)
  store i64 1, i64* %8, align 8
  store i32 1, i32* %10, align 4
  br label %232

232:                                              ; preds = %228, %225
  br label %233

233:                                              ; preds = %232
  br label %234

234:                                              ; preds = %233, %195
  %235 = load i32, i32* %10, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %265, label %237

237:                                              ; preds = %234
  %238 = load i64, i64* %8, align 8
  %239 = load i64, i64* @FETCH_ALL, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %265

241:                                              ; preds = %237
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @DestNone, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %265

247:                                              ; preds = %241
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  store i32 %250, i32* %13, align 4
  %251 = load i32, i32* %13, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %247
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %253
  %259 = load i32, i32* %13, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %13, align 4
  br label %261

261:                                              ; preds = %258, %253, %247
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %263 = call i32 @DoPortalRewind(%struct.TYPE_9__* %262)
  %264 = load i32, i32* %13, align 4
  store i32 %264, i32* %5, align 4
  br label %271

265:                                              ; preds = %241, %237, %234
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %267 = load i32, i32* %10, align 4
  %268 = load i64, i64* %8, align 8
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %270 = call i32 @PortalRunSelect(%struct.TYPE_9__* %266, i32 %267, i64 %268, %struct.TYPE_10__* %269)
  store i32 %270, i32* %5, align 4
  br label %271

271:                                              ; preds = %265, %261, %220, %185, %168, %150, %146, %125
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @DoPortalRewind(%struct.TYPE_9__*) #1

declare dso_local i32 @PortalRunSelect(%struct.TYPE_9__*, i32, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
