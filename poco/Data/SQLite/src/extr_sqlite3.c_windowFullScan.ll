; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_windowFullScan.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_windowFullScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }

@OP_Rowid = common dso_local global i32 0, align 4
@OP_Null = common dso_local global i32 0, align 4
@OP_SeekGE = common dso_local global i32 0, align 4
@OP_Gt = common dso_local global i32 0, align 4
@TK_CURRENT = common dso_local global i64 0, align 8
@OP_Eq = common dso_local global i32 0, align 4
@TK_NO = common dso_local global i64 0, align 8
@TK_TIES = common dso_local global i64 0, align 8
@OP_Compare = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@OP_Jump = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @windowFullScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowFullScan(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %4, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %5, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %15, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %42

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %41, %35
  %43 = phi i32 [ %40, %35 ], [ 0, %41 ]
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @sqlite3VdbeMakeLabel(i32* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @sqlite3VdbeMakeLabel(i32* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @sqlite3GetTempReg(i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @sqlite3GetTempReg(i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %42
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @sqlite3GetTempRange(i32* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @sqlite3GetTempRange(i32* %58, i32 %59)
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %54, %42
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @OP_Rowid, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @sqlite3VdbeAddOp2(i32* %62, i32 %63, i32 %66, i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @windowReadPeerValues(%struct.TYPE_8__* %69, i32 %72, i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %3, align 8
  br label %76

76:                                               ; preds = %86, %61
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = icmp ne %struct.TYPE_9__* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* @OP_Null, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @sqlite3VdbeAddOp2(i32* %80, i32 %81, i32 0, i32 %84)
  br label %86

86:                                               ; preds = %79
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 7
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %3, align 8
  br label %76

90:                                               ; preds = %76
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* @OP_SeekGE, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @sqlite3VdbeAddOp3(i32* %91, i32 %92, i32 %93, i32 %94, i32 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @VdbeCoverage(i32* %99)
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @sqlite3VdbeCurrentAddr(i32* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* @OP_Rowid, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @sqlite3VdbeAddOp2(i32* %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* @OP_Gt, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @sqlite3VdbeAddOp3(i32* %108, i32 %109, i32 %112, i32 %113, i32 %114)
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @VdbeCoverageNeverNull(i32* %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TK_CURRENT, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %90
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* @OP_Eq, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @sqlite3VdbeAddOp3(i32* %124, i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @VdbeCoverageNeverNull(i32* %130)
  br label %207

132:                                              ; preds = %90
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @TK_NO, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %206

138:                                              ; preds = %132
  store i32 0, i32* %17, align 4
  store i32* null, i32** %18, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 6
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = icmp ne %struct.TYPE_10__* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load i32*, i32** %4, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 6
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = call i32* @sqlite3KeyInfoFromExprList(i32* %144, %struct.TYPE_10__* %147, i32 0, i32 0)
  store i32* %148, i32** %18, align 8
  br label %149

149:                                              ; preds = %143, %138
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TK_TIES, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %149
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* @OP_Eq, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @sqlite3VdbeAddOp3(i32* %156, i32 %157, i32 %158, i32 0, i32 %159)
  store i32 %160, i32* %17, align 4
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 @VdbeCoverageNeverNull(i32* %161)
  br label %163

163:                                              ; preds = %155, %149
  %164 = load i32*, i32** %18, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %193

166:                                              ; preds = %163
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @windowReadPeerValues(%struct.TYPE_8__* %167, i32 %168, i32 %169)
  %171 = load i32*, i32** %6, align 8
  %172 = load i32, i32* @OP_Compare, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @sqlite3VdbeAddOp3(i32* %171, i32 %172, i32 %173, i32 %174, i32 %175)
  %177 = load i32*, i32** %6, align 8
  %178 = load i32*, i32** %18, align 8
  %179 = bitcast i32* %178 to i8*
  %180 = load i32, i32* @P4_KEYINFO, align 4
  %181 = call i32 @sqlite3VdbeAppendP4(i32* %177, i8* %179, i32 %180)
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @sqlite3VdbeCurrentAddr(i32* %182)
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %16, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* @OP_Jump, align 4
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %16, align 4
  %190 = call i32 @sqlite3VdbeAddOp3(i32* %185, i32 %186, i32 %187, i32 %188, i32 %189)
  %191 = load i32*, i32** %6, align 8
  %192 = call i32 @VdbeCoverageEqNe(i32* %191)
  br label %198

193:                                              ; preds = %163
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* @OP_Goto, align 4
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @sqlite3VdbeAddOp2(i32* %194, i32 %195, i32 0, i32 %196)
  br label %198

198:                                              ; preds = %193, %166
  %199 = load i32, i32* %17, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load i32*, i32** %6, align 8
  %203 = load i32, i32* %17, align 4
  %204 = call i32 @sqlite3VdbeJumpHere(i32* %202, i32 %203)
  br label %205

205:                                              ; preds = %201, %198
  br label %206

206:                                              ; preds = %205, %132
  br label %207

207:                                              ; preds = %206, %123
  %208 = load i32*, i32** %4, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %210 = load i32, i32* %15, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @windowAggStep(i32* %208, %struct.TYPE_9__* %209, i32 %210, i32 0, i32 %213)
  %215 = load i32*, i32** %6, align 8
  %216 = load i32, i32* %12, align 4
  %217 = call i32 @sqlite3VdbeResolveLabel(i32* %215, i32 %216)
  %218 = load i32*, i32** %6, align 8
  %219 = load i32, i32* @OP_Next, align 4
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @sqlite3VdbeAddOp2(i32* %218, i32 %219, i32 %220, i32 %221)
  %223 = load i32*, i32** %6, align 8
  %224 = call i32 @VdbeCoverage(i32* %223)
  %225 = load i32*, i32** %6, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sub nsw i32 %226, 1
  %228 = call i32 @sqlite3VdbeJumpHere(i32* %225, i32 %227)
  %229 = load i32*, i32** %6, align 8
  %230 = load i32, i32* %14, align 4
  %231 = add nsw i32 %230, 1
  %232 = call i32 @sqlite3VdbeJumpHere(i32* %229, i32 %231)
  %233 = load i32*, i32** %4, align 8
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @sqlite3ReleaseTempReg(i32* %233, i32 %234)
  %236 = load i32*, i32** %4, align 8
  %237 = load i32, i32* %7, align 4
  %238 = call i32 @sqlite3ReleaseTempReg(i32* %236, i32 %237)
  %239 = load i32, i32* %11, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %207
  %242 = load i32*, i32** %4, align 8
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* %11, align 4
  %245 = call i32 @sqlite3ReleaseTempRange(i32* %242, i32 %243, i32 %244)
  %246 = load i32*, i32** %4, align 8
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* %11, align 4
  %249 = call i32 @sqlite3ReleaseTempRange(i32* %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %241, %207
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %252 = call i32 @windowAggFinal(%struct.TYPE_8__* %251, i32 1)
  ret void
}

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(i32*) #1

declare dso_local i32 @sqlite3GetTempRange(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @windowReadPeerValues(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @VdbeCoverageNeverNull(i32*) #1

declare dso_local i32* @sqlite3KeyInfoFromExprList(i32*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, i8*, i32) #1

declare dso_local i32 @VdbeCoverageEqNe(i32*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @windowAggStep(i32*, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(i32*, i32, i32) #1

declare dso_local i32 @windowAggFinal(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
