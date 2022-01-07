; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_pagedel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_pagedel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32 }

@LOG = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"index \22%s\22 contains a half-dead internal page\00", align 1
@.str.1 = private unnamed_addr constant [104 x i8] c"This can be caused by an interrupted VACUUM in version 9.3 or older, before upgrade. Please REINDEX it.\00", align 1
@P_HIKEY = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@BT_READ = common dso_local global i32 0, align 4
@BT_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bt_pagedel(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32* null, i32** %11, align 8
  br label %19

19:                                               ; preds = %189, %135, %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @BufferGetPage(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @PageGetSpecialPointer(i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %10, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %26 = call i32 @P_ISLEAF(%struct.TYPE_14__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %30 = call i64 @P_ISHALFDEAD(%struct.TYPE_14__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* @LOG, align 4
  %34 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @RelationGetRelationName(i32 %36)
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = call i32 @errhint(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @ereport(i32 %33, i32 %39)
  br label %41

41:                                               ; preds = %32, %28
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @_bt_relbuf(i32 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %196

46:                                               ; preds = %19
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %48 = call i64 @P_RIGHTMOST(%struct.TYPE_14__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %52 = call i64 @P_ISROOT(%struct.TYPE_14__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %56 = call i64 @P_ISDELETED(%struct.TYPE_14__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_14__* %59)
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @PageGetMaxOffsetNumber(i32 %61)
  %63 = icmp sle i64 %60, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %66 = call i64 @P_INCOMPLETE_SPLIT(%struct.TYPE_14__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %64, %58, %54, %50, %46
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %70 = call i64 @P_ISHALFDEAD(%struct.TYPE_14__* %69)
  %71 = icmp ne i64 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @Assert(i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @_bt_relbuf(i32 %75, i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %196

79:                                               ; preds = %64
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %81 = call i64 @P_ISHALFDEAD(%struct.TYPE_14__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %163, label %83

83:                                               ; preds = %79
  %84 = load i32*, i32** %11, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %151, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @P_HIKEY, align 4
  %89 = call i32 @PageGetItemId(i32 %87, i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i64 @PageGetItem(i32 %90, i32 %91)
  %93 = trunc i64 %92 to i32
  %94 = call i32 @CopyIndexTuple(i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %16, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %100 = call i32 @LockBuffer(i32 %98, i32 %99)
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %102 = call i32 @P_LEFTMOST(%struct.TYPE_14__* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %135, label %104

104:                                              ; preds = %86
  %105 = load i32, i32* %4, align 4
  %106 = load i64, i64* %16, align 8
  %107 = load i32, i32* @BT_READ, align 4
  %108 = call i32 @_bt_getbuf(i32 %105, i64 %106, i32 %107)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @BufferGetPage(i32 %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = call i64 @PageGetSpecialPointer(i32 %111)
  %113 = inttoptr i64 %112 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %17, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i64 @BufferGetBlockNumber(i32 %117)
  %119 = icmp eq i64 %116, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %104
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %122 = call i64 @P_INCOMPLETE_SPLIT(%struct.TYPE_14__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @ReleaseBuffer(i32 %125)
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @_bt_relbuf(i32 %127, i32 %128)
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %196

131:                                              ; preds = %120, %104
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @_bt_relbuf(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %86
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call %struct.TYPE_13__* @_bt_mkscankey(i32 %136, i32 %137)
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %12, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %143 = load i32, i32* @BT_READ, align 4
  %144 = call i32* @_bt_search(i32 %141, %struct.TYPE_13__* %142, i32* %15, i32 %143, i32* null)
  store i32* %144, i32** %11, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @_bt_relbuf(i32 %145, i32 %146)
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @BT_WRITE, align 4
  %150 = call i32 @LockBuffer(i32 %148, i32 %149)
  br label %19

151:                                              ; preds = %83
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load i32*, i32** %11, align 8
  %155 = call i32 @_bt_mark_page_halfdead(i32 %152, i32 %153, i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %151
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @_bt_relbuf(i32 %158, i32 %159)
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %3, align 4
  br label %196

162:                                              ; preds = %151
  br label %163

163:                                              ; preds = %162, %79
  store i32 0, i32* %8, align 4
  br label %164

164:                                              ; preds = %175, %163
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %166 = call i64 @P_ISHALFDEAD(%struct.TYPE_14__* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %164
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @_bt_unlink_halfdead_page(i32 %169, i32 %170, i32* %8)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %168
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %3, align 4
  br label %196

175:                                              ; preds = %168
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %164

178:                                              ; preds = %164
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %7, align 8
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @_bt_relbuf(i32 %182, i32 %183)
  %185 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %178
  br label %194

189:                                              ; preds = %178
  %190 = load i32, i32* %4, align 4
  %191 = load i64, i64* %7, align 8
  %192 = load i32, i32* @BT_WRITE, align 4
  %193 = call i32 @_bt_getbuf(i32 %190, i64 %191, i32 %192)
  store i32 %193, i32* %5, align 4
  br label %19

194:                                              ; preds = %188
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %194, %173, %157, %124, %68, %41
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @P_ISLEAF(%struct.TYPE_14__*) #1

declare dso_local i64 @P_ISHALFDEAD(%struct.TYPE_14__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

declare dso_local i64 @P_RIGHTMOST(%struct.TYPE_14__*) #1

declare dso_local i64 @P_ISROOT(%struct.TYPE_14__*) #1

declare dso_local i64 @P_ISDELETED(%struct.TYPE_14__*) #1

declare dso_local i64 @P_FIRSTDATAKEY(%struct.TYPE_14__*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @P_INCOMPLETE_SPLIT(%struct.TYPE_14__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @CopyIndexTuple(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @P_LEFTMOST(%struct.TYPE_14__*) #1

declare dso_local i32 @_bt_getbuf(i32, i64, i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local %struct.TYPE_13__* @_bt_mkscankey(i32, i32) #1

declare dso_local i32* @_bt_search(i32, %struct.TYPE_13__*, i32*, i32, i32*) #1

declare dso_local i32 @_bt_mark_page_halfdead(i32, i32, i32*) #1

declare dso_local i32 @_bt_unlink_halfdead_page(i32, i32, i32*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
