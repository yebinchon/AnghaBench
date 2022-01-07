; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_generateWithRecursiveQuery.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_generateWithRecursiveQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, i32, i32* }
%struct.TYPE_31__ = type { i32, i32, i32, i64, i32, i32*, i32*, %struct.TYPE_33__*, %struct.TYPE_31__*, %struct.TYPE_26__*, %struct.TYPE_31__*, i8**, %struct.TYPE_29__* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_33__* }

@SRT_Fifo = common dso_local global i32 0, align 4
@SQLITE_RECURSIVE = common dso_local global i32 0, align 4
@TK_UNION = common dso_local global i64 0, align 8
@SRT_DistQueue = common dso_local global i32 0, align 4
@SRT_DistFifo = common dso_local global i32 0, align 4
@SRT_Queue = common dso_local global i32 0, align 4
@OP_OpenPseudo = common dso_local global i32 0, align 4
@OP_OpenEphemeral = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Queue table\00", align 1
@SF_UsesEphemeral = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_NullRow = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_RowData = common dso_local global i32 0, align 4
@OP_Delete = common dso_local global i32 0, align 4
@OP_DecrJumpZero = common dso_local global i32 0, align 4
@SF_Aggregate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"recursive aggregate queries not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_30__*)* @generateWithRecursiveQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateWithRecursiveQuery(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_30__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_33__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %6, align 8
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 12
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  store %struct.TYPE_29__* %30, %struct.TYPE_29__** %7, align 8
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %31, i32 0, i32 9
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %9, align 8
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 8
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %40, align 8
  store %struct.TYPE_31__* %41, %struct.TYPE_31__** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %42 = load i32, i32* @SRT_Fifo, align 4
  store i32 %42, i32* %18, align 4
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %44 = load i32, i32* @SQLITE_RECURSIVE, align 4
  %45 = call i64 @sqlite3AuthCheck(%struct.TYPE_32__* %43, i32 %44, i32 0, i32 0, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  br label %331

48:                                               ; preds = %3
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @sqlite3VdbeMakeLabel(i32* %49)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 0
  store i32 320, i32* %52, align 8
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @computeLimitRegisters(%struct.TYPE_32__* %53, %struct.TYPE_31__* %54, i32 %55)
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %23, align 8
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %24, align 8
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %25, align 4
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %26, align 4
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 5
  store i32* null, i32** %70, align 8
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 6
  store i32* null, i32** %72, align 8
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %77, i32 0, i32 7
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %78, align 8
  store %struct.TYPE_33__* %79, %struct.TYPE_33__** %22, align 8
  store i32 0, i32* %20, align 4
  br label %80

80:                                               ; preds = %110, %48
  %81 = load i32, i32* %20, align 4
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @ALWAYS(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %80
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %91, align 8
  %93 = load i32, i32* %20, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %89
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %102, align 8
  %104 = load i32, i32* %20, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %14, align 4
  br label %113

109:                                              ; preds = %89
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %20, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %20, align 4
  br label %80

113:                                              ; preds = %100, %80
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  store i32 %116, i32* %16, align 4
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TK_UNION, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %113
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %125 = icmp ne %struct.TYPE_33__* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* @SRT_DistQueue, align 4
  br label %130

128:                                              ; preds = %123
  %129 = load i32, i32* @SRT_DistFifo, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  store i32 %131, i32* %18, align 4
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  store i32 %134, i32* %17, align 4
  br label %145

136:                                              ; preds = %113
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %138 = icmp ne %struct.TYPE_33__* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @SRT_Queue, align 4
  br label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @SRT_Fifo, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  store i32 %144, i32* %18, align 4
  br label %145

145:                                              ; preds = %143, %130
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @sqlite3SelectDestInit(%struct.TYPE_30__* %19, i32 %146, i32 %147)
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  store i32 %152, i32* %15, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* @OP_OpenPseudo, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @sqlite3VdbeAddOp3(i32* %153, i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %160 = icmp ne %struct.TYPE_33__* %159, null
  br i1 %160, label %161, label %178

161:                                              ; preds = %145
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %164 = call i32* @multiSelectOrderByKeyInfo(%struct.TYPE_32__* %162, %struct.TYPE_31__* %163, i32 1)
  store i32* %164, i32** %27, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* @OP_OpenEphemeral, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 2
  %172 = load i32*, i32** %27, align 8
  %173 = bitcast i32* %172 to i8*
  %174 = load i32, i32* @P4_KEYINFO, align 4
  %175 = call i32 @sqlite3VdbeAddOp4(i32* %165, i32 %166, i32 %167, i32 %171, i32 0, i8* %173, i32 %174)
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 0
  store %struct.TYPE_33__* %176, %struct.TYPE_33__** %177, align 8
  br label %184

178:                                              ; preds = %145
  %179 = load i32*, i32** %9, align 8
  %180 = load i32, i32* @OP_OpenEphemeral, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i8* @sqlite3VdbeAddOp2(i32* %179, i32 %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %178, %161
  %185 = load i32*, i32** %9, align 8
  %186 = call i32 @VdbeComment(i32* bitcast ([12 x i8]* @.str to i32*))
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %184
  %190 = load i32*, i32** %9, align 8
  %191 = load i32, i32* @OP_OpenEphemeral, align 4
  %192 = load i32, i32* %17, align 4
  %193 = call i8* @sqlite3VdbeAddOp2(i32* %190, i32 %191, i32 %192, i32 0)
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 11
  %196 = load i8**, i8*** %195, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 0
  store i8* %193, i8** %197, align 8
  %198 = load i32, i32* @SF_UsesEphemeral, align 4
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %189, %184
  %204 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %204, i32 0, i32 7
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %205, align 8
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %206, i32 0, i32 10
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %207, align 8
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %210 = call i32 @sqlite3Select(%struct.TYPE_32__* %208, %struct.TYPE_31__* %209, %struct.TYPE_30__* %19)
  store i32 %210, i32* %21, align 4
  %211 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %212 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %212, i32 0, i32 10
  store %struct.TYPE_31__* %211, %struct.TYPE_31__** %213, align 8
  %214 = load i32, i32* %21, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %203
  br label %314

217:                                              ; preds = %203
  %218 = load i32*, i32** %9, align 8
  %219 = load i32, i32* @OP_Rewind, align 4
  %220 = load i32, i32* %16, align 4
  %221 = load i32, i32* %13, align 4
  %222 = call i8* @sqlite3VdbeAddOp2(i32* %218, i32 %219, i32 %220, i32 %221)
  %223 = ptrtoint i8* %222 to i32
  store i32 %223, i32* %11, align 4
  %224 = load i32*, i32** %9, align 8
  %225 = call i32 @VdbeCoverage(i32* %224)
  %226 = load i32*, i32** %9, align 8
  %227 = load i32, i32* @OP_NullRow, align 4
  %228 = load i32, i32* %14, align 4
  %229 = call i32 @sqlite3VdbeAddOp1(i32* %226, i32 %227, i32 %228)
  %230 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %231 = icmp ne %struct.TYPE_33__* %230, null
  br i1 %231, label %232, label %242

232:                                              ; preds = %217
  %233 = load i32*, i32** %9, align 8
  %234 = load i32, i32* @OP_Column, align 4
  %235 = load i32, i32* %16, align 4
  %236 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %237 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  %240 = load i32, i32* %15, align 4
  %241 = call i32 @sqlite3VdbeAddOp3(i32* %233, i32 %234, i32 %235, i32 %239, i32 %240)
  br label %248

242:                                              ; preds = %217
  %243 = load i32*, i32** %9, align 8
  %244 = load i32, i32* @OP_RowData, align 4
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* %15, align 4
  %247 = call i8* @sqlite3VdbeAddOp2(i32* %243, i32 %244, i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %242, %232
  %249 = load i32*, i32** %9, align 8
  %250 = load i32, i32* @OP_Delete, align 4
  %251 = load i32, i32* %16, align 4
  %252 = call i32 @sqlite3VdbeAddOp1(i32* %249, i32 %250, i32 %251)
  %253 = load i32*, i32** %9, align 8
  %254 = call i32 @sqlite3VdbeMakeLabel(i32* %253)
  store i32 %254, i32* %12, align 4
  %255 = load i32*, i32** %9, align 8
  %256 = load i32, i32* %26, align 4
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @codeOffset(i32* %255, i32 %256, i32 %257)
  %259 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %261 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %261, i32 0, i32 9
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %262, align 8
  %264 = load i32, i32* %14, align 4
  %265 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* %13, align 4
  %268 = call i32 @selectInnerLoop(%struct.TYPE_32__* %259, %struct.TYPE_31__* %260, %struct.TYPE_26__* %263, i32 %264, i32 0, i32 0, %struct.TYPE_30__* %265, i32 %266, i32 %267)
  %269 = load i32, i32* %25, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %248
  %272 = load i32*, i32** %9, align 8
  %273 = load i32, i32* @OP_DecrJumpZero, align 4
  %274 = load i32, i32* %25, align 4
  %275 = load i32, i32* %13, align 4
  %276 = call i8* @sqlite3VdbeAddOp2(i32* %272, i32 %273, i32 %274, i32 %275)
  %277 = load i32*, i32** %9, align 8
  %278 = call i32 @VdbeCoverage(i32* %277)
  br label %279

279:                                              ; preds = %271, %248
  %280 = load i32*, i32** %9, align 8
  %281 = load i32, i32* %12, align 4
  %282 = call i32 @sqlite3VdbeResolveLabel(i32* %280, i32 %281)
  %283 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @SF_Aggregate, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %279
  %290 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %291 = call i32 @sqlite3ErrorMsg(%struct.TYPE_32__* %290, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %307

292:                                              ; preds = %279
  %293 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %293, i32 0, i32 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %294, align 8
  %295 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %296 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %297 = call i32 @sqlite3Select(%struct.TYPE_32__* %295, %struct.TYPE_31__* %296, %struct.TYPE_30__* %19)
  %298 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %298, i32 0, i32 8
  %300 = load %struct.TYPE_31__*, %struct.TYPE_31__** %299, align 8
  %301 = icmp eq %struct.TYPE_31__* %300, null
  %302 = zext i1 %301 to i32
  %303 = call i32 @assert(i32 %302)
  %304 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %305 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %305, i32 0, i32 8
  store %struct.TYPE_31__* %304, %struct.TYPE_31__** %306, align 8
  br label %307

307:                                              ; preds = %292, %289
  %308 = load i32*, i32** %9, align 8
  %309 = load i32, i32* %11, align 4
  %310 = call i32 @sqlite3VdbeGoto(i32* %308, i32 %309)
  %311 = load i32*, i32** %9, align 8
  %312 = load i32, i32* %13, align 4
  %313 = call i32 @sqlite3VdbeResolveLabel(i32* %311, i32 %312)
  br label %314

314:                                              ; preds = %307, %216
  %315 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %318, i32 0, i32 7
  %320 = load %struct.TYPE_33__*, %struct.TYPE_33__** %319, align 8
  %321 = call i32 @sqlite3ExprListDelete(i32 %317, %struct.TYPE_33__* %320)
  %322 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %323 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %323, i32 0, i32 7
  store %struct.TYPE_33__* %322, %struct.TYPE_33__** %324, align 8
  %325 = load i32*, i32** %23, align 8
  %326 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %326, i32 0, i32 6
  store i32* %325, i32** %327, align 8
  %328 = load i32*, i32** %24, align 8
  %329 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %329, i32 0, i32 5
  store i32* %328, i32** %330, align 8
  br label %331

331:                                              ; preds = %314, %47
  ret void
}

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_32__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @computeLimitRegisters(%struct.TYPE_32__*, %struct.TYPE_31__*, i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i32 @sqlite3SelectDestInit(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @multiSelectOrderByKeyInfo(%struct.TYPE_32__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i8* @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3Select(%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @codeOffset(i32*, i32, i32) #1

declare dso_local i32 @selectInnerLoop(%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_26__*, i32, i32, i32, %struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3ExprListDelete(i32, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
