; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_fkActionTrigger.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_fkActionTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_70__ = type { i8*, i32, i8*, i32 }
%struct.TYPE_69__ = type { i8*, i32, i32, i8*, %struct.TYPE_68__* }
%struct.TYPE_68__ = type { i8*, %struct.TYPE_69__*, i8*, i32, i32, i8* }
%struct.TYPE_58__ = type { %struct.TYPE_67__* }
%struct.TYPE_67__ = type { i32, i32, %struct.TYPE_62__ }
%struct.TYPE_62__ = type { i32 }
%struct.TYPE_57__ = type { i64, i64, i32, %struct.TYPE_64__* }
%struct.TYPE_64__ = type { i32 }
%struct.TYPE_60__ = type { i32*, i32, %struct.TYPE_69__**, %struct.TYPE_66__*, %struct.TYPE_63__* }
%struct.TYPE_66__ = type { i8*, %struct.TYPE_65__* }
%struct.TYPE_65__ = type { %struct.TYPE_61__*, i32 }
%struct.TYPE_61__ = type { i32 }
%struct.TYPE_63__ = type { i32 }
%struct.TYPE_59__ = type { i64* }

@SQLITE_DeferFKs = common dso_local global i32 0, align 4
@OE_None = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"old\00", align 1
@__const.fkActionTrigger.tOld = private unnamed_addr constant %struct.TYPE_70__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 3, i8* null, i32 0 }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@__const.fkActionTrigger.tNew = private unnamed_addr constant %struct.TYPE_70__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 3, i8* null, i32 0 }, align 8
@TK_EQ = common dso_local global i32 0, align 4
@TK_DOT = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@TK_IS = common dso_local global i32 0, align 4
@OE_SetDflt = common dso_local global i32 0, align 4
@TK_NULL = common dso_local global i32 0, align 4
@TK_RAISE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"FOREIGN KEY constraint failed\00", align 1
@OE_Abort = common dso_local global i32 0, align 4
@EXPRDUP_REDUCE = common dso_local global i32 0, align 4
@TK_NOT = common dso_local global i32 0, align 4
@TK_SELECT = common dso_local global i8* null, align 8
@TK_DELETE = common dso_local global i8* null, align 8
@TK_UPDATE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_69__* (%struct.TYPE_58__*, %struct.TYPE_57__*, %struct.TYPE_60__*, i32*)* @fkActionTrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_69__* @fkActionTrigger(%struct.TYPE_58__* %0, %struct.TYPE_57__* %1, %struct.TYPE_60__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_69__*, align 8
  %6 = alloca %struct.TYPE_58__*, align 8
  %7 = alloca %struct.TYPE_57__*, align 8
  %8 = alloca %struct.TYPE_60__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_67__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_69__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_59__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_68__*, align 8
  %19 = alloca %struct.TYPE_61__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_61__*, align 8
  %24 = alloca %struct.TYPE_70__, align 8
  %25 = alloca %struct.TYPE_70__, align 8
  %26 = alloca %struct.TYPE_70__, align 8
  %27 = alloca %struct.TYPE_70__, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_61__*, align 8
  %30 = alloca %struct.TYPE_61__*, align 8
  %31 = alloca %struct.TYPE_61__*, align 8
  %32 = alloca %struct.TYPE_70__, align 8
  %33 = alloca %struct.TYPE_61__*, align 8
  store %struct.TYPE_58__* %0, %struct.TYPE_58__** %6, align 8
  store %struct.TYPE_57__* %1, %struct.TYPE_57__** %7, align 8
  store %struct.TYPE_60__* %2, %struct.TYPE_60__** %8, align 8
  store i32* %3, i32** %9, align 8
  %34 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_67__*, %struct.TYPE_67__** %35, align 8
  store %struct.TYPE_67__* %36, %struct.TYPE_67__** %10, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 128
  br i1 %48, label %49, label %57

49:                                               ; preds = %4
  %50 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SQLITE_DeferFKs, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store %struct.TYPE_69__* null, %struct.TYPE_69__** %5, align 8
  br label %485

57:                                               ; preds = %49, %4
  %58 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_69__**, %struct.TYPE_69__*** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_69__*, %struct.TYPE_69__** %60, i64 %62
  %64 = load %struct.TYPE_69__*, %struct.TYPE_69__** %63, align 8
  store %struct.TYPE_69__* %64, %struct.TYPE_69__** %12, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @OE_None, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %483

68:                                               ; preds = %57
  %69 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %70 = icmp ne %struct.TYPE_69__* %69, null
  br i1 %70, label %483, label %71

71:                                               ; preds = %68
  store %struct.TYPE_59__* null, %struct.TYPE_59__** %16, align 8
  store i32* null, i32** %17, align 8
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %18, align 8
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %23, align 8
  %72 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %73 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %74 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %75 = call i64 @sqlite3FkLocateIndex(%struct.TYPE_58__* %72, %struct.TYPE_57__* %73, %struct.TYPE_60__* %74, %struct.TYPE_59__** %16, i32** %17)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store %struct.TYPE_69__* null, %struct.TYPE_69__** %5, align 8
  br label %485

78:                                               ; preds = %71
  %79 = load i32*, i32** %17, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 1
  br label %86

86:                                               ; preds = %81, %78
  %87 = phi i1 [ true, %78 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  store i32 0, i32* %22, align 4
  br label %90

90:                                               ; preds = %300, %86
  %91 = load i32, i32* %22, align 4
  %92 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %303

96:                                               ; preds = %90
  %97 = bitcast %struct.TYPE_70__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 bitcast (%struct.TYPE_70__* @__const.fkActionTrigger.tOld to i8*), i64 32, i1 false)
  %98 = bitcast %struct.TYPE_70__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 bitcast (%struct.TYPE_70__* @__const.fkActionTrigger.tNew to i8*), i64 32, i1 false)
  %99 = load i32*, i32** %17, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* %22, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  br label %114

