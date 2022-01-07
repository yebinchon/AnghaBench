; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_codeEqualityTerm.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_codeEqualityTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_46__*, i32* }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i64, i32, i32, %struct.TYPE_43__, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__* }
%struct.TYPE_42__ = type { %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_44__, i32, %struct.TYPE_34__* }
%struct.TYPE_44__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32, %struct.InLoop* }
%struct.InLoop = type { i32, i32, i32, i32, i32 }
%struct.TYPE_34__ = type { i32, i32, %struct.TYPE_33__**, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i64* }

@TK_EQ = common dso_local global i64 0, align 8
@TK_IS = common dso_local global i64 0, align 8
@TK_ISNULL = common dso_local global i64 0, align 8
@OP_Null = common dso_local global i32 0, align 4
@IN_INDEX_NOOP = common dso_local global i32 0, align 4
@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@TK_IN = common dso_local global i64 0, align 8
@EP_xIsSelect = common dso_local global i32 0, align 4
@IN_INDEX_LOOP = common dso_local global i32 0, align 4
@IN_INDEX_INDEX_DESC = common dso_local global i32 0, align 4
@OP_Last = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@WHERE_MULTI_OR = common dso_local global i32 0, align 4
@WHERE_IN_ABLE = common dso_local global i32 0, align 4
@IN_INDEX_ROWID = common dso_local global i32 0, align 4
@OP_Rowid = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_IsNull = common dso_local global i32 0, align 4
@OP_Prev = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@WHERE_IN_EARLYOUT = common dso_local global i32 0, align 4
@OP_Noop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_36__*, %struct.TYPE_33__*, %struct.TYPE_35__*, i32, i32, i32)* @codeEqualityTerm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeEqualityTerm(%struct.TYPE_36__* %0, %struct.TYPE_33__* %1, %struct.TYPE_35__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_37__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.InLoop*, align 8
  %20 = alloca %struct.TYPE_34__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_46__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %8, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %9, align 8
  store %struct.TYPE_35__* %2, %struct.TYPE_35__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %28 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_37__*, %struct.TYPE_37__** %29, align 8
  store %struct.TYPE_37__* %30, %struct.TYPE_37__** %14, align 8
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %15, align 8
  %34 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_34__*, %struct.TYPE_34__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %38, i64 %40
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %41, align 8
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %44 = icmp eq %struct.TYPE_33__* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TK_EQ, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %6
  %57 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TK_IS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56, %6
  %63 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @sqlite3ExprCodeTarget(%struct.TYPE_36__* %63, i32 %66, i32 %67)
  store i32 %68, i32* %16, align 4
  br label %499

69:                                               ; preds = %56
  %70 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TK_ISNULL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %16, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* @OP_Null, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @sqlite3VdbeAddOp2(i32* %77, i32 %78, i32 0, i32 %79)
  br label %498

81:                                               ; preds = %69
  %82 = load i32, i32* @IN_INDEX_NOOP, align 4
  store i32 %82, i32* %17, align 4
  %83 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_34__*, %struct.TYPE_34__** %84, align 8
  store %struct.TYPE_34__* %85, %struct.TYPE_34__** %20, align 8
  store i32 0, i32* %22, align 4
  store i32* null, i32** %23, align 8
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %123

92:                                               ; preds = %81
  %93 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %94 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_38__*, %struct.TYPE_38__** %96, align 8
  %98 = icmp ne %struct.TYPE_38__* %97, null
  br i1 %98, label %99, label %123

99:                                               ; preds = %92
  %100 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_38__*, %struct.TYPE_38__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %99
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @testcase(i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @testcase(i32 %117)
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %112, %99, %92, %81
  %124 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TK_IN, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %132

132:                                              ; preds = %163, %123
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %166

136:                                              ; preds = %132
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %138, align 8
  %140 = load i32, i32* %21, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %139, i64 %141
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %142, align 8
  %144 = icmp ne %struct.TYPE_33__* %143, null
  br i1 %144, label %145, label %162

145:                                              ; preds = %136
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %147, align 8
  %149 = load i32, i32* %21, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %148, i64 %150
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_37__*, %struct.TYPE_37__** %153, align 8
  %155 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %156 = icmp eq %struct.TYPE_37__* %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %145
  %158 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %160 = call i32 @disableTerm(%struct.TYPE_35__* %158, %struct.TYPE_33__* %159)
  %161 = load i32, i32* %13, align 4
  store i32 %161, i32* %7, align 4
  br label %504

162:                                              ; preds = %145, %136
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %21, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %21, align 4
  br label %132

166:                                              ; preds = %132
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %21, align 4
  br label %168

168:                                              ; preds = %200, %166
  %169 = load i32, i32* %21, align 4
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %168
  %175 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %176, align 8
  %178 = load i32, i32* %21, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %177, i64 %179
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %180, align 8
  %182 = icmp ne %struct.TYPE_33__* %181, null
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %186, align 8
  %188 = load i32, i32* %21, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %187, i64 %189
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_37__*, %struct.TYPE_37__** %192, align 8
  %194 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %195 = icmp eq %struct.TYPE_37__* %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %174
  %197 = load i32, i32* %22, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %22, align 4
  br label %199

199:                                              ; preds = %196, %174
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %21, align 4
  br label %168

203:                                              ; preds = %168
  store i32 0, i32* %18, align 4
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @EP_xIsSelect, align 4
  %208 = and i32 %206, %207
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %220, label %210

210:                                              ; preds = %203
  %211 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_42__*, %struct.TYPE_42__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_41__*, %struct.TYPE_41__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %225

220:                                              ; preds = %210, %203
  %221 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %222 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %223 = load i32, i32* @IN_INDEX_LOOP, align 4
  %224 = call i32 @sqlite3FindInIndex(%struct.TYPE_36__* %221, %struct.TYPE_37__* %222, i32 %223, i32 0, i32* null, i32* %18)
  store i32 %224, i32* %17, align 4
  br label %265

225:                                              ; preds = %210
  %226 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_46__*, %struct.TYPE_46__** %227, align 8
  store %struct.TYPE_46__* %228, %struct.TYPE_46__** %24, align 8
  %229 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %230 = load i32, i32* %11, align 4
  %231 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %232 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %233 = call %struct.TYPE_37__* @removeUnindexableInClauseTerms(%struct.TYPE_36__* %229, i32 %230, %struct.TYPE_34__* %231, %struct.TYPE_37__* %232)
  store %struct.TYPE_37__* %233, %struct.TYPE_37__** %14, align 8
  %234 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %235 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %258, label %238

238:                                              ; preds = %225
  %239 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_46__*, %struct.TYPE_46__** %240, align 8
  %242 = load i32, i32* %22, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 4, %243
  %245 = trunc i64 %244 to i32
  %246 = call i64 @sqlite3DbMallocZero(%struct.TYPE_46__* %241, i32 %245)
  %247 = inttoptr i64 %246 to i32*
  store i32* %247, i32** %23, align 8
  %248 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %249 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %250 = load i32, i32* @IN_INDEX_LOOP, align 4
  %251 = load i32*, i32** %23, align 8
  %252 = call i32 @sqlite3FindInIndex(%struct.TYPE_36__* %248, %struct.TYPE_37__* %249, i32 %250, i32 0, i32* %251, i32* %18)
  store i32 %252, i32* %17, align 4
  %253 = load i32, i32* %18, align 4
  %254 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_37__*, %struct.TYPE_37__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %256, i32 0, i32 2
  store i32 %253, i32* %257, align 4
  br label %258

258:                                              ; preds = %238, %225
  %259 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %260 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %261 = call i32 @sqlite3ExprDelete(%struct.TYPE_46__* %259, %struct.TYPE_37__* %260)
  %262 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_37__*, %struct.TYPE_37__** %263, align 8
  store %struct.TYPE_37__* %264, %struct.TYPE_37__** %14, align 8
  br label %265

265:                                              ; preds = %258, %220
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* @IN_INDEX_INDEX_DESC, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %276

269:                                              ; preds = %265
  %270 = load i32, i32* %12, align 4
  %271 = call i32 @testcase(i32 %270)
  %272 = load i32, i32* %12, align 4
  %273 = icmp ne i32 %272, 0
  %274 = xor i1 %273, true
  %275 = zext i1 %274 to i32
  store i32 %275, i32* %12, align 4
  br label %276

276:                                              ; preds = %269, %265
  %277 = load i32*, i32** %15, align 8
  %278 = load i32, i32* %12, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = load i32, i32* @OP_Last, align 4
  br label %284

282:                                              ; preds = %276
  %283 = load i32, i32* @OP_Rewind, align 4
  br label %284

284:                                              ; preds = %282, %280
  %285 = phi i32 [ %281, %280 ], [ %283, %282 ]
  %286 = load i32, i32* %18, align 4
  %287 = call i32 @sqlite3VdbeAddOp2(i32* %277, i32 %285, i32 %286, i32 0)
  %288 = load i32*, i32** %15, align 8
  %289 = load i32, i32* %12, align 4
  %290 = call i32 @VdbeCoverageIf(i32* %288, i32 %289)
  %291 = load i32*, i32** %15, align 8
  %292 = load i32, i32* %12, align 4
  %293 = icmp ne i32 %292, 0
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i32
  %296 = call i32 @VdbeCoverageIf(i32* %291, i32 %295)
  %297 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %298 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @WHERE_MULTI_OR, align 4
  %301 = and i32 %299, %300
  %302 = icmp eq i32 %301, 0
  %303 = zext i1 %302 to i32
  %304 = call i32 @assert(i32 %303)
  %305 = load i32, i32* @WHERE_IN_ABLE, align 4
  %306 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %307 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 8
  %310 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %284
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %318 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_36__* %317)
  %319 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %319, i32 0, i32 1
  store i32 %318, i32* %320, align 8
  br label %321

321:                                              ; preds = %316, %284
  %322 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  store i32 %326, i32* %21, align 4
  %327 = load i32, i32* %22, align 4
  %328 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = add nsw i32 %332, %327
  store i32 %333, i32* %331, align 8
  %334 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_46__*, %struct.TYPE_46__** %335, align 8
  %337 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %339, i32 0, i32 1
  %341 = load %struct.InLoop*, %struct.InLoop** %340, align 8
  %342 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = sext i32 %346 to i64
  %348 = mul i64 20, %347
  %349 = trunc i64 %348 to i32
  %350 = call %struct.InLoop* @sqlite3DbReallocOrFree(%struct.TYPE_46__* %336, %struct.InLoop* %341, i32 %349)
  %351 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %352 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %353, i32 0, i32 1
  store %struct.InLoop* %350, %struct.InLoop** %354, align 8
  %355 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %356 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %357, i32 0, i32 1
  %359 = load %struct.InLoop*, %struct.InLoop** %358, align 8
  store %struct.InLoop* %359, %struct.InLoop** %19, align 8
  %360 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %361 = icmp ne %struct.InLoop* %360, null
  br i1 %361, label %362, label %487

362:                                              ; preds = %321
  store i32 0, i32* %25, align 4
  %363 = load i32, i32* %21, align 4
  %364 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %365 = sext i32 %363 to i64
  %366 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %364, i64 %365
  store %struct.InLoop* %366, %struct.InLoop** %19, align 8
  %367 = load i32, i32* %11, align 4
  store i32 %367, i32* %21, align 4
  br label %368

368:                                              ; preds = %483, %362
  %369 = load i32, i32* %21, align 4
  %370 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %371 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = icmp slt i32 %369, %372
  br i1 %373, label %374, label %486

374:                                              ; preds = %368
  %375 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %376 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %375, i32 0, i32 2
  %377 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %376, align 8
  %378 = load i32, i32* %21, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %377, i64 %379
  %381 = load %struct.TYPE_33__*, %struct.TYPE_33__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_37__*, %struct.TYPE_37__** %382, align 8
  %384 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %385 = icmp eq %struct.TYPE_37__* %383, %384
  br i1 %385, label %386, label %482

386:                                              ; preds = %374
  %387 = load i32, i32* %16, align 4
  %388 = load i32, i32* %21, align 4
  %389 = add nsw i32 %387, %388
  %390 = load i32, i32* %11, align 4
  %391 = sub nsw i32 %389, %390
  store i32 %391, i32* %26, align 4
  %392 = load i32, i32* %17, align 4
  %393 = load i32, i32* @IN_INDEX_ROWID, align 4
  %394 = icmp eq i32 %392, %393
  br i1 %394, label %395, label %403

395:                                              ; preds = %386
  %396 = load i32*, i32** %15, align 8
  %397 = load i32, i32* @OP_Rowid, align 4
  %398 = load i32, i32* %18, align 4
  %399 = load i32, i32* %26, align 4
  %400 = call i32 @sqlite3VdbeAddOp2(i32* %396, i32 %397, i32 %398, i32 %399)
  %401 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %402 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %401, i32 0, i32 4
  store i32 %400, i32* %402, align 4
  br label %424

403:                                              ; preds = %386
  %404 = load i32*, i32** %23, align 8
  %405 = icmp ne i32* %404, null
  br i1 %405, label %406, label %413

406:                                              ; preds = %403
  %407 = load i32*, i32** %23, align 8
  %408 = load i32, i32* %25, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %25, align 4
  %410 = sext i32 %408 to i64
  %411 = getelementptr inbounds i32, i32* %407, i64 %410
  %412 = load i32, i32* %411, align 4
  br label %414

413:                                              ; preds = %403
  br label %414

414:                                              ; preds = %413, %406
  %415 = phi i32 [ %412, %406 ], [ 0, %413 ]
  store i32 %415, i32* %27, align 4
  %416 = load i32*, i32** %15, align 8
  %417 = load i32, i32* @OP_Column, align 4
  %418 = load i32, i32* %18, align 4
  %419 = load i32, i32* %27, align 4
  %420 = load i32, i32* %26, align 4
  %421 = call i32 @sqlite3VdbeAddOp3(i32* %416, i32 %417, i32 %418, i32 %419, i32 %420)
  %422 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %423 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %422, i32 0, i32 4
  store i32 %421, i32* %423, align 4
  br label %424

424:                                              ; preds = %414, %395
  %425 = load i32*, i32** %15, align 8
  %426 = load i32, i32* @OP_IsNull, align 4
  %427 = load i32, i32* %26, align 4
  %428 = call i32 @sqlite3VdbeAddOp1(i32* %425, i32 %426, i32 %427)
  %429 = load i32*, i32** %15, align 8
  %430 = call i32 @VdbeCoverage(i32* %429)
  %431 = load i32, i32* %21, align 4
  %432 = load i32, i32* %11, align 4
  %433 = icmp eq i32 %431, %432
  br i1 %433, label %434, label %475

434:                                              ; preds = %424
  %435 = load i32, i32* %18, align 4
  %436 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %437 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %436, i32 0, i32 0
  store i32 %435, i32* %437, align 4
  %438 = load i32, i32* %12, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %434
  %441 = load i32, i32* @OP_Prev, align 4
  br label %444

442:                                              ; preds = %434
  %443 = load i32, i32* @OP_Next, align 4
  br label %444

444:                                              ; preds = %442, %440
  %445 = phi i32 [ %441, %440 ], [ %443, %442 ]
  %446 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %447 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %446, i32 0, i32 3
  store i32 %445, i32* %447, align 4
  %448 = load i32, i32* %11, align 4
  %449 = icmp sgt i32 %448, 0
  br i1 %449, label %450, label %471

450:                                              ; preds = %444
  %451 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %452 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %455 = and i32 %453, %454
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %471

457:                                              ; preds = %450
  %458 = load i32, i32* %16, align 4
  %459 = load i32, i32* %21, align 4
  %460 = sub nsw i32 %458, %459
  %461 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %462 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %461, i32 0, i32 1
  store i32 %460, i32* %462, align 4
  %463 = load i32, i32* %21, align 4
  %464 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %465 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %464, i32 0, i32 2
  store i32 %463, i32* %465, align 4
  %466 = load i32, i32* @WHERE_IN_EARLYOUT, align 4
  %467 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %468 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = or i32 %469, %466
  store i32 %470, i32* %468, align 8
  br label %474

471:                                              ; preds = %450, %444
  %472 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %473 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %472, i32 0, i32 2
  store i32 0, i32* %473, align 4
  br label %474

474:                                              ; preds = %471, %457
  br label %479

475:                                              ; preds = %424
  %476 = load i32, i32* @OP_Noop, align 4
  %477 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %478 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %477, i32 0, i32 3
  store i32 %476, i32* %478, align 4
  br label %479

479:                                              ; preds = %475, %474
  %480 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %481 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %480, i32 1
  store %struct.InLoop* %481, %struct.InLoop** %19, align 8
  br label %482

482:                                              ; preds = %479, %374
  br label %483

483:                                              ; preds = %482
  %484 = load i32, i32* %21, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %21, align 4
  br label %368

486:                                              ; preds = %368
  br label %492

487:                                              ; preds = %321
  %488 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %489 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %490, i32 0, i32 0
  store i32 0, i32* %491, align 8
  br label %492

492:                                              ; preds = %487, %486
  %493 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %494 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %493, i32 0, i32 0
  %495 = load %struct.TYPE_46__*, %struct.TYPE_46__** %494, align 8
  %496 = load i32*, i32** %23, align 8
  %497 = call i32 @sqlite3DbFree(%struct.TYPE_46__* %495, i32* %496)
  br label %498

498:                                              ; preds = %492, %75
  br label %499

499:                                              ; preds = %498, %62
  %500 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %501 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %502 = call i32 @disableTerm(%struct.TYPE_35__* %500, %struct.TYPE_33__* %501)
  %503 = load i32, i32* %16, align 4
  store i32 %503, i32* %7, align 4
  br label %504

504:                                              ; preds = %499, %157
  %505 = load i32, i32* %7, align 4
  ret i32 %505
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ExprCodeTarget(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @disableTerm(%struct.TYPE_35__*, %struct.TYPE_33__*) #1

declare dso_local i32 @sqlite3FindInIndex(%struct.TYPE_36__*, %struct.TYPE_37__*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_37__* @removeUnindexableInClauseTerms(%struct.TYPE_36__*, i32, %struct.TYPE_34__*, %struct.TYPE_37__*) #1

declare dso_local i64 @sqlite3DbMallocZero(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_46__*, %struct.TYPE_37__*) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_36__*) #1

declare dso_local %struct.InLoop* @sqlite3DbReallocOrFree(%struct.TYPE_46__*, %struct.InLoop*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_46__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
