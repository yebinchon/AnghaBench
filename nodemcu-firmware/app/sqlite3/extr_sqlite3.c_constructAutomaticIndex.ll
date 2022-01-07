; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_constructAutomaticIndex.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_constructAutomaticIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_50__ = type { %struct.TYPE_54__*, i32, i32* }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_48__ = type { i64, %struct.TYPE_60__*, %struct.TYPE_62__* }
%struct.TYPE_60__ = type { %struct.TYPE_59__* }
%struct.TYPE_59__ = type { %struct.SrcList_item* }
%struct.TYPE_62__ = type { i32, %struct.TYPE_56__, %struct.TYPE_52__* }
%struct.TYPE_56__ = type { i32 }
%struct.TYPE_52__ = type { i32, i32, i32 }
%struct.SrcList_item = type { i32, i32, %struct.TYPE_61__, i32, %struct.TYPE_49__*, i32, i32 }
%struct.TYPE_61__ = type { i64 }
%struct.TYPE_49__ = type { i32, i32, %struct.TYPE_55__* }
%struct.TYPE_55__ = type { i32 }
%struct.TYPE_47__ = type { i64, i64, i32, %struct.TYPE_63__* }
%struct.TYPE_63__ = type { i64, i32, i32, %struct.TYPE_58__, %struct.TYPE_62__** }
%struct.TYPE_58__ = type { %struct.TYPE_57__ }
%struct.TYPE_57__ = type { i32, %struct.TYPE_51__* }
%struct.TYPE_51__ = type { i8*, i32*, i8**, %struct.TYPE_49__* }
%struct.TYPE_53__ = type { i8* }

