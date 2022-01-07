; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3RefillIndex.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3RefillIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i32, i64, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }

@SQLITE_REINDEX = common dso_local global i32 0, align 4
@OP_Clear = common dso_local global i32 0, align 4
@OP_OpenWrite = common dso_local global i32 0, align 4
@P4_KEYINFO_HANDOFF = common dso_local global i32 0, align 4
@OPFLAG_BULKCSR = common dso_local global i32 0, align 4
@OPFLAG_P2ISREG = common dso_local global i32 0, align 4
@OP_SorterOpen = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@OP_OpenRead = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_SorterInsert = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_SorterSort = common dso_local global i32 0, align 4
@OE_None = common dso_local global i64 0, align 8
@OP_Goto = common dso_local global i32 0, align 4
@OP_SorterCompare = common dso_local global i32 0, align 4
@SQLITE_CONSTRAINT_UNIQUE = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"indexed columns are not unique\00", align 1
@P4_STATIC = common dso_local global i32 0, align 4
@OP_SorterData = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OPFLAG_USESEEKRESULT = common dso_local global i32 0, align 4
@OP_SorterNext = common dso_local global i32 0, align 4
@OP_Close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_25__*, i32)* @sqlite3RefillIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite3RefillIndex(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %7, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %17, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_22__* %34, i32 %37)
  store i32 %38, i32* %18, align 4
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %40 = load i32, i32* @SQLITE_REINDEX, align 4
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %45, align 8
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @sqlite3AuthCheck(%struct.TYPE_24__* %39, i32 %40, i32 %43, i32 0, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %3
  br label %220

55:                                               ; preds = %3
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %57 = load i32, i32* %18, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sqlite3TableLock(%struct.TYPE_24__* %56, i32 %57, i32 %60, i32 1, i32 %63)
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %66 = call i32* @sqlite3GetVdbe(%struct.TYPE_24__* %65)
  store i32* %66, i32** %14, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %220

70:                                               ; preds = %55
  %71 = load i32, i32* %6, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %13, align 4
  br label %84

75:                                               ; preds = %70
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %13, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* @OP_Clear, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %18, align 4
  %83 = call i32 @sqlite3VdbeAddOp2(i32* %79, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %75, %73
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = call i32* @sqlite3IndexKeyinfo(%struct.TYPE_24__* %85, %struct.TYPE_25__* %86)
  store i32* %87, i32** %15, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* @OP_OpenWrite, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = bitcast i32* %93 to i8*
  %95 = load i32, i32* @P4_KEYINFO_HANDOFF, align 4
  %96 = call i32 @sqlite3VdbeAddOp4(i32* %88, i32 %89, i32 %90, i32 %91, i32 %92, i8* %94, i32 %95)
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* @OPFLAG_BULKCSR, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %84
  %102 = load i32, i32* @OPFLAG_P2ISREG, align 4
  br label %104

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i32 [ %102, %101 ], [ 0, %103 ]
  %106 = or i32 %98, %105
  %107 = call i32 @sqlite3VdbeChangeP5(i32* %97, i32 %106)
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  store i32 %110, i32* %10, align 4
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* @OP_SorterOpen, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = bitcast i32* %115 to i8*
  %117 = load i32, i32* @P4_KEYINFO, align 4
  %118 = call i32 @sqlite3VdbeAddOp4(i32* %112, i32 %113, i32 %114, i32 0, i32 0, i8* %116, i32 %117)
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %18, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %123 = load i32, i32* @OP_OpenRead, align 4
  %124 = call i32 @sqlite3OpenTable(%struct.TYPE_24__* %119, i32 %120, i32 %121, %struct.TYPE_23__* %122, i32 %123)
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* @OP_Rewind, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @sqlite3VdbeAddOp2(i32* %125, i32 %126, i32 %127, i32 0)
  store i32 %128, i32* %11, align 4
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %130 = call i32 @sqlite3GetTempReg(%struct.TYPE_24__* %129)
  store i32 %130, i32* %16, align 4
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @sqlite3GenerateIndexKey(%struct.TYPE_24__* %131, %struct.TYPE_25__* %132, i32 %133, i32 %134, i32 1)
  %136 = load i32*, i32** %14, align 8
  %137 = load i32, i32* @OP_SorterInsert, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @sqlite3VdbeAddOp2(i32* %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32*, i32** %14, align 8
  %142 = load i32, i32* @OP_Next, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  %146 = call i32 @sqlite3VdbeAddOp2(i32* %141, i32 %142, i32 %143, i32 %145)
  %147 = load i32*, i32** %14, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @sqlite3VdbeJumpHere(i32* %147, i32 %148)
  %150 = load i32*, i32** %14, align 8
  %151 = load i32, i32* @OP_SorterSort, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @sqlite3VdbeAddOp2(i32* %150, i32 %151, i32 %152, i32 0)
  store i32 %153, i32* %11, align 4
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @OE_None, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %180

159:                                              ; preds = %104
  %160 = load i32*, i32** %14, align 8
  %161 = call i32 @sqlite3VdbeCurrentAddr(i32* %160)
  %162 = add nsw i32 %161, 3
  store i32 %162, i32* %19, align 4
  %163 = load i32*, i32** %14, align 8
  %164 = load i32, i32* @OP_Goto, align 4
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @sqlite3VdbeAddOp2(i32* %163, i32 %164, i32 0, i32 %165)
  %167 = load i32*, i32** %14, align 8
  %168 = call i32 @sqlite3VdbeCurrentAddr(i32* %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32*, i32** %14, align 8
  %170 = load i32, i32* @OP_SorterCompare, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %16, align 4
  %174 = call i32 @sqlite3VdbeAddOp3(i32* %169, i32 %170, i32 %171, i32 %172, i32 %173)
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %176 = load i32, i32* @SQLITE_CONSTRAINT_UNIQUE, align 4
  %177 = load i32, i32* @OE_Abort, align 4
  %178 = load i32, i32* @P4_STATIC, align 4
  %179 = call i32 @sqlite3HaltConstraint(%struct.TYPE_24__* %175, i32 %176, i32 %177, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %178)
  br label %183

180:                                              ; preds = %104
  %181 = load i32*, i32** %14, align 8
  %182 = call i32 @sqlite3VdbeCurrentAddr(i32* %181)
  store i32 %182, i32* %12, align 4
  br label %183

183:                                              ; preds = %180, %159
  %184 = load i32*, i32** %14, align 8
  %185 = load i32, i32* @OP_SorterData, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %16, align 4
  %188 = call i32 @sqlite3VdbeAddOp2(i32* %184, i32 %185, i32 %186, i32 %187)
  %189 = load i32*, i32** %14, align 8
  %190 = load i32, i32* @OP_IdxInsert, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @sqlite3VdbeAddOp3(i32* %189, i32 %190, i32 %191, i32 %192, i32 1)
  %194 = load i32*, i32** %14, align 8
  %195 = load i32, i32* @OPFLAG_USESEEKRESULT, align 4
  %196 = call i32 @sqlite3VdbeChangeP5(i32* %194, i32 %195)
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %198 = load i32, i32* %16, align 4
  %199 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__* %197, i32 %198)
  %200 = load i32*, i32** %14, align 8
  %201 = load i32, i32* @OP_SorterNext, align 4
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* %12, align 4
  %204 = call i32 @sqlite3VdbeAddOp2(i32* %200, i32 %201, i32 %202, i32 %203)
  %205 = load i32*, i32** %14, align 8
  %206 = load i32, i32* %11, align 4
  %207 = call i32 @sqlite3VdbeJumpHere(i32* %205, i32 %206)
  %208 = load i32*, i32** %14, align 8
  %209 = load i32, i32* @OP_Close, align 4
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @sqlite3VdbeAddOp1(i32* %208, i32 %209, i32 %210)
  %212 = load i32*, i32** %14, align 8
  %213 = load i32, i32* @OP_Close, align 4
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @sqlite3VdbeAddOp1(i32* %212, i32 %213, i32 %214)
  %216 = load i32*, i32** %14, align 8
  %217 = load i32, i32* @OP_Close, align 4
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @sqlite3VdbeAddOp1(i32* %216, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %183, %69, %54
  ret void
}

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3TableLock(%struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32* @sqlite3IndexKeyinfo(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3OpenTable(%struct.TYPE_24__*, i32, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3GenerateIndexKey(%struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3HaltConstraint(%struct.TYPE_24__*, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