107:                                              ; preds = %96
  %108 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_63__*, %struct.TYPE_63__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  br label %114

114:                                              ; preds = %107, %101
  %115 = phi i32 [ %106, %101 ], [ %113, %107 ]
  store i32 %115, i32* %28, align 4
  %116 = load i32, i32* %28, align 4
  %117 = icmp sge i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load %struct.TYPE_59__*, %struct.TYPE_59__** %16, align 8
  %121 = icmp ne %struct.TYPE_59__* %120, null
  br i1 %121, label %137, label %122

122:                                              ; preds = %114
  %123 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp uge i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ult i64 %130, %133
  br label %135

135:                                              ; preds = %127, %122
  %136 = phi i1 [ false, %122 ], [ %134, %127 ]
  br label %137

137:                                              ; preds = %135, %114
  %138 = phi i1 [ true, %114 ], [ %136, %135 ]
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load %struct.TYPE_59__*, %struct.TYPE_59__** %16, align 8
  %142 = icmp eq %struct.TYPE_59__* %141, null
  br i1 %142, label %152, label %143

143:                                              ; preds = %137
  %144 = load %struct.TYPE_59__*, %struct.TYPE_59__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %22, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp uge i64 %150, 0
  br label %152

152:                                              ; preds = %143, %137
  %153 = phi i1 [ true, %137 ], [ %151, %143 ]
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_64__*, %struct.TYPE_64__** %157, align 8
  %159 = load %struct.TYPE_59__*, %struct.TYPE_59__** %16, align 8
  %160 = icmp ne %struct.TYPE_59__* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %152
  %162 = load %struct.TYPE_59__*, %struct.TYPE_59__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %22, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  br label %173

169:                                              ; preds = %152
  %170 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  br label %173