@OP_Once = common dso_local global i32 0, align 4
@EP_FromJoin = common dso_local global i32 0, align 4
@TERM_VIRTUAL = common dso_local global i32 0, align 4
@BMS = common dso_local global i32 0, align 4
@SQLITE_WARNING_AUTOINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"automatic index on %s(%s)\00", align 1
@WHERE_COLUMN_EQ = common dso_local global i32 0, align 4
@WHERE_IDX_ONLY = common dso_local global i32 0, align 4
@WHERE_INDEXED = common dso_local global i32 0, align 4
@WHERE_AUTO_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"auto-index\00", align 1
@sqlite3StrBINARY = common dso_local global i8* null, align 8
@XN_ROWID = common dso_local global i32 0, align 4
@OP_OpenAutoindex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"for %s\00", align 1
@OP_Integer = common dso_local global i32 0, align 4
@OP_InitCoroutine = common dso_local global i32 0, align 4
@OP_Yield = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"next row of \22%s\22\00", align 1
@OP_Rewind = common dso_local global i32 0, align 4
@SQLITE_JUMPIFNULL = common dso_local global i32 0, align 4
@WHERE_PARTIALIDX = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OPFLAG_USESEEKRESULT = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@SQLITE_STMTSTATUS_AUTOINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_50__*, %struct.TYPE_48__*, %struct.SrcList_item*, i32, %struct.TYPE_47__*)* @constructAutomaticIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @constructAutomaticIndex(%struct.TYPE_50__* %0, %struct.TYPE_48__* %1, %struct.SrcList_item* %2, i32 %3, %struct.TYPE_47__* %4) #0 {
  %6 = alloca %struct.TYPE_50__*, align 8
  %7 = alloca %struct.TYPE_48__*, align 8
  %8 = alloca %struct.SrcList_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_47__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_62__*, align 8
  %13 = alloca %struct.TYPE_62__*, align 8
  %14 = alloca %struct.TYPE_51__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_49__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_53__*, align 8
  %24 = alloca %struct.TYPE_63__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_52__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.SrcList_item*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_52__*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_52__*, align 8
  %40 = alloca i32, align 4
  store %struct.TYPE_50__* %0, %struct.TYPE_50__** %6, align 8
  store %struct.TYPE_48__* %1, %struct.TYPE_48__** %7, align 8
  store %struct.SrcList_item* %2, %struct.SrcList_item** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_47__* %4, %struct.TYPE_47__** %10, align 8
  store i32 0, i32* %28, align 4
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %29, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %32, align 4
  %41 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* @OP_Once, align 4
  %50 = call i32 @sqlite3VdbeAddOp0(i32* %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @VdbeCoverage(i32* %51)
  store i32 0, i32* %11, align 4
  %53 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %54 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %53, i32 0, i32 4
  %55 = load %struct.TYPE_49__*, %struct.TYPE_49__** %54, align 8
  store %struct.TYPE_49__* %55, %struct.TYPE_49__** %17, align 8
  %56 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_62__*, %struct.TYPE_62__** %57, align 8
  %59 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %58, i64 %61
  store %struct.TYPE_62__* %62, %struct.TYPE_62__** %13, align 8
  %63 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_63__*, %struct.TYPE_63__** %64, align 8
  store %struct.TYPE_63__* %65, %struct.TYPE_63__** %24, align 8
  store i32 0, i32* %26, align 4
  %66 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_62__*, %struct.TYPE_62__** %67, align 8
  store %struct.TYPE_62__* %68, %struct.TYPE_62__** %12, align 8
  br label %69

69:                                               ; preds = %211, %5
  %70 = load %struct.TYPE_62__*, %struct.TYPE_62__** %12, align 8
  %71 = load %struct.TYPE_62__*, %struct.TYPE_62__** %13, align 8
  %72 = icmp ult %struct.TYPE_62__* %70, %71
  br i1 %72, label %73, label %214

73:                                               ; preds = %69
  %74 = load %struct.TYPE_62__*, %struct.TYPE_62__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_52__*, %struct.TYPE_52__** %75, align 8
  store %struct.TYPE_52__* %76, %struct.TYPE_52__** %34, align 8
  %77 = load %struct.TYPE_52__*, %struct.TYPE_52__** %34, align 8
  %78 = load i32, i32* @EP_FromJoin, align 4
  %79 = call i32 @ExprHasProperty(%struct.TYPE_52__* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %73
  %82 = load %struct.TYPE_52__*, %struct.TYPE_52__** %34, align 8
  %83 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %86 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %81
  %90 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  %91 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %89, %81, %73
  %95 = phi i1 [ true, %81 ], [ true, %73 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  %99 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %132

102:                                              ; preds = %94
  %103 = load %struct.TYPE_62__*, %struct.TYPE_62__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TERM_VIRTUAL, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %102
  %110 = load %struct.TYPE_52__*, %struct.TYPE_52__** %34, align 8
  %111 = load i32, i32* @EP_FromJoin, align 4
  %112 = call i32 @ExprHasProperty(%struct.TYPE_52__* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_52__*, %struct.TYPE_52__** %34, align 8
  %116 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %117 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @sqlite3ExprIsTableConstant(%struct.TYPE_52__* %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_54__*, %struct.TYPE_54__** %123, align 8
  %125 = load %struct.TYPE_52__*, %struct.TYPE_52__** %29, align 8
  %126 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_54__*, %struct.TYPE_54__** %127, align 8
  %129 = load %struct.TYPE_52__*, %struct.TYPE_52__** %34, align 8
  %130 = call i32 @sqlite3ExprDup(%struct.TYPE_54__* %128, %struct.TYPE_52__* %129, i32 0)
  %131 = call %struct.TYPE_52__* @sqlite3ExprAnd(%struct.TYPE_54__* %124, %struct.TYPE_52__* %125, i32 %130)
  store %struct.TYPE_52__* %131, %struct.TYPE_52__** %29, align 8
  br label %132

132:                                              ; preds = %121, %114, %109, %102, %94
  %133 = load %struct.TYPE_62__*, %struct.TYPE_62__** %12, align 8
  %134 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i64 @termCanDriveIndex(%struct.TYPE_62__* %133, %struct.SrcList_item* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %210

138:                                              ; preds = %132
  %139 = load %struct.TYPE_62__*, %struct.TYPE_62__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %35, align 4
  %143 = load i32, i32* %35, align 4
  %144 = load i32, i32* @BMS, align 4
  %145 = icmp sge i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i32, i32* @BMS, align 4
  %148 = sub nsw i32 %147, 1
  %149 = call i32 @MASKBIT(i32 %148)
  br label %153

150:                                              ; preds = %138
  %151 = load i32, i32* %35, align 4
  %152 = call i32 @MASKBIT(i32 %151)
  br label %153

153:                                              ; preds = %150, %146
  %154 = phi i32 [ %149, %146 ], [ %152, %150 ]
  store i32 %154, i32* %36, align 4
  %155 = load i32, i32* %35, align 4
  %156 = load i32, i32* @BMS, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @testcase(i32 %158)
  %160 = load i32, i32* %35, align 4
  %161 = load i32, i32* @BMS, align 4
  %162 = sub nsw i32 %161, 1
  %163 = icmp eq i32 %160, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @testcase(i32 %164)
  %166 = load i32, i32* %28, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %182, label %168

168:                                              ; preds = %153
  %169 = load i32, i32* @SQLITE_WARNING_AUTOINDEX, align 4
  %170 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_55__*, %struct.TYPE_55__** %174, align 8
  %176 = load i32, i32* %35, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @sqlite3_log(i32 %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %172, i32 %180)
  store i32 1, i32* %28, align 4
  br label %182

182:                                              ; preds = %168, %153
  %183 = load i32, i32* %26, align 4
  %184 = load i32, i32* %36, align 4
  %185 = and i32 %183, %184
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %209

187:                                              ; preds = %182
  %188 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_54__*, %struct.TYPE_54__** %189, align 8
  %191 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  %194 = call i64 @whereLoopResize(%struct.TYPE_54__* %190, %struct.TYPE_63__* %191, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %187
  br label %706

197:                                              ; preds = %187
  %198 = load %struct.TYPE_62__*, %struct.TYPE_62__** %12, align 8
  %199 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  %200 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_62__**, %struct.TYPE_62__*** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds %struct.TYPE_62__*, %struct.TYPE_62__** %201, i64 %204
  store %struct.TYPE_62__* %198, %struct.TYPE_62__** %205, align 8
  %206 = load i32, i32* %36, align 4
  %207 = load i32, i32* %26, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %26, align 4
  br label %209

209:                                              ; preds = %197, %182
  br label %210

210:                                              ; preds = %209, %132
  br label %211

211:                                              ; preds = %210
  %212 = load %struct.TYPE_62__*, %struct.TYPE_62__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %212, i32 1
  store %struct.TYPE_62__* %213, %struct.TYPE_62__** %12, align 8
  br label %69

214:                                              ; preds = %69
  %215 = load i32, i32* %11, align 4
  %216 = icmp sgt i32 %215, 0
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  %219 = load i32, i32* %11, align 4
  %220 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  %221 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 8
  %222 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  %223 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %224, i32 0, i32 0
  store i32 %219, i32* %225, align 8
  %226 = load i32, i32* @WHERE_COLUMN_EQ, align 4
  %227 = load i32, i32* @WHERE_IDX_ONLY, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @WHERE_INDEXED, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @WHERE_AUTO_INDEX, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  %234 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 4
  %235 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %236 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %26, align 4
  %239 = xor i32 %238, -1
  %240 = load i32, i32* @BMS, align 4
  %241 = sub nsw i32 %240, 1
  %242 = call i32 @MASKBIT(i32 %241)
  %243 = or i32 %239, %242
  %244 = and i32 %237, %243
  store i32 %244, i32* %27, align 4
  %245 = load i32, i32* @BMS, align 4
  %246 = sub nsw i32 %245, 1
  %247 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @MIN(i32 %246, i32 %249)
  store i32 %250, i32* %22, align 4
  %251 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @BMS, align 4
  %255 = sub nsw i32 %254, 1
  %256 = icmp eq i32 %253, %255
  %257 = zext i1 %256 to i32
  %258 = call i32 @testcase(i32 %257)
  %259 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @BMS, align 4
  %263 = sub nsw i32 %262, 2
  %264 = icmp eq i32 %261, %263
  %265 = zext i1 %264 to i32
  %266 = call i32 @testcase(i32 %265)
  store i32 0, i32* %21, align 4
  br label %267

267:                                              ; preds = %281, %214
  %268 = load i32, i32* %21, align 4
  %269 = load i32, i32* %22, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %284

271:                                              ; preds = %267
  %272 = load i32, i32* %27, align 4
  %273 = load i32, i32* %21, align 4
  %274 = call i32 @MASKBIT(i32 %273)
  %275 = and i32 %272, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %271
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %11, align 4
  br label %280

280:                                              ; preds = %277, %271
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %21, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %21, align 4
  br label %267

284:                                              ; preds = %267
  %285 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %286 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @BMS, align 4
  %289 = sub nsw i32 %288, 1
  %290 = call i32 @MASKBIT(i32 %289)
  %291 = and i32 %287, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %284
  %294 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %295 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @BMS, align 4
  %298 = sub nsw i32 %296, %297
  %299 = add nsw i32 %298, 1
  %300 = load i32, i32* %11, align 4
  %301 = add nsw i32 %300, %299
  store i32 %301, i32* %11, align 4
  br label %302

302:                                              ; preds = %293, %284
  %303 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_54__*, %struct.TYPE_54__** %304, align 8
  %306 = load i32, i32* %11, align 4
  %307 = add nsw i32 %306, 1
  %308 = call %struct.TYPE_51__* @sqlite3AllocateIndexObject(%struct.TYPE_54__* %305, i32 %307, i32 0, i8** %25)
  store %struct.TYPE_51__* %308, %struct.TYPE_51__** %14, align 8
  %309 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %310 = icmp eq %struct.TYPE_51__* %309, null
  br i1 %310, label %311, label %312

311:                                              ; preds = %302
  br label %706

312:                                              ; preds = %302
  %313 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %314 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  %315 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %316, i32 0, i32 1
  store %struct.TYPE_51__* %313, %struct.TYPE_51__** %317, align 8
  %318 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %318, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %319, align 8
  %320 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %321 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %322 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %321, i32 0, i32 3
  store %struct.TYPE_49__* %320, %struct.TYPE_49__** %322, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %26, align 4
  %323 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %323, i32 0, i32 2
  %325 = load %struct.TYPE_62__*, %struct.TYPE_62__** %324, align 8
  store %struct.TYPE_62__* %325, %struct.TYPE_62__** %12, align 8
  br label %326

326:                                              ; preds = %413, %312
  %327 = load %struct.TYPE_62__*, %struct.TYPE_62__** %12, align 8
  %328 = load %struct.TYPE_62__*, %struct.TYPE_62__** %13, align 8
  %329 = icmp ult %struct.TYPE_62__* %327, %328
  br i1 %329, label %330, label %416

330:                                              ; preds = %326
  %331 = load %struct.TYPE_62__*, %struct.TYPE_62__** %12, align 8
  %332 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %333 = load i32, i32* %9, align 4
  %334 = call i64 @termCanDriveIndex(%struct.TYPE_62__* %331, %struct.SrcList_item* %332, i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %412

336:                                              ; preds = %330
  %337 = load %struct.TYPE_62__*, %struct.TYPE_62__** %12, align 8
  %338 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  store i32 %340, i32* %37, align 4
  %341 = load i32, i32* %37, align 4
  %342 = load i32, i32* @BMS, align 4
  %343 = icmp sge i32 %341, %342
  br i1 %343, label %344, label %348

344:                                              ; preds = %336
  %345 = load i32, i32* @BMS, align 4
  %346 = sub nsw i32 %345, 1
  %347 = call i32 @MASKBIT(i32 %346)
  br label %351

348:                                              ; preds = %336
  %349 = load i32, i32* %37, align 4
  %350 = call i32 @MASKBIT(i32 %349)
  br label %351

351:                                              ; preds = %348, %344
  %352 = phi i32 [ %347, %344 ], [ %350, %348 ]
  store i32 %352, i32* %38, align 4
  %353 = load i32, i32* %37, align 4
  %354 = load i32, i32* @BMS, align 4
  %355 = sub nsw i32 %354, 1
  %356 = icmp eq i32 %353, %355
  %357 = zext i1 %356 to i32
  %358 = call i32 @testcase(i32 %357)
  %359 = load i32, i32* %37, align 4
  %360 = load i32, i32* @BMS, align 4
  %361 = icmp eq i32 %359, %360
  %362 = zext i1 %361 to i32
  %363 = call i32 @testcase(i32 %362)
  %364 = load i32, i32* %26, align 4
  %365 = load i32, i32* %38, align 4
  %366 = and i32 %364, %365
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %411

368:                                              ; preds = %351
  %369 = load %struct.TYPE_62__*, %struct.TYPE_62__** %12, align 8
  %370 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %369, i32 0, i32 2
  %371 = load %struct.TYPE_52__*, %struct.TYPE_52__** %370, align 8
  store %struct.TYPE_52__* %371, %struct.TYPE_52__** %39, align 8
  %372 = load i32, i32* %38, align 4
  %373 = load i32, i32* %26, align 4
  %374 = or i32 %373, %372
  store i32 %374, i32* %26, align 4
  %375 = load %struct.TYPE_62__*, %struct.TYPE_62__** %12, align 8
  %376 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %380 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %20, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  store i32 %378, i32* %384, align 4
  %385 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %386 = load %struct.TYPE_52__*, %struct.TYPE_52__** %39, align 8
  %387 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.TYPE_52__*, %struct.TYPE_52__** %39, align 8
  %390 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = call %struct.TYPE_53__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_50__* %385, i32 %388, i32 %391)
  store %struct.TYPE_53__* %392, %struct.TYPE_53__** %23, align 8
  %393 = load %struct.TYPE_53__*, %struct.TYPE_53__** %23, align 8
  %394 = icmp ne %struct.TYPE_53__* %393, null
  br i1 %394, label %395, label %399

395:                                              ; preds = %368
  %396 = load %struct.TYPE_53__*, %struct.TYPE_53__** %23, align 8
  %397 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %396, i32 0, i32 0
  %398 = load i8*, i8** %397, align 8
  br label %401

399:                                              ; preds = %368
  %400 = load i8*, i8** @sqlite3StrBINARY, align 8
  br label %401

401:                                              ; preds = %399, %395
  %402 = phi i8* [ %398, %395 ], [ %400, %399 ]
  %403 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %404 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %403, i32 0, i32 2
  %405 = load i8**, i8*** %404, align 8
  %406 = load i32, i32* %20, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i8*, i8** %405, i64 %407
  store i8* %402, i8** %408, align 8
  %409 = load i32, i32* %20, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %20, align 4
  br label %411

411:                                              ; preds = %401, %351
  br label %412

412:                                              ; preds = %411, %330
  br label %413

413:                                              ; preds = %412
  %414 = load %struct.TYPE_62__*, %struct.TYPE_62__** %12, align 8
  %415 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %414, i32 1
  store %struct.TYPE_62__* %415, %struct.TYPE_62__** %12, align 8
  br label %326

416:                                              ; preds = %326
  %417 = load i32, i32* %20, align 4
  %418 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  %419 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %418, i32 0, i32 3
  %420 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = icmp eq i32 %417, %422
  %424 = zext i1 %423 to i32
  %425 = call i32 @assert(i32 %424)
  store i32 0, i32* %21, align 4
  br label %426

426:                                              ; preds = %454, %416
  %427 = load i32, i32* %21, align 4
  %428 = load i32, i32* %22, align 4
  %429 = icmp slt i32 %427, %428
  br i1 %429, label %430, label %457

430:                                              ; preds = %426
  %431 = load i32, i32* %27, align 4
  %432 = load i32, i32* %21, align 4
  %433 = call i32 @MASKBIT(i32 %432)
  %434 = and i32 %431, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %453

436:                                              ; preds = %430
  %437 = load i32, i32* %21, align 4
  %438 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %439 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %438, i32 0, i32 1
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %20, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  store i32 %437, i32* %443, align 4
  %444 = load i8*, i8** @sqlite3StrBINARY, align 8
  %445 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %446 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %445, i32 0, i32 2
  %447 = load i8**, i8*** %446, align 8
  %448 = load i32, i32* %20, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8*, i8** %447, i64 %449
  store i8* %444, i8** %450, align 8
  %451 = load i32, i32* %20, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %20, align 4
  br label %453

453:                                              ; preds = %436, %430
  br label %454

454:                                              ; preds = %453
  %455 = load i32, i32* %21, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %21, align 4
  br label %426

457:                                              ; preds = %426
  %458 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %459 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @BMS, align 4
  %462 = sub nsw i32 %461, 1
  %463 = call i32 @MASKBIT(i32 %462)
  %464 = and i32 %460, %463
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %496

466:                                              ; preds = %457
  %467 = load i32, i32* @BMS, align 4
  %468 = sub nsw i32 %467, 1
  store i32 %468, i32* %21, align 4
  br label %469

469:                                              ; preds = %492, %466
  %470 = load i32, i32* %21, align 4
  %471 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %472 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = icmp slt i32 %470, %473
  br i1 %474, label %475, label %495

475:                                              ; preds = %469
  %476 = load i32, i32* %21, align 4
  %477 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %478 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %477, i32 0, i32 1
  %479 = load i32*, i32** %478, align 8
  %480 = load i32, i32* %20, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %479, i64 %481
  store i32 %476, i32* %482, align 4
  %483 = load i8*, i8** @sqlite3StrBINARY, align 8
  %484 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %485 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %484, i32 0, i32 2
  %486 = load i8**, i8*** %485, align 8
  %487 = load i32, i32* %20, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i8*, i8** %486, i64 %488
  store i8* %483, i8** %489, align 8
  %490 = load i32, i32* %20, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %20, align 4
  br label %492

492:                                              ; preds = %475
  %493 = load i32, i32* %21, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %21, align 4
  br label %469

495:                                              ; preds = %469
  br label %496

496:                                              ; preds = %495, %457
  %497 = load i32, i32* %20, align 4
  %498 = load i32, i32* %11, align 4
  %499 = icmp eq i32 %497, %498
  %500 = zext i1 %499 to i32
  %501 = call i32 @assert(i32 %500)
  %502 = load i32, i32* @XN_ROWID, align 4
  %503 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %504 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %503, i32 0, i32 1
  %505 = load i32*, i32** %504, align 8
  %506 = load i32, i32* %20, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  store i32 %502, i32* %508, align 4
  %509 = load i8*, i8** @sqlite3StrBINARY, align 8
  %510 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %511 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %510, i32 0, i32 2
  %512 = load i8**, i8*** %511, align 8
  %513 = load i32, i32* %20, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i8*, i8** %512, i64 %514
  store i8* %509, i8** %515, align 8
  %516 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %517 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = icmp sge i64 %518, 0
  %520 = zext i1 %519 to i32
  %521 = call i32 @assert(i32 %520)
  %522 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %523 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 8
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %523, align 8
  %526 = sext i32 %524 to i64
  %527 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %528 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %527, i32 0, i32 0
  store i64 %526, i64* %528, align 8
  %529 = load i32*, i32** %15, align 8
  %530 = load i32, i32* @OP_OpenAutoindex, align 4
  %531 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %532 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %531, i32 0, i32 0
  %533 = load i64, i64* %532, align 8
  %534 = load i32, i32* %11, align 4
  %535 = add nsw i32 %534, 1
  %536 = call i32 @sqlite3VdbeAddOp2(i32* %529, i32 %530, i64 %533, i32 %535)
  %537 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %538 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %539 = call i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_50__* %537, %struct.TYPE_51__* %538)
  %540 = load i32*, i32** %15, align 8
  %541 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %542 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = sext i32 %543 to i64
  %545 = inttoptr i64 %544 to i32*
  %546 = call i32 @VdbeComment(i32* %545)
  %547 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %548 = call i32 @sqlite3ExprCachePush(%struct.TYPE_50__* %547)
  %549 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %550 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %549, i32 0, i32 1
  %551 = load %struct.TYPE_60__*, %struct.TYPE_60__** %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %551, i32 0, i32 0
  %553 = load %struct.TYPE_59__*, %struct.TYPE_59__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %553, i32 0, i32 0
  %555 = load %struct.SrcList_item*, %struct.SrcList_item** %554, align 8
  %556 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %557 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %556, i32 0, i32 1
  %558 = load i64, i64* %557, align 8
  %559 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %555, i64 %558
  store %struct.SrcList_item* %559, %struct.SrcList_item** %31, align 8
  %560 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %561 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %560, i32 0, i32 2
  %562 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %561, i32 0, i32 0
  %563 = load i64, i64* %562, align 8
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %594

565:                                              ; preds = %496
  %566 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %567 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 4
  store i32 %568, i32* %40, align 4
  %569 = load i32*, i32** %15, align 8
  %570 = load i32, i32* @OP_Integer, align 4
  %571 = call i32 @sqlite3VdbeAddOp2(i32* %569, i32 %570, i64 0, i32 0)
  store i32 %571, i32* %32, align 4
  %572 = load i32*, i32** %15, align 8
  %573 = load i32, i32* @OP_InitCoroutine, align 4
  %574 = load i32, i32* %40, align 4
  %575 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %576 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %575, i32 0, i32 5
  %577 = load i32, i32* %576, align 8
  %578 = call i32 @sqlite3VdbeAddOp3(i32* %572, i32 %573, i32 %574, i32 0, i32 %577)
  %579 = load i32*, i32** %15, align 8
  %580 = load i32, i32* @OP_Yield, align 4
  %581 = load i32, i32* %40, align 4
  %582 = call i32 @sqlite3VdbeAddOp1(i32* %579, i32 %580, i32 %581)
  store i32 %582, i32* %18, align 4
  %583 = load i32*, i32** %15, align 8
  %584 = call i32 @VdbeCoverage(i32* %583)
  %585 = load i32*, i32** %15, align 8
  %586 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %587 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %586, i32 0, i32 4
  %588 = load %struct.TYPE_49__*, %struct.TYPE_49__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %588, i32 0, i32 1
  %590 = load i32, i32* %589, align 4
  %591 = sext i32 %590 to i64
  %592 = inttoptr i64 %591 to i32*
  %593 = call i32 @VdbeComment(i32* %592)
  br label %603

594:                                              ; preds = %496
  %595 = load i32*, i32** %15, align 8
  %596 = load i32, i32* @OP_Rewind, align 4
  %597 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %598 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %597, i32 0, i32 2
  %599 = load i32, i32* %598, align 8
  %600 = call i32 @sqlite3VdbeAddOp1(i32* %595, i32 %596, i32 %599)
  store i32 %600, i32* %18, align 4
  %601 = load i32*, i32** %15, align 8
  %602 = call i32 @VdbeCoverage(i32* %601)
  br label %603

603:                                              ; preds = %594, %565
  %604 = load %struct.TYPE_52__*, %struct.TYPE_52__** %29, align 8
  %605 = icmp ne %struct.TYPE_52__* %604, null
  br i1 %605, label %606, label %619

606:                                              ; preds = %603
  %607 = load i32*, i32** %15, align 8
  %608 = call i32 @sqlite3VdbeMakeLabel(i32* %607)
  store i32 %608, i32* %30, align 4
  %609 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %610 = load %struct.TYPE_52__*, %struct.TYPE_52__** %29, align 8
  %611 = load i32, i32* %30, align 4
  %612 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %613 = call i32 @sqlite3ExprIfFalse(%struct.TYPE_50__* %609, %struct.TYPE_52__* %610, i32 %611, i32 %612)
  %614 = load i32, i32* @WHERE_PARTIALIDX, align 4
  %615 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  %616 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %615, i32 0, i32 2
  %617 = load i32, i32* %616, align 4
  %618 = or i32 %617, %614
  store i32 %618, i32* %616, align 4
  br label %619

619:                                              ; preds = %606, %603
  %620 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %621 = call i32 @sqlite3GetTempReg(%struct.TYPE_50__* %620)
  store i32 %621, i32* %19, align 4
  %622 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %623 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %624 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %625 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %624, i32 0, i32 2
  %626 = load i32, i32* %625, align 8
  %627 = load i32, i32* %19, align 4
  %628 = call i32 @sqlite3GenerateIndexKey(%struct.TYPE_50__* %622, %struct.TYPE_51__* %623, i32 %626, i32 %627, i32 0, i32 0, i32 0, i32 0)
  store i32 %628, i32* %33, align 4
  %629 = load i32*, i32** %15, align 8
  %630 = load i32, i32* @OP_IdxInsert, align 4
  %631 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %632 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %631, i32 0, i32 0
  %633 = load i64, i64* %632, align 8
  %634 = load i32, i32* %19, align 4
  %635 = call i32 @sqlite3VdbeAddOp2(i32* %629, i32 %630, i64 %633, i32 %634)
  %636 = load i32*, i32** %15, align 8
  %637 = load i32, i32* @OPFLAG_USESEEKRESULT, align 4
  %638 = call i32 @sqlite3VdbeChangeP5(i32* %636, i32 %637)
  %639 = load %struct.TYPE_52__*, %struct.TYPE_52__** %29, align 8
  %640 = icmp ne %struct.TYPE_52__* %639, null
  br i1 %640, label %641, label %645

641:                                              ; preds = %619
  %642 = load i32*, i32** %15, align 8
  %643 = load i32, i32* %30, align 4
  %644 = call i32 @sqlite3VdbeResolveLabel(i32* %642, i32 %643)
  br label %645

645:                                              ; preds = %641, %619
  %646 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %647 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %646, i32 0, i32 2
  %648 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %647, i32 0, i32 0
  %649 = load i64, i64* %648, align 8
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %679

651:                                              ; preds = %645
  %652 = load i32*, i32** %15, align 8
  %653 = load i32, i32* %32, align 4
  %654 = load i32, i32* %33, align 4
  %655 = load i32, i32* %20, align 4
  %656 = add nsw i32 %654, %655
  %657 = call i32 @sqlite3VdbeChangeP2(i32* %652, i32 %653, i32 %656)
  %658 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %659 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %658, i32 0, i32 0
  %660 = load %struct.TYPE_54__*, %struct.TYPE_54__** %659, align 8
  %661 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 4
  %663 = call i32 @testcase(i32 %662)
  %664 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %665 = load i32, i32* %18, align 4
  %666 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %667 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %666, i32 0, i32 2
  %668 = load i32, i32* %667, align 8
  %669 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %670 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %669, i32 0, i32 3
  %671 = load i32, i32* %670, align 8
  %672 = call i32 @translateColumnToCopy(%struct.TYPE_50__* %664, i32 %665, i32 %668, i32 %671, i32 1)
  %673 = load i32*, i32** %15, align 8
  %674 = load i32, i32* %18, align 4
  %675 = call i32 @sqlite3VdbeGoto(i32* %673, i32 %674)
  %676 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %677 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %676, i32 0, i32 2
  %678 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %677, i32 0, i32 0
  store i64 0, i64* %678, align 8
  br label %691

679:                                              ; preds = %645
  %680 = load i32*, i32** %15, align 8
  %681 = load i32, i32* @OP_Next, align 4
  %682 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %683 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %682, i32 0, i32 2
  %684 = load i32, i32* %683, align 8
  %685 = sext i32 %684 to i64
  %686 = load i32, i32* %18, align 4
  %687 = add nsw i32 %686, 1
  %688 = call i32 @sqlite3VdbeAddOp2(i32* %680, i32 %681, i64 %685, i32 %687)
  %689 = load i32*, i32** %15, align 8
  %690 = call i32 @VdbeCoverage(i32* %689)
  br label %691

691:                                              ; preds = %679, %651
  %692 = load i32*, i32** %15, align 8
  %693 = load i32, i32* @SQLITE_STMTSTATUS_AUTOINDEX, align 4
  %694 = call i32 @sqlite3VdbeChangeP5(i32* %692, i32 %693)
  %695 = load i32*, i32** %15, align 8
  %696 = load i32, i32* %18, align 4
  %697 = call i32 @sqlite3VdbeJumpHere(i32* %695, i32 %696)
  %698 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %699 = load i32, i32* %19, align 4
  %700 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_50__* %698, i32 %699)
  %701 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %702 = call i32 @sqlite3ExprCachePop(%struct.TYPE_50__* %701)
  %703 = load i32*, i32** %15, align 8
  %704 = load i32, i32* %16, align 4
  %705 = call i32 @sqlite3VdbeJumpHere(i32* %703, i32 %704)
  br label %706

706:                                              ; preds = %691, %311, %196
  %707 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %708 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %707, i32 0, i32 0
  %709 = load %struct.TYPE_54__*, %struct.TYPE_54__** %708, align 8
  %710 = load %struct.TYPE_52__*, %struct.TYPE_52__** %29, align 8
  %711 = call i32 @sqlite3ExprDelete(%struct.TYPE_54__* %709, %struct.TYPE_52__* %710)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_52__*, i32) #1

declare dso_local i64 @sqlite3ExprIsTableConstant(%struct.TYPE_52__*, i32) #1

declare dso_local %struct.TYPE_52__* @sqlite3ExprAnd(%struct.TYPE_54__*, %struct.TYPE_52__*, i32) #1

declare dso_local i32 @sqlite3ExprDup(%struct.TYPE_54__*, %struct.TYPE_52__*, i32) #1

declare dso_local i64 @termCanDriveIndex(%struct.TYPE_62__*, %struct.SrcList_item*, i32) #1

declare dso_local i32 @MASKBIT(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3_log(i32, i8*, i32, i32) #1

declare dso_local i64 @whereLoopResize(%struct.TYPE_54__*, %struct.TYPE_63__*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_51__* @sqlite3AllocateIndexObject(%struct.TYPE_54__*, i32, i32, i8**) #1

declare dso_local %struct.TYPE_53__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_50__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i64, i32) #1

declare dso_local i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_50__*, %struct.TYPE_51__*) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3ExprCachePush(%struct.TYPE_50__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3ExprIfFalse(%struct.TYPE_50__*, %struct.TYPE_52__*, i32, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_50__*) #1

declare dso_local i32 @sqlite3GenerateIndexKey(%struct.TYPE_50__*, %struct.TYPE_51__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP2(i32*, i32, i32) #1

declare dso_local i32 @translateColumnToCopy(%struct.TYPE_50__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @sqlite3ExprCachePop(%struct.TYPE_50__*) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_54__*, %struct.TYPE_52__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
