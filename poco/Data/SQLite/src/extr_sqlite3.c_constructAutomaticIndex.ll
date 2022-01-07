; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_constructAutomaticIndex.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_constructAutomaticIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_49__ = type { %struct.TYPE_53__*, i32, i32* }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_47__ = type { i64, %struct.TYPE_59__*, %struct.TYPE_61__* }
%struct.TYPE_59__ = type { %struct.TYPE_58__* }
%struct.TYPE_58__ = type { %struct.SrcList_item* }
%struct.TYPE_61__ = type { i32, %struct.TYPE_55__, %struct.TYPE_51__* }
%struct.TYPE_55__ = type { i32 }
%struct.TYPE_51__ = type { i32, i32, i32 }
%struct.SrcList_item = type { i32, i32, %struct.TYPE_60__, i32, %struct.TYPE_48__*, i32, i32 }
%struct.TYPE_60__ = type { i64 }
%struct.TYPE_48__ = type { i32, i32, %struct.TYPE_54__* }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_46__ = type { i32, i64, i32, %struct.TYPE_62__* }
%struct.TYPE_62__ = type { i64, i32, i32, %struct.TYPE_57__, %struct.TYPE_61__** }
%struct.TYPE_57__ = type { %struct.TYPE_56__ }
%struct.TYPE_56__ = type { i32, %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i8*, i32*, i8**, %struct.TYPE_48__* }
%struct.TYPE_52__ = type { i8* }

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
@.str.3 = private unnamed_addr constant [15 x i8] c"next row of %s\00", align 1
@OP_Rewind = common dso_local global i32 0, align 4
@SQLITE_JUMPIFNULL = common dso_local global i32 0, align 4
@WHERE_PARTIALIDX = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OPFLAG_USESEEKRESULT = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@SQLITE_STMTSTATUS_AUTOINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_49__*, %struct.TYPE_47__*, %struct.SrcList_item*, i32, %struct.TYPE_46__*)* @constructAutomaticIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @constructAutomaticIndex(%struct.TYPE_49__* %0, %struct.TYPE_47__* %1, %struct.SrcList_item* %2, i32 %3, %struct.TYPE_46__* %4) #0 {
  %6 = alloca %struct.TYPE_49__*, align 8
  %7 = alloca %struct.TYPE_47__*, align 8
  %8 = alloca %struct.SrcList_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_46__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_61__*, align 8
  %13 = alloca %struct.TYPE_61__*, align 8
  %14 = alloca %struct.TYPE_50__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_48__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_52__*, align 8
  %24 = alloca %struct.TYPE_62__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_51__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.SrcList_item*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_51__*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_51__*, align 8
  %40 = alloca i32, align 4
  store %struct.TYPE_49__* %0, %struct.TYPE_49__** %6, align 8
  store %struct.TYPE_47__* %1, %struct.TYPE_47__** %7, align 8
  store %struct.SrcList_item* %2, %struct.SrcList_item** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_46__* %4, %struct.TYPE_46__** %10, align 8
  store i32 0, i32* %28, align 4
  store %struct.TYPE_51__* null, %struct.TYPE_51__** %29, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %32, align 4
  %41 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %41, i32 0, i32 2
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
  %55 = load %struct.TYPE_48__*, %struct.TYPE_48__** %54, align 8
  store %struct.TYPE_48__* %55, %struct.TYPE_48__** %17, align 8
  %56 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_61__*, %struct.TYPE_61__** %57, align 8
  %59 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %58, i64 %61
  store %struct.TYPE_61__* %62, %struct.TYPE_61__** %13, align 8
  %63 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_62__*, %struct.TYPE_62__** %64, align 8
  store %struct.TYPE_62__* %65, %struct.TYPE_62__** %24, align 8
  store i32 0, i32* %26, align 4
  %66 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_61__*, %struct.TYPE_61__** %67, align 8
  store %struct.TYPE_61__* %68, %struct.TYPE_61__** %12, align 8
  br label %69

