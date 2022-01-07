; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execIndexing.c_ExecInsertIndexTuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execIndexing.c_ExecInsertIndexTuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_30__**, %struct.TYPE_29__** }
%struct.TYPE_29__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i32, i32 }
%struct.TYPE_30__ = type { i32*, i32*, i32*, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_27__* }

@NIL = common dso_local global i32* null, align 8
@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@UNIQUE_CHECK_NO = common dso_local global i64 0, align 8
@UNIQUE_CHECK_PARTIAL = common dso_local global i64 0, align 8
@UNIQUE_CHECK_YES = common dso_local global i64 0, align 8
@CEOUC_LIVELOCK_PREVENTING_WAIT = common dso_local global i32 0, align 4
@CEOUC_NOWAIT = common dso_local global i32 0, align 4
@CEOUC_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ExecInsertIndexTuples(%struct.TYPE_27__* %0, %struct.TYPE_32__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_29__**, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca %struct.TYPE_30__**, align 8
  %19 = alloca %struct.TYPE_31__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_29__*, align 8
  %24 = alloca %struct.TYPE_30__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 1
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** @NIL, align 8
  store i32* %33, i32** %12, align 8
  %34 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %20, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %21, align 8
  %38 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %22, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @ItemPointerIsValid(i32* %41)
  %43 = call i32 @Assert(i32 %42)
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %45, align 8
  store %struct.TYPE_28__* %46, %struct.TYPE_28__** %13, align 8
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %15, align 4
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %51, align 8
  store %struct.TYPE_29__** %52, %struct.TYPE_29__*** %16, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %54, align 8
  store %struct.TYPE_30__** %55, %struct.TYPE_30__*** %18, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %57, align 8
  store %struct.TYPE_29__* %58, %struct.TYPE_29__** %17, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %63 = call i64 @RelationGetRelid(%struct.TYPE_29__* %62)
  %64 = icmp eq i64 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @Assert(i32 %65)
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %68 = call %struct.TYPE_31__* @GetPerTupleExprContext(%struct.TYPE_32__* %67)
  store %struct.TYPE_31__* %68, %struct.TYPE_31__** %19, align 8
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 0
  store %struct.TYPE_27__* %69, %struct.TYPE_27__** %71, align 8
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %242, %5
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %245

76:                                               ; preds = %72
  %77 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %16, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %77, i64 %79
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %80, align 8
  store %struct.TYPE_29__* %81, %struct.TYPE_29__** %23, align 8
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %83 = icmp eq %struct.TYPE_29__* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %242

85:                                               ; preds = %76
  %86 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %18, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %86, i64 %88
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %89, align 8
  store %struct.TYPE_30__* %90, %struct.TYPE_30__** %24, align 8
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %85
  br label %242

96:                                               ; preds = %85
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** @NIL, align 8
  %101 = icmp ne i32* %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %96
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %28, align 8
  %106 = load i32*, i32** %28, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %113 = call i32* @ExecPrepareQual(i32* %111, %struct.TYPE_32__* %112)
  store i32* %113, i32** %28, align 8
  %114 = load i32*, i32** %28, align 8
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 1
  store i32* %114, i32** %116, align 8
  br label %117

117:                                              ; preds = %108, %102
  %118 = load i32*, i32** %28, align 8
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %120 = call i32 @ExecQual(i32* %118, %struct.TYPE_31__* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  br label %242

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %96
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %128 = call i32 @FormIndexDatum(%struct.TYPE_30__* %125, %struct.TYPE_27__* %126, %struct.TYPE_32__* %127, i32* %37, i32* %40)
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %124
  %132 = load i32*, i32** %10, align 8
  %133 = load i32*, i32** @NIL, align 8
  %134 = icmp eq i32* %132, %133
  br i1 %134, label %144, label %135

135:                                              ; preds = %131
  %136 = load i32*, i32** %10, align 8
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @list_member_oid(i32* %136, i32 %141)
  %143 = icmp ne i64 %142, 0
  br label %144

144:                                              ; preds = %135, %131
  %145 = phi i1 [ true, %131 ], [ %143, %135 ]
  br label %146

146:                                              ; preds = %144, %124
  %147 = phi i1 [ false, %124 ], [ %145, %144 ]
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %25, align 4
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %146
  %156 = load i64, i64* @UNIQUE_CHECK_NO, align 8
  store i64 %156, i64* %26, align 8
  br label %175

157:                                              ; preds = %146
  %158 = load i32, i32* %25, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i64, i64* @UNIQUE_CHECK_PARTIAL, align 8
  store i64 %161, i64* %26, align 8
  br label %174

162:                                              ; preds = %157
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = load i64, i64* @UNIQUE_CHECK_YES, align 8
  store i64 %170, i64* %26, align 8
  br label %173

171:                                              ; preds = %162
  %172 = load i64, i64* @UNIQUE_CHECK_PARTIAL, align 8
  store i64 %172, i64* %26, align 8
  br label %173

173:                                              ; preds = %171, %169
  br label %174

174:                                              ; preds = %173, %160
  br label %175

175:                                              ; preds = %174, %155
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %177 = load i32*, i32** %11, align 8
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %179 = load i64, i64* %26, align 8
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %181 = call i32 @index_insert(%struct.TYPE_29__* %176, i32* %37, i32* %40, i32* %177, %struct.TYPE_29__* %178, i64 %179, %struct.TYPE_30__* %180)
  store i32 %181, i32* %27, align 4
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %212

186:                                              ; preds = %175
  %187 = load i32, i32* %25, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  store i32 1, i32* %29, align 4
  %190 = load i32, i32* @CEOUC_LIVELOCK_PREVENTING_WAIT, align 4
  store i32 %190, i32* %30, align 4
  br label %203

191:                                              ; preds = %186
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %191
  store i32 1, i32* %29, align 4
  %199 = load i32, i32* @CEOUC_NOWAIT, align 4
  store i32 %199, i32* %30, align 4
  br label %202

200:                                              ; preds = %191
  store i32 0, i32* %29, align 4
  %201 = load i32, i32* @CEOUC_WAIT, align 4
  store i32 %201, i32* %30, align 4
  br label %202

202:                                              ; preds = %200, %198
  br label %203

203:                                              ; preds = %202, %189
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %207 = load i32*, i32** %11, align 8
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %209 = load i32, i32* %30, align 4
  %210 = load i32, i32* %29, align 4
  %211 = call i32 @check_exclusion_or_unique_constraint(%struct.TYPE_29__* %204, %struct.TYPE_29__* %205, %struct.TYPE_30__* %206, i32* %207, i32* %37, i32* %40, %struct.TYPE_32__* %208, i32 0, i32 %209, i32 %210, i32* null)
  store i32 %211, i32* %27, align 4
  br label %212

212:                                              ; preds = %203, %175
  %213 = load i64, i64* %26, align 8
  %214 = load i64, i64* @UNIQUE_CHECK_PARTIAL, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %221, label %216

216:                                              ; preds = %212
  %217 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %241

221:                                              ; preds = %216, %212
  %222 = load i32, i32* %27, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %241, label %224

224:                                              ; preds = %221
  %225 = load i32*, i32** %12, align 8
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %227 = call i64 @RelationGetRelid(%struct.TYPE_29__* %226)
  %228 = call i32* @lappend_oid(i32* %225, i64 %227)
  store i32* %228, i32** %12, align 8
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %230 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %224
  %236 = load i32*, i32** %9, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = load i32*, i32** %9, align 8
  store i32 1, i32* %239, align 4
  br label %240

240:                                              ; preds = %238, %235, %224
  br label %241

241:                                              ; preds = %240, %221, %216
  br label %242

242:                                              ; preds = %241, %122, %95, %84
  %243 = load i32, i32* %14, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %14, align 4
  br label %72

245:                                              ; preds = %72
  %246 = load i32*, i32** %12, align 8
  %247 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %247)
  ret i32* %246
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @ItemPointerIsValid(i32*) #2

declare dso_local i64 @RelationGetRelid(%struct.TYPE_29__*) #2

declare dso_local %struct.TYPE_31__* @GetPerTupleExprContext(%struct.TYPE_32__*) #2

declare dso_local i32* @ExecPrepareQual(i32*, %struct.TYPE_32__*) #2

declare dso_local i32 @ExecQual(i32*, %struct.TYPE_31__*) #2

declare dso_local i32 @FormIndexDatum(%struct.TYPE_30__*, %struct.TYPE_27__*, %struct.TYPE_32__*, i32*, i32*) #2

declare dso_local i64 @list_member_oid(i32*, i32) #2

declare dso_local i32 @index_insert(%struct.TYPE_29__*, i32*, i32*, i32*, %struct.TYPE_29__*, i64, %struct.TYPE_30__*) #2

declare dso_local i32 @check_exclusion_or_unique_constraint(%struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_30__*, i32*, i32*, i32*, %struct.TYPE_32__*, i32, i32, i32, i32*) #2

declare dso_local i32* @lappend_oid(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