173:                                              ; preds = %169, %161
  %174 = phi i64 [ %168, %161 ], [ %172, %169 ]
  %175 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %158, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @sqlite3TokenInit(%struct.TYPE_70__* %27, i32 %177)
  %179 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_66__*, %struct.TYPE_66__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_65__*, %struct.TYPE_65__** %182, align 8
  %184 = load i32, i32* %28, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @sqlite3TokenInit(%struct.TYPE_70__* %26, i32 %188)
  %190 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %191 = load i32, i32* @TK_EQ, align 4
  %192 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %193 = load i32, i32* @TK_DOT, align 4
  %194 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %195 = load i32, i32* @TK_ID, align 4
  %196 = call %struct.TYPE_61__* @sqlite3ExprAlloc(%struct.TYPE_67__* %194, i32 %195, %struct.TYPE_70__* %24, i32 0)
  %197 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %198 = load i32, i32* @TK_ID, align 4
  %199 = call %struct.TYPE_61__* @sqlite3ExprAlloc(%struct.TYPE_67__* %197, i32 %198, %struct.TYPE_70__* %27, i32 0)
  %200 = call %struct.TYPE_61__* @sqlite3PExpr(%struct.TYPE_58__* %192, i32 %193, %struct.TYPE_61__* %196, %struct.TYPE_61__* %199)
  %201 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %202 = load i32, i32* @TK_ID, align 4
  %203 = call %struct.TYPE_61__* @sqlite3ExprAlloc(%struct.TYPE_67__* %201, i32 %202, %struct.TYPE_70__* %26, i32 0)
  %204 = call %struct.TYPE_61__* @sqlite3PExpr(%struct.TYPE_58__* %190, i32 %191, %struct.TYPE_61__* %200, %struct.TYPE_61__* %203)
  store %struct.TYPE_61__* %204, %struct.TYPE_61__** %29, align 8
  %205 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %206 = load %struct.TYPE_61__*, %struct.TYPE_61__** %19, align 8
  %207 = load %struct.TYPE_61__*, %struct.TYPE_61__** %29, align 8
  %208 = call %struct.TYPE_61__* @sqlite3ExprAnd(%struct.TYPE_67__* %205, %struct.TYPE_61__* %206, %struct.TYPE_61__* %207)
  store %struct.TYPE_61__* %208, %struct.TYPE_61__** %19, align 8
  %209 = load i32*, i32** %9, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %237

211:                                              ; preds = %173
  %212 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %213 = load i32, i32* @TK_IS, align 4
  %214 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %215 = load i32, i32* @TK_DOT, align 4
  %216 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %217 = load i32, i32* @TK_ID, align 4
  %218 = call %struct.TYPE_61__* @sqlite3ExprAlloc(%struct.TYPE_67__* %216, i32 %217, %struct.TYPE_70__* %24, i32 0)
  %219 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %220 = load i32, i32* @TK_ID, align 4
  %221 = call %struct.TYPE_61__* @sqlite3ExprAlloc(%struct.TYPE_67__* %219, i32 %220, %struct.TYPE_70__* %27, i32 0)
  %222 = call %struct.TYPE_61__* @sqlite3PExpr(%struct.TYPE_58__* %214, i32 %215, %struct.TYPE_61__* %218, %struct.TYPE_61__* %221)
  %223 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %224 = load i32, i32* @TK_DOT, align 4
  %225 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %226 = load i32, i32* @TK_ID, align 4
  %227 = call %struct.TYPE_61__* @sqlite3ExprAlloc(%struct.TYPE_67__* %225, i32 %226, %struct.TYPE_70__* %25, i32 0)
  %228 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %229 = load i32, i32* @TK_ID, align 4
  %230 = call %struct.TYPE_61__* @sqlite3ExprAlloc(%struct.TYPE_67__* %228, i32 %229, %struct.TYPE_70__* %27, i32 0)
  %231 = call %struct.TYPE_61__* @sqlite3PExpr(%struct.TYPE_58__* %223, i32 %224, %struct.TYPE_61__* %227, %struct.TYPE_61__* %230)
  %232 = call %struct.TYPE_61__* @sqlite3PExpr(%struct.TYPE_58__* %212, i32 %213, %struct.TYPE_61__* %222, %struct.TYPE_61__* %231)
  store %struct.TYPE_61__* %232, %struct.TYPE_61__** %29, align 8
  %233 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %234 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %235 = load %struct.TYPE_61__*, %struct.TYPE_61__** %29, align 8
  %236 = call %struct.TYPE_61__* @sqlite3ExprAnd(%struct.TYPE_67__* %233, %struct.TYPE_61__* %234, %struct.TYPE_61__* %235)
  store %struct.TYPE_61__* %236, %struct.TYPE_61__** %23, align 8
  br label %237

