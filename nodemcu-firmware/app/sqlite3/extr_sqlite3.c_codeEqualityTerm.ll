; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_codeEqualityTerm.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_codeEqualityTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { %struct.TYPE_39__*, i32* }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_40__ = type { i32, %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i64, i32, i32, %struct.TYPE_46__*, %struct.TYPE_50__, i32 }
%struct.TYPE_50__ = type { %struct.TYPE_45__*, %struct.TYPE_43__* }
%struct.TYPE_45__ = type { i32, %struct.TYPE_49__* }
%struct.TYPE_49__ = type { %struct.TYPE_46__*, %struct.TYPE_48__ }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i64 }
%struct.TYPE_43__ = type { %struct.TYPE_45__*, %struct.TYPE_45__* }
%struct.TYPE_42__ = type { %struct.TYPE_52__, i32, %struct.TYPE_41__* }
%struct.TYPE_52__ = type { %struct.TYPE_51__ }
%struct.TYPE_51__ = type { i32, %struct.InLoop* }
%struct.InLoop = type { i32, i32, i32 }
%struct.TYPE_41__ = type { i32, i32, %struct.TYPE_40__**, %struct.TYPE_55__ }
%struct.TYPE_55__ = type { %struct.TYPE_54__ }
%struct.TYPE_54__ = type { %struct.TYPE_53__* }
%struct.TYPE_53__ = type { i64* }

