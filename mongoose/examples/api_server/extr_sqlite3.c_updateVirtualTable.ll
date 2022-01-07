; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_updateVirtualTable.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_updateVirtualTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32*, i32* }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32* }

@TK_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"_rowid_\00", align 1
@OP_OpenEphemeral = common dso_local global i32 0, align 4
@BTREE_UNORDERED = common dso_local global i32 0, align 4
@SRT_Table = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_VUpdate = common dso_local global i32 0, align 4
@P4_VTAB = common dso_local global i32 0, align 4
@OE_Default = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_Close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32*, %struct.TYPE_21__*, %struct.TYPE_23__*, i32*, i32*, i32*, i32)* @updateVirtualTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateVirtualTable(%struct.TYPE_22__* %0, i32* %1, %struct.TYPE_21__* %2, %struct.TYPE_23__* %3, i32* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %17, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %18, align 8
  store i32* null, i32** %19, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %25, align 8
  %34 = load i32*, i32** %25, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %36 = call i64 @sqlite3GetVTable(i32* %34, %struct.TYPE_21__* %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %26, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %39 = load i32*, i32** %25, align 8
  %40 = load i32, i32* @TK_ID, align 4
  %41 = call i32* @sqlite3Expr(i32* %39, i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %42 = call %struct.TYPE_23__* @sqlite3ExprListAppend(%struct.TYPE_22__* %38, %struct.TYPE_23__* null, i32* %41)
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %18, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %48 = load i32*, i32** %25, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32* @sqlite3ExprDup(i32* %48, i32* %49, i32 0)
  %51 = call %struct.TYPE_23__* @sqlite3ExprListAppend(%struct.TYPE_22__* %46, %struct.TYPE_23__* %47, i32* %50)
  store %struct.TYPE_23__* %51, %struct.TYPE_23__** %18, align 8
  br label %52

52:                                               ; preds = %45, %8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  store i32 0, i32* %22, align 4
  br label %59

59:                                               ; preds = %104, %52
  %60 = load i32, i32* %22, align 4
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %107

65:                                               ; preds = %59
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* %22, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = load i32*, i32** %25, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %22, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32* @sqlite3ExprDup(i32* %73, i32* %85, i32 0)
  store i32* %86, i32** %20, align 8
  br label %99

87:                                               ; preds = %65
  %88 = load i32*, i32** %25, align 8
  %89 = load i32, i32* @TK_ID, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %91, align 8
  %93 = load i32, i32* %22, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32* @sqlite3Expr(i32* %88, i32 %89, i8* %97)
  store i32* %98, i32** %20, align 8
  br label %99

99:                                               ; preds = %87, %72
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %102 = load i32*, i32** %20, align 8
  %103 = call %struct.TYPE_23__* @sqlite3ExprListAppend(%struct.TYPE_22__* %100, %struct.TYPE_23__* %101, i32* %102)
  store %struct.TYPE_23__* %103, %struct.TYPE_23__** %18, align 8
  br label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %22, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %22, align 4
  br label %59

107:                                              ; preds = %59
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = call i32* @sqlite3SelectNew(%struct.TYPE_22__* %108, %struct.TYPE_23__* %109, i32* %110, i32* %111, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32* %112, i32** %19, align 8
  %113 = load i32*, i32** %17, align 8
  %114 = ptrtoint i32* %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  store i32 %118, i32* %21, align 4
  %120 = load i32*, i32** %17, align 8
  %121 = load i32, i32* @OP_OpenEphemeral, align 4
  %122 = load i32, i32* %21, align 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  %127 = load i32*, i32** %13, align 8
  %128 = icmp ne i32* %127, null
  %129 = zext i1 %128 to i32
  %130 = add nsw i32 %126, %129
  %131 = call i32 @sqlite3VdbeAddOp2(i32* %120, i32 %121, i32 %122, i32 %130)
  %132 = load i32*, i32** %17, align 8
  %133 = load i32, i32* @BTREE_UNORDERED, align 4
  %134 = call i32 @sqlite3VdbeChangeP5(i32* %132, i32 %133)
  %135 = load i32, i32* @SRT_Table, align 4
  %136 = load i32, i32* %21, align 4
  %137 = call i32 @sqlite3SelectDestInit(i32* %27, i32 %135, i32 %136)
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %139 = load i32*, i32** %19, align 8
  %140 = call i32 @sqlite3Select(%struct.TYPE_22__* %138, i32* %139, i32* %27)
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  store i32 %144, i32* %24, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i32*, i32** %17, align 8
  %154 = load i32, i32* @OP_Rewind, align 4
  %155 = load i32, i32* %21, align 4
  %156 = call i32 @sqlite3VdbeAddOp2(i32* %153, i32 %154, i32 %155, i32 0)
  store i32 %156, i32* %23, align 4
  %157 = load i32*, i32** %17, align 8
  %158 = load i32, i32* @OP_Column, align 4
  %159 = load i32, i32* %21, align 4
  %160 = load i32, i32* %24, align 4
  %161 = call i32 @sqlite3VdbeAddOp3(i32* %157, i32 %158, i32 %159, i32 0, i32 %160)
  %162 = load i32*, i32** %17, align 8
  %163 = load i32, i32* @OP_Column, align 4
  %164 = load i32, i32* %21, align 4
  %165 = load i32*, i32** %13, align 8
  %166 = icmp ne i32* %165, null
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  %169 = load i32, i32* %24, align 4
  %170 = add nsw i32 %169, 1
  %171 = call i32 @sqlite3VdbeAddOp3(i32* %162, i32 %163, i32 %164, i32 %168, i32 %170)
  store i32 0, i32* %22, align 4
  br label %172

172:                                              ; preds = %193, %107
  %173 = load i32, i32* %22, align 4
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %196

178:                                              ; preds = %172
  %179 = load i32*, i32** %17, align 8
  %180 = load i32, i32* @OP_Column, align 4
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %22, align 4
  %183 = add nsw i32 %182, 1
  %184 = load i32*, i32** %13, align 8
  %185 = icmp ne i32* %184, null
  %186 = zext i1 %185 to i32
  %187 = add nsw i32 %183, %186
  %188 = load i32, i32* %24, align 4
  %189 = add nsw i32 %188, 2
  %190 = load i32, i32* %22, align 4
  %191 = add nsw i32 %189, %190
  %192 = call i32 @sqlite3VdbeAddOp3(i32* %179, i32 %180, i32 %181, i32 %187, i32 %191)
  br label %193

193:                                              ; preds = %178
  %194 = load i32, i32* %22, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %22, align 4
  br label %172

196:                                              ; preds = %172
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %199 = call i32 @sqlite3VtabMakeWritable(%struct.TYPE_22__* %197, %struct.TYPE_21__* %198)
  %200 = load i32*, i32** %17, align 8
  %201 = load i32, i32* @OP_VUpdate, align 4
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 2
  %206 = load i32, i32* %24, align 4
  %207 = load i8*, i8** %26, align 8
  %208 = load i32, i32* @P4_VTAB, align 4
  %209 = call i32 @sqlite3VdbeAddOp4(i32* %200, i32 %201, i32 0, i32 %205, i32 %206, i8* %207, i32 %208)
  %210 = load i32*, i32** %17, align 8
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* @OE_Default, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %196
  %215 = load i32, i32* @OE_Abort, align 4
  br label %218

216:                                              ; preds = %196
  %217 = load i32, i32* %16, align 4
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i32 [ %215, %214 ], [ %217, %216 ]
  %220 = call i32 @sqlite3VdbeChangeP5(i32* %210, i32 %219)
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %222 = call i32 @sqlite3MayAbort(%struct.TYPE_22__* %221)
  %223 = load i32*, i32** %17, align 8
  %224 = load i32, i32* @OP_Next, align 4
  %225 = load i32, i32* %21, align 4
  %226 = load i32, i32* %23, align 4
  %227 = add nsw i32 %226, 1
  %228 = call i32 @sqlite3VdbeAddOp2(i32* %223, i32 %224, i32 %225, i32 %227)
  %229 = load i32*, i32** %17, align 8
  %230 = load i32, i32* %23, align 4
  %231 = call i32 @sqlite3VdbeJumpHere(i32* %229, i32 %230)
  %232 = load i32*, i32** %17, align 8
  %233 = load i32, i32* @OP_Close, align 4
  %234 = load i32, i32* %21, align 4
  %235 = call i32 @sqlite3VdbeAddOp2(i32* %232, i32 %233, i32 %234, i32 0)
  %236 = load i32*, i32** %25, align 8
  %237 = load i32*, i32** %19, align 8
  %238 = call i32 @sqlite3SelectDelete(i32* %236, i32* %237)
  ret void
}

declare dso_local i64 @sqlite3GetVTable(i32*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_23__* @sqlite3ExprListAppend(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32* @sqlite3Expr(i32*, i32, i8*) #1

declare dso_local i32* @sqlite3ExprDup(i32*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3SelectNew(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3SelectDestInit(i32*, i32, i32) #1

declare dso_local i32 @sqlite3Select(%struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VtabMakeWritable(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3MayAbort(%struct.TYPE_22__*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3SelectDelete(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