237:                                              ; preds = %211, %173
  %238 = load i32, i32* %11, align 4
  %239 = icmp ne i32 %238, 128
  br i1 %239, label %240, label %299

240:                                              ; preds = %237
  %241 = load i32, i32* %11, align 4
  %242 = icmp ne i32 %241, 129
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = load i32*, i32** %9, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %299

246:                                              ; preds = %243, %240
  %247 = load i32, i32* %11, align 4
  %248 = icmp eq i32 %247, 129
  br i1 %248, label %249, label %259

249:                                              ; preds = %246
  %250 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %251 = load i32, i32* @TK_DOT, align 4
  %252 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %253 = load i32, i32* @TK_ID, align 4
  %254 = call %struct.TYPE_61__* @sqlite3ExprAlloc(%struct.TYPE_67__* %252, i32 %253, %struct.TYPE_70__* %25, i32 0)
  %255 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %256 = load i32, i32* @TK_ID, align 4
  %257 = call %struct.TYPE_61__* @sqlite3ExprAlloc(%struct.TYPE_67__* %255, i32 %256, %struct.TYPE_70__* %27, i32 0)
  %258 = call %struct.TYPE_61__* @sqlite3PExpr(%struct.TYPE_58__* %250, i32 %251, %struct.TYPE_61__* %254, %struct.TYPE_61__* %257)
  store %struct.TYPE_61__* %258, %struct.TYPE_61__** %30, align 8
  br label %291

259:                                              ; preds = %246
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* @OE_SetDflt, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %286

263:                                              ; preds = %259
  %264 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_66__*, %struct.TYPE_66__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_65__*, %struct.TYPE_65__** %267, align 8
  %269 = load i32, i32* %28, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_61__*, %struct.TYPE_61__** %272, align 8
  store %struct.TYPE_61__* %273, %struct.TYPE_61__** %31, align 8
  %274 = load %struct.TYPE_61__*, %struct.TYPE_61__** %31, align 8
  %275 = icmp ne %struct.TYPE_61__* %274, null
  br i1 %275, label %276, label %281

276:                                              ; preds = %263
  %277 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %278 = load %struct.TYPE_61__*, %struct.TYPE_61__** %31, align 8
  %279 = call i8* @sqlite3ExprDup(%struct.TYPE_67__* %277, %struct.TYPE_61__* %278, i32 0)
  %280 = bitcast i8* %279 to %struct.TYPE_61__*
  store %struct.TYPE_61__* %280, %struct.TYPE_61__** %30, align 8
  br label %285

281:                                              ; preds = %263
  %282 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %283 = load i32, i32* @TK_NULL, align 4
  %284 = call %struct.TYPE_61__* @sqlite3ExprAlloc(%struct.TYPE_67__* %282, i32 %283, %struct.TYPE_70__* null, i32 0)
  store %struct.TYPE_61__* %284, %struct.TYPE_61__** %30, align 8
  br label %285

285:                                              ; preds = %281, %276
  br label %290

286:                                              ; preds = %259
  %287 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %288 = load i32, i32* @TK_NULL, align 4
  %289 = call %struct.TYPE_61__* @sqlite3ExprAlloc(%struct.TYPE_67__* %287, i32 %288, %struct.TYPE_70__* null, i32 0)
  store %struct.TYPE_61__* %289, %struct.TYPE_61__** %30, align 8
  br label %290

290:                                              ; preds = %286, %285
  br label %291

291:                                              ; preds = %290, %249
  %292 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %293 = load i32*, i32** %20, align 8
  %294 = load %struct.TYPE_61__*, %struct.TYPE_61__** %30, align 8
  %295 = call i32* @sqlite3ExprListAppend(%struct.TYPE_58__* %292, i32* %293, %struct.TYPE_61__* %294)
  store i32* %295, i32** %20, align 8
  %296 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %297 = load i32*, i32** %20, align 8
  %298 = call i32 @sqlite3ExprListSetName(%struct.TYPE_58__* %296, i32* %297, %struct.TYPE_70__* %26, i32 0)
  br label %299

299:                                              ; preds = %291, %243, %237
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %22, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %22, align 4
  br label %90