@TK_EQ = common dso_local global i64 0, align 8
@TK_IS = common dso_local global i64 0, align 8
@TK_ISNULL = common dso_local global i64 0, align 8
@OP_Null = common dso_local global i32 0, align 4
@IN_INDEX_NOOP = common dso_local global i32 0, align 4
@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@TK_IN = common dso_local global i64 0, align 8
@EP_xIsSelect = common dso_local global i32 0, align 4
@IN_INDEX_LOOP = common dso_local global i32 0, align 4
@SQLITE_QueryFlattener = common dso_local global i32 0, align 4
@IN_INDEX_INDEX_DESC = common dso_local global i32 0, align 4
@OP_Last = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@WHERE_MULTI_OR = common dso_local global i32 0, align 4
@WHERE_IN_ABLE = common dso_local global i32 0, align 4
@IN_INDEX_ROWID = common dso_local global i32 0, align 4
@OP_Rowid = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_IsNull = common dso_local global i32 0, align 4
@OP_PrevIfOpen = common dso_local global i32 0, align 4
@OP_NextIfOpen = common dso_local global i32 0, align 4
@OP_Noop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_44__*, %struct.TYPE_40__*, %struct.TYPE_42__*, i32, i32, i32)* @codeEqualityTerm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeEqualityTerm(%struct.TYPE_44__* %0, %struct.TYPE_40__* %1, %struct.TYPE_42__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_44__*, align 8
  %9 = alloca %struct.TYPE_40__*, align 8
  %10 = alloca %struct.TYPE_42__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_46__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.InLoop*, align 8
  %20 = alloca %struct.TYPE_41__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_43__*, align 8
  %25 = alloca %struct.TYPE_39__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_45__*, align 8
  %28 = alloca %struct.TYPE_45__*, align 8
  %29 = alloca %struct.TYPE_45__*, align 8
  %30 = alloca %struct.TYPE_45__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_46__*, align 8
  %33 = alloca %struct.TYPE_46__*, align 8
  %34 = alloca %struct.TYPE_46__*, align 8
  %35 = alloca %struct.TYPE_45__*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.TYPE_44__* %0, %struct.TYPE_44__** %8, align 8
  store %struct.TYPE_40__* %1, %struct.TYPE_40__** %9, align 8
  store %struct.TYPE_42__* %2, %struct.TYPE_42__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %39 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_46__*, %struct.TYPE_46__** %40, align 8
  store %struct.TYPE_46__* %41, %struct.TYPE_46__** %14, align 8
  %42 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %15, align 8
  %45 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_41__*, %struct.TYPE_41__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %49, i64 %51
  %53 = load %struct.TYPE_40__*, %struct.TYPE_40__** %52, align 8
  %54 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %55 = icmp eq %struct.TYPE_40__* %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %13, align 4
  %59 = icmp sgt i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TK_EQ, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %6
  %68 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TK_IS, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67, %6
  %74 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %75 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @sqlite3ExprCodeTarget(%struct.TYPE_44__* %74, i32 %77, i32 %78)
  store i32 %79, i32* %16, align 4
  br label %650

80:                                               ; preds = %67
  %81 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TK_ISNULL, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %16, align 4
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* @OP_Null, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @sqlite3VdbeAddOp2(i32* %88, i32 %89, i32 0, i32 %90)
  br label %649

92:                                               ; preds = %80
  %93 = load i32, i32* @IN_INDEX_NOOP, align 4
  store i32 %93, i32* %17, align 4
  %94 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_41__*, %struct.TYPE_41__** %95, align 8
  store %struct.TYPE_41__* %96, %struct.TYPE_41__** %20, align 8
  store i32 0, i32* %22, align 4
  store i32* null, i32** %23, align 8
  %97 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %92
  %104 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_53__*, %struct.TYPE_53__** %107, align 8
  %109 = icmp ne %struct.TYPE_53__* %108, null
  br i1 %109, label %110, label %134

110:                                              ; preds = %103
  %111 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_53__*, %struct.TYPE_53__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %110
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @testcase(i32 %126)
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @testcase(i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %123, %110, %103, %92
  %135 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @TK_IN, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i32, i32* %13, align 4
  store i32 %142, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %143

143:                                              ; preds = %174, %134
  %144 = load i32, i32* %21, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %177

147:                                              ; preds = %143
  %148 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %149, align 8
  %151 = load i32, i32* %21, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %150, i64 %152
  %154 = load %struct.TYPE_40__*, %struct.TYPE_40__** %153, align 8
  %155 = icmp ne %struct.TYPE_40__* %154, null
  br i1 %155, label %156, label %173

156:                                              ; preds = %147
  %157 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %158 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %158, align 8
  %160 = load i32, i32* %21, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %159, i64 %161
  %163 = load %struct.TYPE_40__*, %struct.TYPE_40__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_46__*, %struct.TYPE_46__** %164, align 8
  %166 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %167 = icmp eq %struct.TYPE_46__* %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %156
  %169 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %170 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %171 = call i32 @disableTerm(%struct.TYPE_42__* %169, %struct.TYPE_40__* %170)
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %7, align 4
  br label %655

173:                                              ; preds = %156, %147
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %21, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %21, align 4
  br label %143

177:                                              ; preds = %143
  %178 = load i32, i32* %11, align 4
  store i32 %178, i32* %21, align 4
  br label %179

179:                                              ; preds = %211, %177
  %180 = load i32, i32* %21, align 4
  %181 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %182 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %214

185:                                              ; preds = %179
  %186 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %187 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %187, align 8
  %189 = load i32, i32* %21, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %188, i64 %190
  %192 = load %struct.TYPE_40__*, %struct.TYPE_40__** %191, align 8
  %193 = call i64 @ALWAYS(%struct.TYPE_40__* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %185
  %196 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %197 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %197, align 8
  %199 = load i32, i32* %21, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %198, i64 %200
  %202 = load %struct.TYPE_40__*, %struct.TYPE_40__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_46__*, %struct.TYPE_46__** %203, align 8
  %205 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %206 = icmp eq %struct.TYPE_46__* %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %195
  %208 = load i32, i32* %22, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %22, align 4
  br label %210

210:                                              ; preds = %207, %195, %185
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %21, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %21, align 4
  br label %179

214:                                              ; preds = %179
  %215 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @EP_xIsSelect, align 4
  %219 = and i32 %217, %218
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %231, label %221

221:                                              ; preds = %214
  %222 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_43__*, %struct.TYPE_43__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_45__*, %struct.TYPE_45__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %231, label %236

231:                                              ; preds = %221, %214
  %232 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %233 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %234 = load i32, i32* @IN_INDEX_LOOP, align 4
  %235 = call i32 @sqlite3FindInIndex(%struct.TYPE_44__* %232, %struct.TYPE_46__* %233, i32 %234, i32 0, i32* null)
  store i32 %235, i32* %17, align 4
  br label %436

236:                                              ; preds = %221
  %237 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_43__*, %struct.TYPE_43__** %239, align 8
  store %struct.TYPE_43__* %240, %struct.TYPE_43__** %24, align 8
  %241 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_39__*, %struct.TYPE_39__** %242, align 8
  store %struct.TYPE_39__* %243, %struct.TYPE_39__** %25, align 8
  %244 = load %struct.TYPE_39__*, %struct.TYPE_39__** %25, align 8
  %245 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %26, align 4
  %247 = load %struct.TYPE_43__*, %struct.TYPE_43__** %24, align 8
  %248 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_45__*, %struct.TYPE_45__** %248, align 8
  store %struct.TYPE_45__* %249, %struct.TYPE_45__** %27, align 8
  %250 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_46__*, %struct.TYPE_46__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_45__*, %struct.TYPE_45__** %254, align 8
  store %struct.TYPE_45__* %255, %struct.TYPE_45__** %28, align 8
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %29, align 8
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %30, align 8
  %256 = load i32, i32* %11, align 4
  store i32 %256, i32* %21, align 4
  br label %257

257:                                              ; preds = %315, %236
  %258 = load i32, i32* %21, align 4
  %259 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %260 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp slt i32 %258, %261
  br i1 %262, label %263, label %318

263:                                              ; preds = %257
  %264 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %265 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %265, align 8
  %267 = load i32, i32* %21, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %266, i64 %268
  %270 = load %struct.TYPE_40__*, %struct.TYPE_40__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_46__*, %struct.TYPE_46__** %271, align 8
  %273 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %274 = icmp eq %struct.TYPE_46__* %272, %273
  br i1 %274, label %275, label %314

275:                                              ; preds = %263
  %276 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %277 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %276, i32 0, i32 2
  %278 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %277, align 8
  %279 = load i32, i32* %21, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %278, i64 %280
  %282 = load %struct.TYPE_40__*, %struct.TYPE_40__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = sub nsw i32 %284, 1
  store i32 %285, i32* %31, align 4
  %286 = load %struct.TYPE_39__*, %struct.TYPE_39__** %25, align 8
  %287 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %288 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_49__*, %struct.TYPE_49__** %288, align 8
  %290 = load i32, i32* %31, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_46__*, %struct.TYPE_46__** %293, align 8
  %295 = call %struct.TYPE_46__* @sqlite3ExprDup(%struct.TYPE_39__* %286, %struct.TYPE_46__* %294, i32 0)
  store %struct.TYPE_46__* %295, %struct.TYPE_46__** %32, align 8
  %296 = load %struct.TYPE_39__*, %struct.TYPE_39__** %25, align 8
  %297 = load %struct.TYPE_45__*, %struct.TYPE_45__** %28, align 8
  %298 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_49__*, %struct.TYPE_49__** %298, align 8
  %300 = load i32, i32* %31, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_46__*, %struct.TYPE_46__** %303, align 8
  %305 = call %struct.TYPE_46__* @sqlite3ExprDup(%struct.TYPE_39__* %296, %struct.TYPE_46__* %304, i32 0)
  store %struct.TYPE_46__* %305, %struct.TYPE_46__** %33, align 8
  %306 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %307 = load %struct.TYPE_45__*, %struct.TYPE_45__** %29, align 8
  %308 = load %struct.TYPE_46__*, %struct.TYPE_46__** %32, align 8
  %309 = call %struct.TYPE_45__* @sqlite3ExprListAppend(%struct.TYPE_44__* %306, %struct.TYPE_45__* %307, %struct.TYPE_46__* %308)
  store %struct.TYPE_45__* %309, %struct.TYPE_45__** %29, align 8
  %310 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %311 = load %struct.TYPE_45__*, %struct.TYPE_45__** %30, align 8
  %312 = load %struct.TYPE_46__*, %struct.TYPE_46__** %33, align 8
  %313 = call %struct.TYPE_45__* @sqlite3ExprListAppend(%struct.TYPE_44__* %310, %struct.TYPE_45__* %311, %struct.TYPE_46__* %312)
  store %struct.TYPE_45__* %313, %struct.TYPE_45__** %30, align 8
  br label %314

314:                                              ; preds = %275, %263
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %21, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %21, align 4
  br label %257

318:                                              ; preds = %257
  %319 = load %struct.TYPE_39__*, %struct.TYPE_39__** %25, align 8
  %320 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %425, label %323

323:                                              ; preds = %318
  %324 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %325 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %324, i32 0, i32 3
  %326 = load %struct.TYPE_46__*, %struct.TYPE_46__** %325, align 8
  store %struct.TYPE_46__* %326, %struct.TYPE_46__** %34, align 8
  %327 = load %struct.TYPE_43__*, %struct.TYPE_43__** %24, align 8
  %328 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_45__*, %struct.TYPE_45__** %328, align 8
  %330 = icmp ne %struct.TYPE_45__* %329, null
  br i1 %330, label %331, label %355

331:                                              ; preds = %323
  %332 = load %struct.TYPE_43__*, %struct.TYPE_43__** %24, align 8
  %333 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_45__*, %struct.TYPE_45__** %333, align 8
  store %struct.TYPE_45__* %334, %struct.TYPE_45__** %35, align 8
  store i32 0, i32* %21, align 4
  br label %335

335:                                              ; preds = %351, %331
  %336 = load i32, i32* %21, align 4
  %337 = load %struct.TYPE_45__*, %struct.TYPE_45__** %35, align 8
  %338 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = icmp slt i32 %336, %339
  br i1 %340, label %341, label %354

341:                                              ; preds = %335
  %342 = load %struct.TYPE_45__*, %struct.TYPE_45__** %35, align 8
  %343 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %342, i32 0, i32 1
  %344 = load %struct.TYPE_49__*, %struct.TYPE_49__** %343, align 8
  %345 = load i32, i32* %21, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %349, i32 0, i32 0
  store i64 0, i64* %350, align 8
  br label %351

351:                                              ; preds = %341
  %352 = load i32, i32* %21, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %21, align 4
  br label %335

354:                                              ; preds = %335
  br label %355

355:                                              ; preds = %354, %323
  %356 = load %struct.TYPE_45__*, %struct.TYPE_45__** %30, align 8
  %357 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %360, label %369

360:                                              ; preds = %355
  %361 = load %struct.TYPE_45__*, %struct.TYPE_45__** %30, align 8
  %362 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %361, i32 0, i32 1
  %363 = load %struct.TYPE_49__*, %struct.TYPE_49__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %363, i64 0
  %365 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_46__*, %struct.TYPE_46__** %365, align 8
  %367 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %368 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %367, i32 0, i32 3
  store %struct.TYPE_46__* %366, %struct.TYPE_46__** %368, align 8
  br label %387

369:                                              ; preds = %355
  %370 = load %struct.TYPE_45__*, %struct.TYPE_45__** %30, align 8
  %371 = load %struct.TYPE_46__*, %struct.TYPE_46__** %34, align 8
  %372 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %371, i32 0, i32 4
  %373 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %372, i32 0, i32 0
  store %struct.TYPE_45__* %370, %struct.TYPE_45__** %373, align 8
  %374 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %374, i32 0, i32 0
  %376 = load %struct.TYPE_39__*, %struct.TYPE_39__** %375, align 8
  %377 = load i32, i32* %22, align 4
  %378 = sext i32 %377 to i64
  %379 = mul i64 4, %378
  %380 = trunc i64 %379 to i32
  %381 = call i64 @sqlite3DbMallocZero(%struct.TYPE_39__* %376, i32 %380)
  %382 = inttoptr i64 %381 to i32*
  store i32* %382, i32** %23, align 8
  %383 = load i32*, i32** %23, align 8
  %384 = icmp eq i32* %383, null
  %385 = zext i1 %384 to i32
  %386 = call i32 @testcase(i32 %385)
  br label %387

387:                                              ; preds = %369, %360
  %388 = load %struct.TYPE_45__*, %struct.TYPE_45__** %29, align 8
  %389 = load %struct.TYPE_43__*, %struct.TYPE_43__** %24, align 8
  %390 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %389, i32 0, i32 0
  store %struct.TYPE_45__* %388, %struct.TYPE_45__** %390, align 8
  %391 = load i32, i32* @SQLITE_QueryFlattener, align 4
  %392 = load %struct.TYPE_39__*, %struct.TYPE_39__** %25, align 8
  %393 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = or i32 %394, %391
  store i32 %395, i32* %393, align 4
  %396 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %397 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %398 = load i32, i32* @IN_INDEX_LOOP, align 4
  %399 = load i32*, i32** %23, align 8
  %400 = call i32 @sqlite3FindInIndex(%struct.TYPE_44__* %396, %struct.TYPE_46__* %397, i32 %398, i32 0, i32* %399)
  store i32 %400, i32* %17, align 4
  %401 = load i32, i32* %26, align 4
  %402 = load %struct.TYPE_39__*, %struct.TYPE_39__** %25, align 8
  %403 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %402, i32 0, i32 0
  store i32 %401, i32* %403, align 4
  %404 = load i32*, i32** %23, align 8
  %405 = icmp ne i32* %404, null
  br i1 %405, label %406, label %411

406:                                              ; preds = %387
  %407 = load i32*, i32** %23, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 0
  %409 = load i32, i32* %408, align 4
  %410 = icmp ne i32 %409, 0
  br label %411

411:                                              ; preds = %406, %387
  %412 = phi i1 [ false, %387 ], [ %410, %406 ]
  %413 = zext i1 %412 to i32
  %414 = call i32 @testcase(i32 %413)
  %415 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %416 = load %struct.TYPE_43__*, %struct.TYPE_43__** %24, align 8
  %417 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %416, i32 0, i32 0
  store %struct.TYPE_45__* %415, %struct.TYPE_45__** %417, align 8
  %418 = load %struct.TYPE_45__*, %struct.TYPE_45__** %28, align 8
  %419 = load %struct.TYPE_46__*, %struct.TYPE_46__** %34, align 8
  %420 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %419, i32 0, i32 4
  %421 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %420, i32 0, i32 0
  store %struct.TYPE_45__* %418, %struct.TYPE_45__** %421, align 8
  %422 = load %struct.TYPE_46__*, %struct.TYPE_46__** %34, align 8
  %423 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %424 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %423, i32 0, i32 3
  store %struct.TYPE_46__* %422, %struct.TYPE_46__** %424, align 8
  br label %425

425:                                              ; preds = %411, %318
  %426 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %427 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %426, i32 0, i32 0
  %428 = load %struct.TYPE_39__*, %struct.TYPE_39__** %427, align 8
  %429 = load %struct.TYPE_45__*, %struct.TYPE_45__** %30, align 8
  %430 = call i32 @sqlite3ExprListDelete(%struct.TYPE_39__* %428, %struct.TYPE_45__* %429)
  %431 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %432 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_39__*, %struct.TYPE_39__** %432, align 8
  %434 = load %struct.TYPE_45__*, %struct.TYPE_45__** %29, align 8
  %435 = call i32 @sqlite3ExprListDelete(%struct.TYPE_39__* %433, %struct.TYPE_45__* %434)
  br label %436

436:                                              ; preds = %425, %231
  %437 = load i32, i32* %17, align 4
  %438 = load i32, i32* @IN_INDEX_INDEX_DESC, align 4
  %439 = icmp eq i32 %437, %438
  br i1 %439, label %440, label %447

440:                                              ; preds = %436
  %441 = load i32, i32* %12, align 4
  %442 = call i32 @testcase(i32 %441)
  %443 = load i32, i32* %12, align 4
  %444 = icmp ne i32 %443, 0
  %445 = xor i1 %444, true
  %446 = zext i1 %445 to i32
  store i32 %446, i32* %12, align 4
  br label %447

447:                                              ; preds = %440, %436
  %448 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %449 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 4
  store i32 %450, i32* %18, align 4
  %451 = load i32*, i32** %15, align 8
  %452 = load i32, i32* %12, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %456

454:                                              ; preds = %447
  %455 = load i32, i32* @OP_Last, align 4
  br label %458

456:                                              ; preds = %447
  %457 = load i32, i32* @OP_Rewind, align 4
  br label %458

458:                                              ; preds = %456, %454
  %459 = phi i32 [ %455, %454 ], [ %457, %456 ]
  %460 = load i32, i32* %18, align 4
  %461 = call i32 @sqlite3VdbeAddOp2(i32* %451, i32 %459, i32 %460, i32 0)
  %462 = load i32*, i32** %15, align 8
  %463 = load i32, i32* %12, align 4
  %464 = call i32 @VdbeCoverageIf(i32* %462, i32 %463)
  %465 = load i32*, i32** %15, align 8
  %466 = load i32, i32* %12, align 4
  %467 = icmp ne i32 %466, 0
  %468 = xor i1 %467, true
  %469 = zext i1 %468 to i32
  %470 = call i32 @VdbeCoverageIf(i32* %465, i32 %469)
  %471 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %472 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = load i32, i32* @WHERE_MULTI_OR, align 4
  %475 = and i32 %473, %474
  %476 = icmp eq i32 %475, 0
  %477 = zext i1 %476 to i32
  %478 = call i32 @assert(i32 %477)
  %479 = load i32, i32* @WHERE_IN_ABLE, align 4
  %480 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %481 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = or i32 %482, %479
  store i32 %483, i32* %481, align 8
  %484 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %485 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %495

490:                                              ; preds = %458
  %491 = load i32*, i32** %15, align 8
  %492 = call i32 @sqlite3VdbeMakeLabel(i32* %491)
  %493 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %494 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %493, i32 0, i32 1
  store i32 %492, i32* %494, align 8
  br label %495

495:                                              ; preds = %490, %458
  %496 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %497 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  store i32 %500, i32* %21, align 4
  %501 = load i32, i32* %22, align 4
  %502 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %503 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %502, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = add nsw i32 %506, %501
  store i32 %507, i32* %505, align 8
  %508 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %509 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %508, i32 0, i32 0
  %510 = load %struct.TYPE_39__*, %struct.TYPE_39__** %509, align 8
  %511 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %512 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %513, i32 0, i32 1
  %515 = load %struct.InLoop*, %struct.InLoop** %514, align 8
  %516 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %517 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = sext i32 %520 to i64
  %522 = mul i64 12, %521
  %523 = trunc i64 %522 to i32
  %524 = call %struct.InLoop* @sqlite3DbReallocOrFree(%struct.TYPE_39__* %510, %struct.InLoop* %515, i32 %523)
  %525 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %526 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %527, i32 0, i32 1
  store %struct.InLoop* %524, %struct.InLoop** %528, align 8
  %529 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %530 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %529, i32 0, i32 0
  %531 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %531, i32 0, i32 1
  %533 = load %struct.InLoop*, %struct.InLoop** %532, align 8
  store %struct.InLoop* %533, %struct.InLoop** %19, align 8
  %534 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %535 = icmp ne %struct.InLoop* %534, null
  br i1 %535, label %536, label %638

536:                                              ; preds = %495
  store i32 0, i32* %36, align 4
  %537 = load i32, i32* %21, align 4
  %538 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %539 = sext i32 %537 to i64
  %540 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %538, i64 %539
  store %struct.InLoop* %540, %struct.InLoop** %19, align 8
  %541 = load i32, i32* %11, align 4
  store i32 %541, i32* %21, align 4
  br label %542

542:                                              ; preds = %634, %536
  %543 = load i32, i32* %21, align 4
  %544 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %545 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 4
  %547 = icmp slt i32 %543, %546
  br i1 %547, label %548, label %637

548:                                              ; preds = %542
  %549 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %550 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %549, i32 0, i32 2
  %551 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %550, align 8
  %552 = load i32, i32* %21, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %551, i64 %553
  %555 = load %struct.TYPE_40__*, %struct.TYPE_40__** %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %555, i32 0, i32 1
  %557 = load %struct.TYPE_46__*, %struct.TYPE_46__** %556, align 8
  %558 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %559 = icmp eq %struct.TYPE_46__* %557, %558
  br i1 %559, label %560, label %633

560:                                              ; preds = %548
  %561 = load i32, i32* %16, align 4
  %562 = load i32, i32* %21, align 4
  %563 = add nsw i32 %561, %562
  %564 = load i32, i32* %11, align 4
  %565 = sub nsw i32 %563, %564
  store i32 %565, i32* %37, align 4
  %566 = load i32, i32* %17, align 4
  %567 = load i32, i32* @IN_INDEX_ROWID, align 4
  %568 = icmp eq i32 %566, %567
  br i1 %568, label %569, label %581

569:                                              ; preds = %560
  %570 = load i32, i32* %22, align 4
  %571 = icmp sgt i32 %570, 1
  %572 = zext i1 %571 to i32
  %573 = call i32 @testcase(i32 %572)
  %574 = load i32*, i32** %15, align 8
  %575 = load i32, i32* @OP_Rowid, align 4
  %576 = load i32, i32* %18, align 4
  %577 = load i32, i32* %37, align 4
  %578 = call i32 @sqlite3VdbeAddOp2(i32* %574, i32 %575, i32 %576, i32 %577)
  %579 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %580 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %579, i32 0, i32 2
  store i32 %578, i32* %580, align 4
  br label %602

581:                                              ; preds = %560
  %582 = load i32*, i32** %23, align 8
  %583 = icmp ne i32* %582, null
  br i1 %583, label %584, label %591

584:                                              ; preds = %581
  %585 = load i32*, i32** %23, align 8
  %586 = load i32, i32* %36, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %36, align 4
  %588 = sext i32 %586 to i64
  %589 = getelementptr inbounds i32, i32* %585, i64 %588
  %590 = load i32, i32* %589, align 4
  br label %592

591:                                              ; preds = %581
  br label %592

592:                                              ; preds = %591, %584
  %593 = phi i32 [ %590, %584 ], [ 0, %591 ]
  store i32 %593, i32* %38, align 4
  %594 = load i32*, i32** %15, align 8
  %595 = load i32, i32* @OP_Column, align 4
  %596 = load i32, i32* %18, align 4
  %597 = load i32, i32* %38, align 4
  %598 = load i32, i32* %37, align 4
  %599 = call i32 @sqlite3VdbeAddOp3(i32* %594, i32 %595, i32 %596, i32 %597, i32 %598)
  %600 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %601 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %600, i32 0, i32 2
  store i32 %599, i32* %601, align 4
  br label %602

602:                                              ; preds = %592, %569
  %603 = load i32*, i32** %15, align 8
  %604 = load i32, i32* @OP_IsNull, align 4
  %605 = load i32, i32* %37, align 4
  %606 = call i32 @sqlite3VdbeAddOp1(i32* %603, i32 %604, i32 %605)
  %607 = load i32*, i32** %15, align 8
  %608 = call i32 @VdbeCoverage(i32* %607)
  %609 = load i32, i32* %21, align 4
  %610 = load i32, i32* %11, align 4
  %611 = icmp eq i32 %609, %610
  br i1 %611, label %612, label %626

612:                                              ; preds = %602
  %613 = load i32, i32* %18, align 4
  %614 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %615 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %614, i32 0, i32 0
  store i32 %613, i32* %615, align 4
  %616 = load i32, i32* %12, align 4
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %620

618:                                              ; preds = %612
  %619 = load i32, i32* @OP_PrevIfOpen, align 4
  br label %622

620:                                              ; preds = %612
  %621 = load i32, i32* @OP_NextIfOpen, align 4
  br label %622

622:                                              ; preds = %620, %618
  %623 = phi i32 [ %619, %618 ], [ %621, %620 ]
  %624 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %625 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %624, i32 0, i32 1
  store i32 %623, i32* %625, align 4
  br label %630

626:                                              ; preds = %602
  %627 = load i32, i32* @OP_Noop, align 4
  %628 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %629 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %628, i32 0, i32 1
  store i32 %627, i32* %629, align 4
  br label %630

630:                                              ; preds = %626, %622
  %631 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %632 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %631, i32 1
  store %struct.InLoop* %632, %struct.InLoop** %19, align 8
  br label %633

633:                                              ; preds = %630, %548
  br label %634

634:                                              ; preds = %633
  %635 = load i32, i32* %21, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %21, align 4
  br label %542

637:                                              ; preds = %542
  br label %643

638:                                              ; preds = %495
  %639 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %640 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %639, i32 0, i32 0
  %641 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %640, i32 0, i32 0
  %642 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %641, i32 0, i32 0
  store i32 0, i32* %642, align 8
  br label %643

643:                                              ; preds = %638, %637
  %644 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %645 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %644, i32 0, i32 0
  %646 = load %struct.TYPE_39__*, %struct.TYPE_39__** %645, align 8
  %647 = load i32*, i32** %23, align 8
  %648 = call i32 @sqlite3DbFree(%struct.TYPE_39__* %646, i32* %647)
  br label %649

649:                                              ; preds = %643, %86
  br label %650

650:                                              ; preds = %649, %73
  %651 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %652 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %653 = call i32 @disableTerm(%struct.TYPE_42__* %651, %struct.TYPE_40__* %652)
  %654 = load i32, i32* %16, align 4
  store i32 %654, i32* %7, align 4
  br label %655

655:                                              ; preds = %650, %168
  %656 = load i32, i32* %7, align 4
  ret i32 %656
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ExprCodeTarget(%struct.TYPE_44__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @disableTerm(%struct.TYPE_42__*, %struct.TYPE_40__*) #1

declare dso_local i64 @ALWAYS(%struct.TYPE_40__*) #1

declare dso_local i32 @sqlite3FindInIndex(%struct.TYPE_44__*, %struct.TYPE_46__*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_46__* @sqlite3ExprDup(%struct.TYPE_39__*, %struct.TYPE_46__*, i32) #1

declare dso_local %struct.TYPE_45__* @sqlite3ExprListAppend(%struct.TYPE_44__*, %struct.TYPE_45__*, %struct.TYPE_46__*) #1

declare dso_local i64 @sqlite3DbMallocZero(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @sqlite3ExprListDelete(%struct.TYPE_39__*, %struct.TYPE_45__*) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local %struct.InLoop* @sqlite3DbReallocOrFree(%struct.TYPE_39__*, %struct.InLoop*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_39__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
