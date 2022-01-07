; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_doinsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_doinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32, i8*, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32*, i64, i32 }

@UNIQUE_CHECK_NO = common dso_local global i32 0, align 4
@UNIQUE_CHECK_EXISTING = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i8* null, align 8
@InvalidBlockNumber = common dso_local global i64 0, align 8
@BT_WRITE = common dso_local global i32 0, align 4
@XLTW_InsertIndex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bt_doinsert(i32 %0, %struct.TYPE_15__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @UNIQUE_CHECK_NO, align 4
  %23 = icmp ne i32 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = call %struct.TYPE_16__* @_bt_mkscankey(i32 %25, %struct.TYPE_15__* %26)
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %11, align 8
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %44

38:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @UNIQUE_CHECK_EXISTING, align 4
  %41 = icmp ne i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %38, %35
  br label %45

45:                                               ; preds = %44, %4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = call i32 @IndexTupleSize(%struct.TYPE_15__* %48)
  %50 = call i64 @MAXALIGN(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 0, i32* %54, align 8
  %55 = load i8*, i8** @InvalidBuffer, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %179, %45
  store i32 0, i32* %14, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @RelationGetTargetBlock(i32 %58)
  %60 = load i64, i64* @InvalidBlockNumber, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %131

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @RelationGetTargetBlock(i32 %64)
  %66 = call i8* @ReadBuffer(i32 %63, i64 %65)
  store i8* %66, i8** %13, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = call i64 @ConditionalLockBuffer(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %124

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @_bt_checkpage(i32 %71, i8* %72)
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @BufferGetPage(i8* %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i64 @PageGetSpecialPointer(i32 %76)
  store i64 %77, i64* %17, align 8
  %78 = load i64, i64* %17, align 8
  %79 = call i64 @P_ISLEAF(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %116

81:                                               ; preds = %70
  %82 = load i64, i64* %17, align 8
  %83 = call i64 @P_RIGHTMOST(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %81
  %86 = load i64, i64* %17, align 8
  %87 = call i32 @P_IGNORE(i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %116, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %16, align 4
  %91 = call i64 @PageGetFreeSpace(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %91, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %89
  %96 = load i32, i32* %16, align 4
  %97 = call i64 @PageGetMaxOffsetNumber(i32 %96)
  %98 = load i64, i64* %17, align 8
  %99 = call i64 @P_FIRSTDATAKEY(i64 %98)
  %100 = icmp sge i64 %97, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %95
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load i64, i64* %17, align 8
  %106 = call i64 @P_FIRSTDATAKEY(i64 %105)
  %107 = call i64 @_bt_compare(i32 %102, %struct.TYPE_16__* %103, i32 %104, i64 %106)
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %101
  %110 = load i64, i64* %17, align 8
  %111 = call i32 @P_INCOMPLETE_SPLIT(i64 %110)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @Assert(i32 %114)
  store i32 1, i32* %14, align 4
  br label %123

116:                                              ; preds = %101, %95, %89, %85, %81, %70
  %117 = load i32, i32* %5, align 4
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 @_bt_relbuf(i32 %117, i8* %118)
  %120 = load i32, i32* %5, align 4
  %121 = load i64, i64* @InvalidBlockNumber, align 8
  %122 = call i32 @RelationSetTargetBlock(i32 %120, i64 %121)
  br label %123

123:                                              ; preds = %116, %109
  br label %130

124:                                              ; preds = %62
  %125 = load i8*, i8** %13, align 8
  %126 = call i32 @ReleaseBuffer(i8* %125)
  %127 = load i32, i32* %5, align 4
  %128 = load i64, i64* @InvalidBlockNumber, align 8
  %129 = call i32 @RelationSetTargetBlock(i32 %127, i64 %128)
  br label %130

130:                                              ; preds = %124, %123
  br label %131

131:                                              ; preds = %130, %57
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %137 = load i32, i32* @BT_WRITE, align 4
  %138 = call i32* @_bt_search(i32 %135, %struct.TYPE_16__* %136, i8** %13, i32 %137, i32* null)
  store i32* %138, i32** %12, align 8
  br label %139

139:                                              ; preds = %134, %131
  %140 = load i8*, i8** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i8* %140, i8** %141, align 8
  %142 = load i8*, i8** @InvalidBuffer, align 8
  store i8* %142, i8** %13, align 8
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %191

145:                                              ; preds = %139
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @_bt_check_unique(i32 %146, %struct.TYPE_17__* %10, i32 %147, i32 %148, i32* %9, i64* %19)
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = call i64 @TransactionIdIsValid(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %180

153:                                              ; preds = %145
  %154 = load i32, i32* %5, align 4
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @_bt_relbuf(i32 %154, i8* %156)
  %158 = load i8*, i8** @InvalidBuffer, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i8* %158, i8** %159, align 8
  %160 = load i64, i64* %19, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %153
  %163 = load i32, i32* %18, align 4
  %164 = load i64, i64* %19, align 8
  %165 = call i32 @SpeculativeInsertionWait(i32 %163, i64 %164)
  br label %173

166:                                              ; preds = %153
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %5, align 4
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* @XLTW_InsertIndex, align 4
  %172 = call i32 @XactLockTableWait(i32 %167, i32 %168, i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %166, %162
  %174 = load i32*, i32** %12, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32*, i32** %12, align 8
  %178 = call i32 @_bt_freestack(i32* %177)
  br label %179

179:                                              ; preds = %176, %173
  br label %57

180:                                              ; preds = %145
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  store i32* %187, i32** %189, align 8
  br label %190

190:                                              ; preds = %185, %180
  br label %191

191:                                              ; preds = %190, %139
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @UNIQUE_CHECK_EXISTING, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %214

195:                                              ; preds = %191
  %196 = load i32, i32* %5, align 4
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @CheckForSerializableConflictIn(i32 %196, i32* null, i8* %198)
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* %15, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @_bt_findinsertloc(i32 %200, %struct.TYPE_17__* %10, i32 %201, i32* %202, i32 %203)
  store i32 %204, i32* %20, align 4
  %205 = load i32, i32* %5, align 4
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = load i8*, i8** @InvalidBuffer, align 8
  %210 = load i32*, i32** %12, align 8
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %212 = load i32, i32* %20, align 4
  %213 = call i32 @_bt_insertonpg(i32 %205, %struct.TYPE_16__* %206, i8* %208, i8* %209, i32* %210, %struct.TYPE_15__* %211, i32 %212, i32 0)
  br label %219

214:                                              ; preds = %191
  %215 = load i32, i32* %5, align 4
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @_bt_relbuf(i32 %215, i8* %217)
  br label %219

219:                                              ; preds = %214, %195
  %220 = load i32*, i32** %12, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32*, i32** %12, align 8
  %224 = call i32 @_bt_freestack(i32* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %227 = call i32 @pfree(%struct.TYPE_16__* %226)
  %228 = load i32, i32* %9, align 4
  ret i32 %228
}

declare dso_local %struct.TYPE_16__* @_bt_mkscankey(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @MAXALIGN(i32) #1

declare dso_local i32 @IndexTupleSize(%struct.TYPE_15__*) #1

declare dso_local i64 @RelationGetTargetBlock(i32) #1

declare dso_local i8* @ReadBuffer(i32, i64) #1

declare dso_local i64 @ConditionalLockBuffer(i8*) #1

declare dso_local i32 @_bt_checkpage(i32, i8*) #1

declare dso_local i32 @BufferGetPage(i8*) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @P_ISLEAF(i64) #1

declare dso_local i64 @P_RIGHTMOST(i64) #1

declare dso_local i32 @P_IGNORE(i64) #1

declare dso_local i64 @PageGetFreeSpace(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @P_FIRSTDATAKEY(i64) #1

declare dso_local i64 @_bt_compare(i32, %struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @P_INCOMPLETE_SPLIT(i64) #1

declare dso_local i32 @_bt_relbuf(i32, i8*) #1

declare dso_local i32 @RelationSetTargetBlock(i32, i64) #1

declare dso_local i32 @ReleaseBuffer(i8*) #1

declare dso_local i32* @_bt_search(i32, %struct.TYPE_16__*, i8**, i32, i32*) #1

declare dso_local i32 @_bt_check_unique(i32, %struct.TYPE_17__*, i32, i32, i32*, i64*) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i32 @SpeculativeInsertionWait(i32, i64) #1

declare dso_local i32 @XactLockTableWait(i32, i32, i32*, i32) #1

declare dso_local i32 @_bt_freestack(i32*) #1

declare dso_local i32 @CheckForSerializableConflictIn(i32, i32*, i8*) #1

declare dso_local i32 @_bt_findinsertloc(i32, %struct.TYPE_17__*, i32, i32*, i32) #1

declare dso_local i32 @_bt_insertonpg(i32, %struct.TYPE_16__*, i8*, i8*, i32*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
