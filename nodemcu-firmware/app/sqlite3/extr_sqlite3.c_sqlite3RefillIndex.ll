; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3RefillIndex.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3RefillIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }

@SQLITE_REINDEX = common dso_local global i32 0, align 4
@OP_SorterOpen = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@OP_OpenRead = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_SorterInsert = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_Clear = common dso_local global i32 0, align 4
@OP_OpenWrite = common dso_local global i32 0, align 4
@OPFLAG_BULKCSR = common dso_local global i32 0, align 4
@OPFLAG_P2ISREG = common dso_local global i32 0, align 4
@OP_SorterSort = common dso_local global i32 0, align 4
@OP_SorterCompare = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@OP_SorterData = common dso_local global i32 0, align 4
@OP_Last = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OPFLAG_USESEEKRESULT = common dso_local global i32 0, align 4
@OP_SorterNext = common dso_local global i32 0, align 4
@OP_Close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_28__*, i32)* @sqlite3RefillIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite3RefillIndex(%struct.TYPE_27__* %0, %struct.TYPE_28__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %7, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %33, align 8
  store %struct.TYPE_25__* %34, %struct.TYPE_25__** %18, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_25__* %35, i32 %38)
  store i32 %39, i32* %19, align 4
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %41 = load i32, i32* @SQLITE_REINDEX, align 4
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %46, align 8
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @sqlite3AuthCheck(%struct.TYPE_27__* %40, i32 %41, i32 %44, i32 0, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %3
  br label %262

56:                                               ; preds = %3
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %58 = load i32, i32* %19, align 4
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sqlite3TableLock(%struct.TYPE_27__* %57, i32 %58, i32 %61, i32 1, i32 %64)
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %67 = call i32* @sqlite3GetVdbe(%struct.TYPE_27__* %66)
  store i32* %67, i32** %15, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %262

71:                                               ; preds = %56
  %72 = load i32, i32* %6, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %13, align 4
  br label %80

76:                                               ; preds = %71
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %76, %74
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %83 = call i32* @sqlite3KeyInfoOfIndex(%struct.TYPE_27__* %81, %struct.TYPE_28__* %82)
  store i32* %83, i32** %16, align 8
  %84 = load i32*, i32** %16, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %91, %86, %80
  %97 = phi i1 [ true, %86 ], [ true, %80 ], [ %95, %91 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  store i32 %102, i32* %10, align 4
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* @OP_SorterOpen, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %16, align 8
  %111 = call i64 @sqlite3KeyInfoRef(i32* %110)
  %112 = inttoptr i64 %111 to i8*
  %113 = load i32, i32* @P4_KEYINFO, align 4
  %114 = call i32 @sqlite3VdbeAddOp4(i32* %104, i32 %105, i32 %106, i32 0, i32 %109, i8* %112, i32 %113)
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %119 = load i32, i32* @OP_OpenRead, align 4
  %120 = call i32 @sqlite3OpenTable(%struct.TYPE_27__* %115, i32 %116, i32 %117, %struct.TYPE_26__* %118, i32 %119)
  %121 = load i32*, i32** %15, align 8
  %122 = load i32, i32* @OP_Rewind, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @sqlite3VdbeAddOp2(i32* %121, i32 %122, i32 %123, i32 0)
  store i32 %124, i32* %11, align 4
  %125 = load i32*, i32** %15, align 8
  %126 = call i32 @VdbeCoverage(i32* %125)
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %128 = call i32 @sqlite3GetTempReg(%struct.TYPE_27__* %127)
  store i32 %128, i32* %17, align 4
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @sqlite3GenerateIndexKey(%struct.TYPE_27__* %129, %struct.TYPE_28__* %130, i32 %131, i32 %132, i32 0, i32* %14, i32 0, i32 0)
  %134 = load i32*, i32** %15, align 8
  %135 = load i32, i32* @OP_SorterInsert, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @sqlite3VdbeAddOp2(i32* %134, i32 %135, i32 %136, i32 %137)
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @sqlite3ResolvePartIdxLabel(%struct.TYPE_27__* %139, i32 %140)
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* @OP_Next, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  %147 = call i32 @sqlite3VdbeAddOp2(i32* %142, i32 %143, i32 %144, i32 %146)
  %148 = load i32*, i32** %15, align 8
  %149 = call i32 @VdbeCoverage(i32* %148)
  %150 = load i32*, i32** %15, align 8
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @sqlite3VdbeJumpHere(i32* %150, i32 %151)
  %153 = load i32, i32* %6, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %96
  %156 = load i32*, i32** %15, align 8
  %157 = load i32, i32* @OP_Clear, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @sqlite3VdbeAddOp2(i32* %156, i32 %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %155, %96
  %162 = load i32*, i32** %15, align 8
  %163 = load i32, i32* @OP_OpenWrite, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %19, align 4
  %167 = load i32*, i32** %16, align 8
  %168 = bitcast i32* %167 to i8*
  %169 = load i32, i32* @P4_KEYINFO, align 4
  %170 = call i32 @sqlite3VdbeAddOp4(i32* %162, i32 %163, i32 %164, i32 %165, i32 %166, i8* %168, i32 %169)
  %171 = load i32*, i32** %15, align 8
  %172 = load i32, i32* @OPFLAG_BULKCSR, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %161
  %176 = load i32, i32* @OPFLAG_P2ISREG, align 4
  br label %178

177:                                              ; preds = %161
  br label %178

178:                                              ; preds = %177, %175
  %179 = phi i32 [ %176, %175 ], [ 0, %177 ]
  %180 = or i32 %172, %179
  %181 = call i32 @sqlite3VdbeChangeP5(i32* %171, i32 %180)
  %182 = load i32*, i32** %15, align 8
  %183 = load i32, i32* @OP_SorterSort, align 4
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @sqlite3VdbeAddOp2(i32* %182, i32 %183, i32 %184, i32 0)
  store i32 %185, i32* %11, align 4
  %186 = load i32*, i32** %15, align 8
  %187 = call i32 @VdbeCoverage(i32* %186)
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %189 = call i64 @IsUniqueIndex(%struct.TYPE_28__* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %215

191:                                              ; preds = %178
  %192 = load i32*, i32** %15, align 8
  %193 = call i32 @sqlite3VdbeCurrentAddr(i32* %192)
  %194 = add nsw i32 %193, 3
  store i32 %194, i32* %20, align 4
  %195 = load i32*, i32** %15, align 8
  %196 = load i32, i32* %20, align 4
  %197 = call i32 @sqlite3VdbeGoto(i32* %195, i32 %196)
  %198 = load i32*, i32** %15, align 8
  %199 = call i32 @sqlite3VdbeCurrentAddr(i32* %198)
  store i32 %199, i32* %12, align 4
  %200 = load i32*, i32** %15, align 8
  %201 = load i32, i32* @OP_SorterCompare, align 4
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* %17, align 4
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @sqlite3VdbeAddOp4Int(i32* %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %207)
  %209 = load i32*, i32** %15, align 8
  %210 = call i32 @VdbeCoverage(i32* %209)
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %212 = load i32, i32* @OE_Abort, align 4
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %214 = call i32 @sqlite3UniqueConstraint(%struct.TYPE_27__* %211, i32 %212, %struct.TYPE_28__* %213)
  br label %218

215:                                              ; preds = %178
  %216 = load i32*, i32** %15, align 8
  %217 = call i32 @sqlite3VdbeCurrentAddr(i32* %216)
  store i32 %217, i32* %12, align 4
  br label %218

218:                                              ; preds = %215, %191
  %219 = load i32*, i32** %15, align 8
  %220 = load i32, i32* @OP_SorterData, align 4
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @sqlite3VdbeAddOp3(i32* %219, i32 %220, i32 %221, i32 %222, i32 %223)
  %225 = load i32*, i32** %15, align 8
  %226 = load i32, i32* @OP_Last, align 4
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @sqlite3VdbeAddOp3(i32* %225, i32 %226, i32 %227, i32 0, i32 -1)
  %229 = load i32*, i32** %15, align 8
  %230 = load i32, i32* @OP_IdxInsert, align 4
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* %17, align 4
  %233 = call i32 @sqlite3VdbeAddOp2(i32* %229, i32 %230, i32 %231, i32 %232)
  %234 = load i32*, i32** %15, align 8
  %235 = load i32, i32* @OPFLAG_USESEEKRESULT, align 4
  %236 = call i32 @sqlite3VdbeChangeP5(i32* %234, i32 %235)
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %238 = load i32, i32* %17, align 4
  %239 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_27__* %237, i32 %238)
  %240 = load i32*, i32** %15, align 8
  %241 = load i32, i32* @OP_SorterNext, align 4
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @sqlite3VdbeAddOp2(i32* %240, i32 %241, i32 %242, i32 %243)
  %245 = load i32*, i32** %15, align 8
  %246 = call i32 @VdbeCoverage(i32* %245)
  %247 = load i32*, i32** %15, align 8
  %248 = load i32, i32* %11, align 4
  %249 = call i32 @sqlite3VdbeJumpHere(i32* %247, i32 %248)
  %250 = load i32*, i32** %15, align 8
  %251 = load i32, i32* @OP_Close, align 4
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @sqlite3VdbeAddOp1(i32* %250, i32 %251, i32 %252)
  %254 = load i32*, i32** %15, align 8
  %255 = load i32, i32* @OP_Close, align 4
  %256 = load i32, i32* %9, align 4
  %257 = call i32 @sqlite3VdbeAddOp1(i32* %254, i32 %255, i32 %256)
  %258 = load i32*, i32** %15, align 8
  %259 = load i32, i32* @OP_Close, align 4
  %260 = load i32, i32* %10, align 4
  %261 = call i32 @sqlite3VdbeAddOp1(i32* %258, i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %218, %70, %55
  ret void
}

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_27__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3TableLock(%struct.TYPE_27__*, i32, i32, i32, i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_27__*) #1

declare dso_local i32* @sqlite3KeyInfoOfIndex(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @sqlite3KeyInfoRef(i32*) #1

declare dso_local i32 @sqlite3OpenTable(%struct.TYPE_27__*, i32, i32, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_27__*) #1

declare dso_local i32 @sqlite3GenerateIndexKey(%struct.TYPE_27__*, %struct.TYPE_28__*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @sqlite3ResolvePartIdxLabel(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i64 @IsUniqueIndex(%struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3UniqueConstraint(%struct.TYPE_27__*, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