303:                                              ; preds = %90
  %304 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %305 = load i32*, i32** %17, align 8
  %306 = call i32 @sqlite3DbFree(%struct.TYPE_67__* %304, i32* %305)
  %307 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %307, i32 0, i32 3
  %309 = load %struct.TYPE_66__*, %struct.TYPE_66__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %309, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  store i8* %311, i8** %14, align 8
  %312 = load i8*, i8** %14, align 8
  %313 = call i32 @sqlite3Strlen30(i8* %312)
  store i32 %313, i32* %15, align 4
  %314 = load i32, i32* %11, align 4
  %315 = icmp eq i32 %314, 128
  br i1 %315, label %316, label %339

316:                                              ; preds = %303
  %317 = load i8*, i8** %14, align 8
  %318 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %32, i32 0, i32 2
  store i8* %317, i8** %318, align 8
  %319 = load i32, i32* %15, align 4
  %320 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %32, i32 0, i32 3
  store i32 %319, i32* %320, align 8
  %321 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %322 = load i32, i32* @TK_RAISE, align 4
  %323 = call %struct.TYPE_61__* @sqlite3Expr(%struct.TYPE_67__* %321, i32 %322, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_61__* %323, %struct.TYPE_61__** %33, align 8
  %324 = load %struct.TYPE_61__*, %struct.TYPE_61__** %33, align 8
  %325 = icmp ne %struct.TYPE_61__* %324, null
  br i1 %325, label %326, label %330

326:                                              ; preds = %316
  %327 = load i32, i32* @OE_Abort, align 4
  %328 = load %struct.TYPE_61__*, %struct.TYPE_61__** %33, align 8
  %329 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %328, i32 0, i32 0
  store i32 %327, i32* %329, align 4
  br label %330

330:                                              ; preds = %326, %316
  %331 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %332 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %333 = load %struct.TYPE_61__*, %struct.TYPE_61__** %33, align 8
  %334 = call i32* @sqlite3ExprListAppend(%struct.TYPE_58__* %332, i32* null, %struct.TYPE_61__* %333)
  %335 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %336 = call i32 @sqlite3SrcListAppend(%struct.TYPE_58__* %335, i32 0, %struct.TYPE_70__* %32, i32 0)
  %337 = load %struct.TYPE_61__*, %struct.TYPE_61__** %19, align 8
  %338 = call i32* @sqlite3SelectNew(%struct.TYPE_58__* %331, i32* %334, i32 %336, %struct.TYPE_61__* %337, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32* %338, i32** %21, align 8
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %19, align 8
  br label %339

339:                                              ; preds = %330, %303
  %340 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %342, align 4
  %345 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %346 = load i32, i32* %15, align 4
  %347 = sext i32 %346 to i64
  %348 = add i64 72, %347
  %349 = add i64 %348, 1
  %350 = trunc i64 %349 to i32
  %351 = call i64 @sqlite3DbMallocZero(%struct.TYPE_67__* %345, i32 %350)
  %352 = inttoptr i64 %351 to %struct.TYPE_69__*
  store %struct.TYPE_69__* %352, %struct.TYPE_69__** %12, align 8
  %353 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %354 = icmp ne %struct.TYPE_69__* %353, null
  br i1 %354, label %355, label %404

355:                                              ; preds = %339
  %356 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %357 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %356, i64 1
  %358 = bitcast %struct.TYPE_69__* %357 to %struct.TYPE_68__*
  %359 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %359, i32 0, i32 4
  store %struct.TYPE_68__* %358, %struct.TYPE_68__** %360, align 8
  store %struct.TYPE_68__* %358, %struct.TYPE_68__** %18, align 8
  %361 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %362 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %361, i64 1
  %363 = bitcast %struct.TYPE_68__* %362 to i8*
  %364 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %365 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %364, i32 0, i32 0
  store i8* %363, i8** %365, align 8
  %366 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %367 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %366, i32 0, i32 0
  %368 = load i8*, i8** %367, align 8
  %369 = load i8*, i8** %14, align 8
  %370 = load i32, i32* %15, align 4
  %371 = call i32 @memcpy(i8* %368, i8* %369, i32 %370)
  %372 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %373 = load %struct.TYPE_61__*, %struct.TYPE_61__** %19, align 8
  %374 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %375 = call i8* @sqlite3ExprDup(%struct.TYPE_67__* %372, %struct.TYPE_61__* %373, i32 %374)
  %376 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %377 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %376, i32 0, i32 5
  store i8* %375, i8** %377, align 8
  %378 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %379 = load i32*, i32** %20, align 8
  %380 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %381 = call i32 @sqlite3ExprListDup(%struct.TYPE_67__* %378, i32* %379, i32 %380)
  %382 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %383 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %382, i32 0, i32 4
  store i32 %381, i32* %383, align 4
  %384 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %385 = load i32*, i32** %21, align 8
  %386 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %387 = call i32 @sqlite3SelectDup(%struct.TYPE_67__* %384, i32* %385, i32 %386)
  %388 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %389 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %388, i32 0, i32 3
  store i32 %387, i32* %389, align 8
  %390 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %391 = icmp ne %struct.TYPE_61__* %390, null
  br i1 %391, label %392, label %403

392:                                              ; preds = %355
  %393 = load %struct.TYPE_58__*, %struct.TYPE_58__** %6, align 8
  %394 = load i32, i32* @TK_NOT, align 4
  %395 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %396 = call %struct.TYPE_61__* @sqlite3PExpr(%struct.TYPE_58__* %393, i32 %394, %struct.TYPE_61__* %395, %struct.TYPE_61__* null)
  store %struct.TYPE_61__* %396, %struct.TYPE_61__** %23, align 8
  %397 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %398 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %399 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %400 = call i8* @sqlite3ExprDup(%struct.TYPE_67__* %397, %struct.TYPE_61__* %398, i32 %399)
  %401 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %402 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %401, i32 0, i32 3
  store i8* %400, i8** %402, align 8
  br label %403

403:                                              ; preds = %392, %355
  br label %404

404:                                              ; preds = %403, %339
  %405 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %406 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = add nsw i32 %408, -1
  store i32 %409, i32* %407, align 4
  %410 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %411 = load %struct.TYPE_61__*, %struct.TYPE_61__** %19, align 8
  %412 = call i32 @sqlite3ExprDelete(%struct.TYPE_67__* %410, %struct.TYPE_61__* %411)
  %413 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %414 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %415 = call i32 @sqlite3ExprDelete(%struct.TYPE_67__* %413, %struct.TYPE_61__* %414)
  %416 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %417 = load i32*, i32** %20, align 8
  %418 = call i32 @sqlite3ExprListDelete(%struct.TYPE_67__* %416, i32* %417)
  %419 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %420 = load i32*, i32** %21, align 8
  %421 = call i32 @sqlite3SelectDelete(%struct.TYPE_67__* %419, i32* %420)
  %422 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %423 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = icmp eq i32 %424, 1
  br i1 %425, label %426, label %430

426:                                              ; preds = %404
  %427 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %428 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %429 = call i32 @fkTriggerDelete(%struct.TYPE_67__* %427, %struct.TYPE_69__* %428)
  store %struct.TYPE_69__* null, %struct.TYPE_69__** %5, align 8
  br label %485

430:                                              ; preds = %404
  %431 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %432 = icmp ne %struct.TYPE_68__* %431, null
  %433 = zext i1 %432 to i32
  %434 = call i32 @assert(i32 %433)
  %435 = load i32, i32* %11, align 4
  switch i32 %435, label %448 [
    i32 128, label %436
    i32 129, label %440
  ]

436:                                              ; preds = %430
  %437 = load i8*, i8** @TK_SELECT, align 8
  %438 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %439 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %438, i32 0, i32 2
  store i8* %437, i8** %439, align 8
  br label %452

440:                                              ; preds = %430
  %441 = load i32*, i32** %9, align 8
  %442 = icmp ne i32* %441, null
  br i1 %442, label %447, label %443

443:                                              ; preds = %440
  %444 = load i8*, i8** @TK_DELETE, align 8
  %445 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %446 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %445, i32 0, i32 2
  store i8* %444, i8** %446, align 8
  br label %452

447:                                              ; preds = %440
  br label %448

448:                                              ; preds = %430, %447
  %449 = load i8*, i8** @TK_UPDATE, align 8
  %450 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %451 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %450, i32 0, i32 2
  store i8* %449, i8** %451, align 8
  br label %452

452:                                              ; preds = %448, %443, %436
  %453 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %454 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %455 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %454, i32 0, i32 1
  store %struct.TYPE_69__* %453, %struct.TYPE_69__** %455, align 8
  %456 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %457 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %460 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %459, i32 0, i32 2
  store i32 %458, i32* %460, align 4
  %461 = load %struct.TYPE_57__*, %struct.TYPE_57__** %7, align 8
  %462 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %465 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %464, i32 0, i32 1
  store i32 %463, i32* %465, align 8
  %466 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %467 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %468 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %467, i32 0, i32 2
  %469 = load %struct.TYPE_69__**, %struct.TYPE_69__*** %468, align 8
  %470 = load i32, i32* %13, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.TYPE_69__*, %struct.TYPE_69__** %469, i64 %471
  store %struct.TYPE_69__* %466, %struct.TYPE_69__** %472, align 8
  %473 = load i32*, i32** %9, align 8
  %474 = icmp ne i32* %473, null
  br i1 %474, label %475, label %477

475:                                              ; preds = %452
  %476 = load i8*, i8** @TK_UPDATE, align 8
  br label %479

477:                                              ; preds = %452
  %478 = load i8*, i8** @TK_DELETE, align 8
  br label %479

479:                                              ; preds = %477, %475
  %480 = phi i8* [ %476, %475 ], [ %478, %477 ]
  %481 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %482 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %481, i32 0, i32 0
  store i8* %480, i8** %482, align 8
  br label %483

483:                                              ; preds = %479, %68, %57
  %484 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  store %struct.TYPE_69__* %484, %struct.TYPE_69__** %5, align 8
  br label %485

485:                                              ; preds = %483, %426, %77, %56
  %486 = load %struct.TYPE_69__*, %struct.TYPE_69__** %5, align 8
  ret %struct.TYPE_69__* %486
}

declare dso_local i64 @sqlite3FkLocateIndex(%struct.TYPE_58__*, %struct.TYPE_57__*, %struct.TYPE_60__*, %struct.TYPE_59__**, i32**) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sqlite3TokenInit(%struct.TYPE_70__*, i32) #1

declare dso_local %struct.TYPE_61__* @sqlite3PExpr(%struct.TYPE_58__*, i32, %struct.TYPE_61__*, %struct.TYPE_61__*) #1

declare dso_local %struct.TYPE_61__* @sqlite3ExprAlloc(%struct.TYPE_67__*, i32, %struct.TYPE_70__*, i32) #1

declare dso_local %struct.TYPE_61__* @sqlite3ExprAnd(%struct.TYPE_67__*, %struct.TYPE_61__*, %struct.TYPE_61__*) #1

declare dso_local i8* @sqlite3ExprDup(%struct.TYPE_67__*, %struct.TYPE_61__*, i32) #1

declare dso_local i32* @sqlite3ExprListAppend(%struct.TYPE_58__*, i32*, %struct.TYPE_61__*) #1

declare dso_local i32 @sqlite3ExprListSetName(%struct.TYPE_58__*, i32*, %struct.TYPE_70__*, i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_67__*, i32*) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local %struct.TYPE_61__* @sqlite3Expr(%struct.TYPE_67__*, i32, i8*) #1

declare dso_local i32* @sqlite3SelectNew(%struct.TYPE_58__*, i32*, i32, %struct.TYPE_61__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3SrcListAppend(%struct.TYPE_58__*, i32, %struct.TYPE_70__*, i32) #1

declare dso_local i64 @sqlite3DbMallocZero(%struct.TYPE_67__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3ExprListDup(%struct.TYPE_67__*, i32*, i32) #1

declare dso_local i32 @sqlite3SelectDup(%struct.TYPE_67__*, i32*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_67__*, %struct.TYPE_61__*) #1

declare dso_local i32 @sqlite3ExprListDelete(%struct.TYPE_67__*, i32*) #1

declare dso_local i32 @sqlite3SelectDelete(%struct.TYPE_67__*, i32*) #1

declare dso_local i32 @fkTriggerDelete(%struct.TYPE_67__*, %struct.TYPE_69__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