69:                                               ; preds = %209, %5
  %70 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %71 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %72 = icmp ult %struct.TYPE_61__* %70, %71
  br i1 %72, label %73, label %212

73:                                               ; preds = %69
  %74 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_51__*, %struct.TYPE_51__** %75, align 8
  store %struct.TYPE_51__* %76, %struct.TYPE_51__** %34, align 8
  %77 = load %struct.TYPE_51__*, %struct.TYPE_51__** %34, align 8
  %78 = load i32, i32* @EP_FromJoin, align 4
  %79 = call i32 @ExprHasProperty(%struct.TYPE_51__* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %73
  %82 = load %struct.TYPE_51__*, %struct.TYPE_51__** %34, align 8
  %83 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %86 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %81
  %90 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %91 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %89, %81, %73
  %95 = phi i1 [ true, %81 ], [ true, %73 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %99 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %94
  %103 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TERM_VIRTUAL, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %102
  %110 = load %struct.TYPE_51__*, %struct.TYPE_51__** %34, align 8
  %111 = load i32, i32* @EP_FromJoin, align 4
  %112 = call i32 @ExprHasProperty(%struct.TYPE_51__* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %130, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_51__*, %struct.TYPE_51__** %34, align 8
  %116 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %117 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @sqlite3ExprIsTableConstant(%struct.TYPE_51__* %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %123 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %124 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_53__*, %struct.TYPE_53__** %125, align 8
  %127 = load %struct.TYPE_51__*, %struct.TYPE_51__** %34, align 8
  %128 = call i32 @sqlite3ExprDup(%struct.TYPE_53__* %126, %struct.TYPE_51__* %127, i32 0)
  %129 = call %struct.TYPE_51__* @sqlite3ExprAnd(%struct.TYPE_49__* %122, %struct.TYPE_51__* %123, i32 %128)
  store %struct.TYPE_51__* %129, %struct.TYPE_51__** %29, align 8
  br label %130

130:                                              ; preds = %121, %114, %109, %102, %94
  %131 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %132 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i64 @termCanDriveIndex(%struct.TYPE_61__* %131, %struct.SrcList_item* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %208

136:                                              ; preds = %130
  %137 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %35, align 4
  %141 = load i32, i32* %35, align 4
  %142 = load i32, i32* @BMS, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = load i32, i32* @BMS, align 4
  %146 = sub nsw i32 %145, 1
  %147 = call i32 @MASKBIT(i32 %146)
  br label %151

148:                                              ; preds = %136
  %149 = load i32, i32* %35, align 4
  %150 = call i32 @MASKBIT(i32 %149)
  br label %151

151:                                              ; preds = %148, %144
  %152 = phi i32 [ %147, %144 ], [ %150, %148 ]
  store i32 %152, i32* %36, align 4
  %153 = load i32, i32* %35, align 4
  %154 = load i32, i32* @BMS, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @testcase(i32 %156)
  %158 = load i32, i32* %35, align 4
  %159 = load i32, i32* @BMS, align 4
  %160 = sub nsw i32 %159, 1
  %161 = icmp eq i32 %158, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @testcase(i32 %162)
  %164 = load i32, i32* %28, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %180, label %166

166:                                              ; preds = %151
  %167 = load i32, i32* @SQLITE_WARNING_AUTOINDEX, align 4
  %168 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_54__*, %struct.TYPE_54__** %172, align 8
  %174 = load i32, i32* %35, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @sqlite3_log(i32 %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %170, i32 %178)
  store i32 1, i32* %28, align 4
  br label %180

180:                                              ; preds = %166, %151
  %181 = load i32, i32* %26, align 4
  %182 = load i32, i32* %36, align 4
  %183 = and i32 %181, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %207

185:                                              ; preds = %180
  %186 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_53__*, %struct.TYPE_53__** %187, align 8
  %189 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  %192 = call i64 @whereLoopResize(%struct.TYPE_53__* %188, %struct.TYPE_62__* %189, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  br label %707

195:                                              ; preds = %185
  %196 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %197 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %198 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_61__**, %struct.TYPE_61__*** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %11, align 4
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds %struct.TYPE_61__*, %struct.TYPE_61__** %199, i64 %202
  store %struct.TYPE_61__* %196, %struct.TYPE_61__** %203, align 8
  %204 = load i32, i32* %36, align 4
  %205 = load i32, i32* %26, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %26, align 4
  br label %207

207:                                              ; preds = %195, %180
  br label %208

208:                                              ; preds = %207, %130
  br label %209

209:                                              ; preds = %208
  %210 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %210, i32 1
  store %struct.TYPE_61__* %211, %struct.TYPE_61__** %12, align 8
  br label %69

212:                                              ; preds = %69
  %213 = load i32, i32* %11, align 4
  %214 = icmp sgt i32 %213, 0
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %219 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 8
  %220 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %221 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %222, i32 0, i32 0
  store i32 %217, i32* %223, align 8
  %224 = load i32, i32* @WHERE_COLUMN_EQ, align 4
  %225 = load i32, i32* @WHERE_IDX_ONLY, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @WHERE_INDEXED, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @WHERE_AUTO_INDEX, align 4
  %230 = or i32 %228, %229
  %231 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %232 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 4
  %233 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %234 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %26, align 4
  %237 = xor i32 %236, -1
  %238 = load i32, i32* @BMS, align 4
  %239 = sub nsw i32 %238, 1
  %240 = call i32 @MASKBIT(i32 %239)
  %241 = or i32 %237, %240
  %242 = and i32 %235, %241
  store i32 %242, i32* %27, align 4
  %243 = load i32, i32* @BMS, align 4
  %244 = sub nsw i32 %243, 1
  %245 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %246 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @MIN(i32 %244, i32 %247)
  store i32 %248, i32* %22, align 4
  %249 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @BMS, align 4
  %253 = sub nsw i32 %252, 1
  %254 = icmp eq i32 %251, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @testcase(i32 %255)
  %257 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %258 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @BMS, align 4
  %261 = sub nsw i32 %260, 2
  %262 = icmp eq i32 %259, %261
  %263 = zext i1 %262 to i32
  %264 = call i32 @testcase(i32 %263)
  store i32 0, i32* %21, align 4
  br label %265

265:                                              ; preds = %279, %212
  %266 = load i32, i32* %21, align 4
  %267 = load i32, i32* %22, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %282

269:                                              ; preds = %265
  %270 = load i32, i32* %27, align 4
  %271 = load i32, i32* %21, align 4
  %272 = call i32 @MASKBIT(i32 %271)
  %273 = and i32 %270, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %269
  %276 = load i32, i32* %11, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %11, align 4
  br label %278

278:                                              ; preds = %275, %269
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %21, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %21, align 4
  br label %265

282:                                              ; preds = %265
  %283 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %284 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @BMS, align 4
  %287 = sub nsw i32 %286, 1
  %288 = call i32 @MASKBIT(i32 %287)
  %289 = and i32 %285, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %300

291:                                              ; preds = %282
  %292 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %293 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @BMS, align 4
  %296 = sub nsw i32 %294, %295
  %297 = add nsw i32 %296, 1
  %298 = load i32, i32* %11, align 4
  %299 = add nsw i32 %298, %297
  store i32 %299, i32* %11, align 4
  br label %300

300:                                              ; preds = %291, %282
  %301 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_53__*, %struct.TYPE_53__** %302, align 8
  %304 = load i32, i32* %11, align 4
  %305 = add nsw i32 %304, 1
  %306 = call %struct.TYPE_50__* @sqlite3AllocateIndexObject(%struct.TYPE_53__* %303, i32 %305, i32 0, i8** %25)
  store %struct.TYPE_50__* %306, %struct.TYPE_50__** %14, align 8
  %307 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %308 = icmp eq %struct.TYPE_50__* %307, null
  br i1 %308, label %309, label %310

309:                                              ; preds = %300
  br label %707

310:                                              ; preds = %300
  %311 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %312 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %313 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %312, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %314, i32 0, i32 1
  store %struct.TYPE_50__* %311, %struct.TYPE_50__** %315, align 8
  %316 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %316, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %317, align 8
  %318 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %319 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %320 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %319, i32 0, i32 3
  store %struct.TYPE_48__* %318, %struct.TYPE_48__** %320, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %26, align 4
  %321 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_61__*, %struct.TYPE_61__** %322, align 8
  store %struct.TYPE_61__* %323, %struct.TYPE_61__** %12, align 8
  br label %324

324:                                              ; preds = %411, %310
  %325 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %326 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %327 = icmp ult %struct.TYPE_61__* %325, %326
  br i1 %327, label %328, label %414

328:                                              ; preds = %324
  %329 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %330 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %331 = load i32, i32* %9, align 4
  %332 = call i64 @termCanDriveIndex(%struct.TYPE_61__* %329, %struct.SrcList_item* %330, i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %410

334:                                              ; preds = %328
  %335 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %336 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %37, align 4
  %339 = load i32, i32* %37, align 4
  %340 = load i32, i32* @BMS, align 4
  %341 = icmp sge i32 %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %334
  %343 = load i32, i32* @BMS, align 4
  %344 = sub nsw i32 %343, 1
  %345 = call i32 @MASKBIT(i32 %344)
  br label %349

346:                                              ; preds = %334
  %347 = load i32, i32* %37, align 4
  %348 = call i32 @MASKBIT(i32 %347)
  br label %349

349:                                              ; preds = %346, %342
  %350 = phi i32 [ %345, %342 ], [ %348, %346 ]
  store i32 %350, i32* %38, align 4
  %351 = load i32, i32* %37, align 4
  %352 = load i32, i32* @BMS, align 4
  %353 = sub nsw i32 %352, 1
  %354 = icmp eq i32 %351, %353
  %355 = zext i1 %354 to i32
  %356 = call i32 @testcase(i32 %355)
  %357 = load i32, i32* %37, align 4
  %358 = load i32, i32* @BMS, align 4
  %359 = icmp eq i32 %357, %358
  %360 = zext i1 %359 to i32
  %361 = call i32 @testcase(i32 %360)
  %362 = load i32, i32* %26, align 4
  %363 = load i32, i32* %38, align 4
  %364 = and i32 %362, %363
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %409

366:                                              ; preds = %349
  %367 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %368 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %367, i32 0, i32 2
  %369 = load %struct.TYPE_51__*, %struct.TYPE_51__** %368, align 8
  store %struct.TYPE_51__* %369, %struct.TYPE_51__** %39, align 8
  %370 = load i32, i32* %38, align 4
  %371 = load i32, i32* %26, align 4
  %372 = or i32 %371, %370
  store i32 %372, i32* %26, align 4
  %373 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %374 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %378 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %377, i32 0, i32 1
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %20, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  store i32 %376, i32* %382, align 4
  %383 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %384 = load %struct.TYPE_51__*, %struct.TYPE_51__** %39, align 8
  %385 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_51__*, %struct.TYPE_51__** %39, align 8
  %388 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = call %struct.TYPE_52__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_49__* %383, i32 %386, i32 %389)
  store %struct.TYPE_52__* %390, %struct.TYPE_52__** %23, align 8
  %391 = load %struct.TYPE_52__*, %struct.TYPE_52__** %23, align 8
  %392 = icmp ne %struct.TYPE_52__* %391, null
  br i1 %392, label %393, label %397

393:                                              ; preds = %366
  %394 = load %struct.TYPE_52__*, %struct.TYPE_52__** %23, align 8
  %395 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %394, i32 0, i32 0
  %396 = load i8*, i8** %395, align 8
  br label %399

397:                                              ; preds = %366
  %398 = load i8*, i8** @sqlite3StrBINARY, align 8
  br label %399

399:                                              ; preds = %397, %393
  %400 = phi i8* [ %396, %393 ], [ %398, %397 ]
  %401 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %402 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %401, i32 0, i32 2
  %403 = load i8**, i8*** %402, align 8
  %404 = load i32, i32* %20, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8*, i8** %403, i64 %405
  store i8* %400, i8** %406, align 8
  %407 = load i32, i32* %20, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %20, align 4
  br label %409

409:                                              ; preds = %399, %349
  br label %410

410:                                              ; preds = %409, %328
  br label %411

411:                                              ; preds = %410
  %412 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %413 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %412, i32 1
  store %struct.TYPE_61__* %413, %struct.TYPE_61__** %12, align 8
  br label %324

414:                                              ; preds = %324
  %415 = load i32, i32* %20, align 4
  %416 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %417 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %416, i32 0, i32 3
  %418 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = icmp eq i32 %415, %420
  %422 = zext i1 %421 to i32
  %423 = call i32 @assert(i32 %422)
  store i32 0, i32* %21, align 4
  br label %424

424:                                              ; preds = %452, %414
  %425 = load i32, i32* %21, align 4
  %426 = load i32, i32* %22, align 4
  %427 = icmp slt i32 %425, %426
  br i1 %427, label %428, label %455

428:                                              ; preds = %424
  %429 = load i32, i32* %27, align 4
  %430 = load i32, i32* %21, align 4
  %431 = call i32 @MASKBIT(i32 %430)
  %432 = and i32 %429, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %451

434:                                              ; preds = %428
  %435 = load i32, i32* %21, align 4
  %436 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %437 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %436, i32 0, i32 1
  %438 = load i32*, i32** %437, align 8
  %439 = load i32, i32* %20, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  store i32 %435, i32* %441, align 4
  %442 = load i8*, i8** @sqlite3StrBINARY, align 8
  %443 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %444 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %443, i32 0, i32 2
  %445 = load i8**, i8*** %444, align 8
  %446 = load i32, i32* %20, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i8*, i8** %445, i64 %447
  store i8* %442, i8** %448, align 8
  %449 = load i32, i32* %20, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %20, align 4
  br label %451

451:                                              ; preds = %434, %428
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %21, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %21, align 4
  br label %424

455:                                              ; preds = %424
  %456 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %457 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* @BMS, align 4
  %460 = sub nsw i32 %459, 1
  %461 = call i32 @MASKBIT(i32 %460)
  %462 = and i32 %458, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %494

464:                                              ; preds = %455
  %465 = load i32, i32* @BMS, align 4
  %466 = sub nsw i32 %465, 1
  store i32 %466, i32* %21, align 4
  br label %467

467:                                              ; preds = %490, %464
  %468 = load i32, i32* %21, align 4
  %469 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %470 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = icmp slt i32 %468, %471
  br i1 %472, label %473, label %493

473:                                              ; preds = %467
  %474 = load i32, i32* %21, align 4
  %475 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %476 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %475, i32 0, i32 1
  %477 = load i32*, i32** %476, align 8
  %478 = load i32, i32* %20, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %477, i64 %479
  store i32 %474, i32* %480, align 4
  %481 = load i8*, i8** @sqlite3StrBINARY, align 8
  %482 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %483 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %482, i32 0, i32 2
  %484 = load i8**, i8*** %483, align 8
  %485 = load i32, i32* %20, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i8*, i8** %484, i64 %486
  store i8* %481, i8** %487, align 8
  %488 = load i32, i32* %20, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %20, align 4
  br label %490

490:                                              ; preds = %473
  %491 = load i32, i32* %21, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %21, align 4
  br label %467

493:                                              ; preds = %467
  br label %494

494:                                              ; preds = %493, %455
  %495 = load i32, i32* %20, align 4
  %496 = load i32, i32* %11, align 4
  %497 = icmp eq i32 %495, %496
  %498 = zext i1 %497 to i32
  %499 = call i32 @assert(i32 %498)
  %500 = load i32, i32* @XN_ROWID, align 4
  %501 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %502 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %501, i32 0, i32 1
  %503 = load i32*, i32** %502, align 8
  %504 = load i32, i32* %20, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %503, i64 %505
  store i32 %500, i32* %506, align 4
  %507 = load i8*, i8** @sqlite3StrBINARY, align 8
  %508 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %509 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %508, i32 0, i32 2
  %510 = load i8**, i8*** %509, align 8
  %511 = load i32, i32* %20, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i8*, i8** %510, i64 %512
  store i8* %507, i8** %513, align 8
  %514 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %515 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = icmp sge i32 %516, 0
  %518 = zext i1 %517 to i32
  %519 = call i32 @assert(i32 %518)
  %520 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %521 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 8
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %521, align 8
  %524 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %525 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %524, i32 0, i32 0
  store i32 %522, i32* %525, align 8
  %526 = load i32*, i32** %15, align 8
  %527 = load i32, i32* @OP_OpenAutoindex, align 4
  %528 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %529 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 8
  %531 = load i32, i32* %11, align 4
  %532 = add nsw i32 %531, 1
  %533 = call i32 @sqlite3VdbeAddOp2(i32* %526, i32 %527, i32 %530, i32 %532)
  %534 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %535 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %536 = call i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_49__* %534, %struct.TYPE_50__* %535)
  %537 = load i32*, i32** %15, align 8
  %538 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %539 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %538, i32 0, i32 1
  %540 = load i32, i32* %539, align 4
  %541 = sext i32 %540 to i64
  %542 = inttoptr i64 %541 to i32*
  %543 = call i32 @VdbeComment(i32* %542)
  %544 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %545 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %544, i32 0, i32 1
  %546 = load %struct.TYPE_59__*, %struct.TYPE_59__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %546, i32 0, i32 0
  %548 = load %struct.TYPE_58__*, %struct.TYPE_58__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %548, i32 0, i32 0
  %550 = load %struct.SrcList_item*, %struct.SrcList_item** %549, align 8
  %551 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %552 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %551, i32 0, i32 1
  %553 = load i64, i64* %552, align 8
  %554 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %550, i64 %553
  store %struct.SrcList_item* %554, %struct.SrcList_item** %31, align 8
  %555 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %556 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %555, i32 0, i32 2
  %557 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %556, i32 0, i32 0
  %558 = load i64, i64* %557, align 8
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %589

560:                                              ; preds = %494
  %561 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %562 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %561, i32 0, i32 1
  %563 = load i32, i32* %562, align 4
  store i32 %563, i32* %40, align 4
  %564 = load i32*, i32** %15, align 8
  %565 = load i32, i32* @OP_Integer, align 4
  %566 = call i32 @sqlite3VdbeAddOp2(i32* %564, i32 %565, i32 0, i32 0)
  store i32 %566, i32* %32, align 4
  %567 = load i32*, i32** %15, align 8
  %568 = load i32, i32* @OP_InitCoroutine, align 4
  %569 = load i32, i32* %40, align 4
  %570 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %571 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %570, i32 0, i32 5
  %572 = load i32, i32* %571, align 8
  %573 = call i32 @sqlite3VdbeAddOp3(i32* %567, i32 %568, i32 %569, i32 0, i32 %572)
  %574 = load i32*, i32** %15, align 8
  %575 = load i32, i32* @OP_Yield, align 4
  %576 = load i32, i32* %40, align 4
  %577 = call i32 @sqlite3VdbeAddOp1(i32* %574, i32 %575, i32 %576)
  store i32 %577, i32* %18, align 4
  %578 = load i32*, i32** %15, align 8
  %579 = call i32 @VdbeCoverage(i32* %578)
  %580 = load i32*, i32** %15, align 8
  %581 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %582 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %581, i32 0, i32 4
  %583 = load %struct.TYPE_48__*, %struct.TYPE_48__** %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %583, i32 0, i32 1
  %585 = load i32, i32* %584, align 4
  %586 = sext i32 %585 to i64
  %587 = inttoptr i64 %586 to i32*
  %588 = call i32 @VdbeComment(i32* %587)
  br label %598

589:                                              ; preds = %494
  %590 = load i32*, i32** %15, align 8
  %591 = load i32, i32* @OP_Rewind, align 4
  %592 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %593 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %592, i32 0, i32 2
  %594 = load i32, i32* %593, align 8
  %595 = call i32 @sqlite3VdbeAddOp1(i32* %590, i32 %591, i32 %594)
  store i32 %595, i32* %18, align 4
  %596 = load i32*, i32** %15, align 8
  %597 = call i32 @VdbeCoverage(i32* %596)
  br label %598

598:                                              ; preds = %589, %560
  %599 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %600 = icmp ne %struct.TYPE_51__* %599, null
  br i1 %600, label %601, label %614

601:                                              ; preds = %598
  %602 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %603 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_49__* %602)
  store i32 %603, i32* %30, align 4
  %604 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %605 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %606 = load i32, i32* %30, align 4
  %607 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %608 = call i32 @sqlite3ExprIfFalse(%struct.TYPE_49__* %604, %struct.TYPE_51__* %605, i32 %606, i32 %607)
  %609 = load i32, i32* @WHERE_PARTIALIDX, align 4
  %610 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %611 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %610, i32 0, i32 2
  %612 = load i32, i32* %611, align 4
  %613 = or i32 %612, %609
  store i32 %613, i32* %611, align 4
  br label %614

614:                                              ; preds = %601, %598
  %615 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %616 = call i32 @sqlite3GetTempReg(%struct.TYPE_49__* %615)
  store i32 %616, i32* %19, align 4
  %617 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %618 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %619 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %620 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %619, i32 0, i32 2
  %621 = load i32, i32* %620, align 8
  %622 = load i32, i32* %19, align 4
  %623 = call i32 @sqlite3GenerateIndexKey(%struct.TYPE_49__* %617, %struct.TYPE_50__* %618, i32 %621, i32 %622, i32 0, i32 0, i32 0, i32 0)
  store i32 %623, i32* %33, align 4
  %624 = load i32*, i32** %15, align 8
  %625 = load i32, i32* @OP_IdxInsert, align 4
  %626 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %627 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 8
  %629 = load i32, i32* %19, align 4
  %630 = call i32 @sqlite3VdbeAddOp2(i32* %624, i32 %625, i32 %628, i32 %629)
  %631 = load i32*, i32** %15, align 8
  %632 = load i32, i32* @OPFLAG_USESEEKRESULT, align 4
  %633 = call i32 @sqlite3VdbeChangeP5(i32* %631, i32 %632)
  %634 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %635 = icmp ne %struct.TYPE_51__* %634, null
  br i1 %635, label %636, label %640

636:                                              ; preds = %614
  %637 = load i32*, i32** %15, align 8
  %638 = load i32, i32* %30, align 4
  %639 = call i32 @sqlite3VdbeResolveLabel(i32* %637, i32 %638)
  br label %640

640:                                              ; preds = %636, %614
  %641 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %642 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %641, i32 0, i32 2
  %643 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %642, i32 0, i32 0
  %644 = load i64, i64* %643, align 8
  %645 = icmp ne i64 %644, 0
  br i1 %645, label %646, label %683

646:                                              ; preds = %640
  %647 = load i32*, i32** %15, align 8
  %648 = load i32, i32* %32, align 4
  %649 = load i32, i32* %33, align 4
  %650 = load i32, i32* %20, align 4
  %651 = add nsw i32 %649, %650
  %652 = call i32 @sqlite3VdbeChangeP2(i32* %647, i32 %648, i32 %651)
  %653 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %654 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %653, i32 0, i32 0
  %655 = load %struct.TYPE_53__*, %struct.TYPE_53__** %654, align 8
  %656 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %655, i32 0, i32 0
  %657 = load i32, i32* %656, align 4
  %658 = call i32 @testcase(i32 %657)
  %659 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %660 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %659, i32 0, i32 0
  %661 = load i32, i32* %660, align 8
  %662 = icmp sgt i32 %661, 0
  %663 = zext i1 %662 to i32
  %664 = call i32 @assert(i32 %663)
  %665 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %666 = load i32, i32* %18, align 4
  %667 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %668 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %667, i32 0, i32 2
  %669 = load i32, i32* %668, align 8
  %670 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %671 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %670, i32 0, i32 3
  %672 = load i32, i32* %671, align 8
  %673 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %674 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 8
  %676 = call i32 @translateColumnToCopy(%struct.TYPE_49__* %665, i32 %666, i32 %669, i32 %672, i32 %675)
  %677 = load i32*, i32** %15, align 8
  %678 = load i32, i32* %18, align 4
  %679 = call i32 @sqlite3VdbeGoto(i32* %677, i32 %678)
  %680 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %681 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %680, i32 0, i32 2
  %682 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %681, i32 0, i32 0
  store i64 0, i64* %682, align 8
  br label %694

683:                                              ; preds = %640
  %684 = load i32*, i32** %15, align 8
  %685 = load i32, i32* @OP_Next, align 4
  %686 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %687 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %686, i32 0, i32 2
  %688 = load i32, i32* %687, align 8
  %689 = load i32, i32* %18, align 4
  %690 = add nsw i32 %689, 1
  %691 = call i32 @sqlite3VdbeAddOp2(i32* %684, i32 %685, i32 %688, i32 %690)
  %692 = load i32*, i32** %15, align 8
  %693 = call i32 @VdbeCoverage(i32* %692)
  br label %694

694:                                              ; preds = %683, %646
  %695 = load i32*, i32** %15, align 8
  %696 = load i32, i32* @SQLITE_STMTSTATUS_AUTOINDEX, align 4
  %697 = call i32 @sqlite3VdbeChangeP5(i32* %695, i32 %696)
  %698 = load i32*, i32** %15, align 8
  %699 = load i32, i32* %18, align 4
  %700 = call i32 @sqlite3VdbeJumpHere(i32* %698, i32 %699)
  %701 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %702 = load i32, i32* %19, align 4
  %703 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_49__* %701, i32 %702)
  %704 = load i32*, i32** %15, align 8
  %705 = load i32, i32* %16, align 4
  %706 = call i32 @sqlite3VdbeJumpHere(i32* %704, i32 %705)
  br label %707

707:                                              ; preds = %694, %309, %194
  %708 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %709 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %708, i32 0, i32 0
  %710 = load %struct.TYPE_53__*, %struct.TYPE_53__** %709, align 8
  %711 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %712 = call i32 @sqlite3ExprDelete(%struct.TYPE_53__* %710, %struct.TYPE_51__* %711)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_51__*, i32) #1

declare dso_local i64 @sqlite3ExprIsTableConstant(%struct.TYPE_51__*, i32) #1

declare dso_local %struct.TYPE_51__* @sqlite3ExprAnd(%struct.TYPE_49__*, %struct.TYPE_51__*, i32) #1

declare dso_local i32 @sqlite3ExprDup(%struct.TYPE_53__*, %struct.TYPE_51__*, i32) #1

declare dso_local i64 @termCanDriveIndex(%struct.TYPE_61__*, %struct.SrcList_item*, i32) #1

declare dso_local i32 @MASKBIT(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3_log(i32, i8*, i32, i32) #1

declare dso_local i64 @whereLoopResize(%struct.TYPE_53__*, %struct.TYPE_62__*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_50__* @sqlite3AllocateIndexObject(%struct.TYPE_53__*, i32, i32, i8**) #1

declare dso_local %struct.TYPE_52__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_49__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_49__*, %struct.TYPE_50__*) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_49__*) #1

declare dso_local i32 @sqlite3ExprIfFalse(%struct.TYPE_49__*, %struct.TYPE_51__*, i32, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_49__*) #1

declare dso_local i32 @sqlite3GenerateIndexKey(%struct.TYPE_49__*, %struct.TYPE_50__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP2(i32*, i32, i32) #1

declare dso_local i32 @translateColumnToCopy(%struct.TYPE_49__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_49__*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_53__*, %struct.TYPE_51__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
