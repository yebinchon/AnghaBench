; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_pageops.c_brin_getinsertbuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_pageops.c_brin_getinsertbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BrinMaxItemSize = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@ExclusiveLock = common dso_local global i32 0, align 4
@P_NEW = common dso_local global i64 0, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"brin_getinsertbuffer: extending to page %u\00", align 1
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"index row size %zu exceeds maximum %zu for index \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @brin_getinsertbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brin_getinsertbuffer(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @BrinMaxItemSize, align 4
  %18 = icmp sle i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @BufferIsValid(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @BufferGetBlockNumber(i32 %25)
  store i64 %26, i64* %10, align 8
  br label %29

27:                                               ; preds = %4
  %28 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @RelationGetTargetBlock(i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @InvalidBlockNumber, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @GetPageWithFreeSpace(i32 %36, i32 %37)
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %212, %39
  store i32 0, i32* %15, align 4
  %41 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %42 = load i32*, i32** %9, align 8
  store i32 0, i32* %42, align 4
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @InvalidBlockNumber, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @RELATION_IS_LOCAL(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ExclusiveLock, align 4
  %53 = call i32 @LockRelationForExtension(i32 %51, i32 %52)
  store i32 1, i32* %15, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %6, align 4
  %56 = load i64, i64* @P_NEW, align 8
  %57 = call i32 @ReadBuffer(i32 %55, i64 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i64 @BufferGetBlockNumber(i32 %58)
  store i64 %59, i64* %11, align 8
  %60 = load i32*, i32** %9, align 8
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* @DEBUG2, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i64 @BufferGetBlockNumber(i32 %62)
  %64 = trunc i64 %63 to i32
  %65 = call i32 @BRIN_elog(i32 %64)
  br label %77

66:                                               ; preds = %40
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %14, align 4
  br label %76

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @ReadBuffer(i32 %73, i64 %74)
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %72, %70
  br label %77

77:                                               ; preds = %76, %54
  %78 = load i32, i32* %7, align 4
  %79 = call i64 @BufferIsValid(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %128

81:                                               ; preds = %77
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %128

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %88 = call i32 @LockBuffer(i32 %86, i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @BufferGetPage(i32 %89)
  %91 = call i32 @BRIN_IS_REGULAR_PAGE(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %96 = call i32 @LockBuffer(i32 %94, i32 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @brin_initialize_empty_new_buffer(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %93
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @ExclusiveLock, align 4
  %110 = call i32 @UnlockRelationForExtension(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %104
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @ReleaseBuffer(i32 %112)
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load i32, i32* %6, align 4
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %11, align 8
  %121 = add nsw i64 %120, 1
  %122 = trunc i64 %121 to i32
  %123 = call i32 @FreeSpaceMapVacuumRange(i32 %118, i64 %119, i32 %122)
  %124 = load i32*, i32** %9, align 8
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %117, %111
  %126 = load i32, i32* @InvalidBuffer, align 4
  store i32 %126, i32* %5, align 4
  br label %218

127:                                              ; preds = %85
  br label %128

128:                                              ; preds = %127, %81, %77
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %131 = call i32 @LockBuffer(i32 %129, i32 %130)
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @ExclusiveLock, align 4
  %137 = call i32 @UnlockRelationForExtension(i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %128
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @BufferGetPage(i32 %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32, i32* @BrinMaxItemSize, align 4
  br label %149

146:                                              ; preds = %138
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @br_page_get_freespace(i32 %147)
  br label %149

149:                                              ; preds = %146, %144
  %150 = phi i32 [ %145, %144 ], [ %148, %146 ]
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %175

154:                                              ; preds = %149
  %155 = load i32, i32* %6, align 4
  %156 = load i64, i64* %11, align 8
  %157 = call i32 @RelationSetTargetBlock(i32 %155, i64 %156)
  %158 = load i32, i32* %7, align 4
  %159 = call i64 @BufferIsValid(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %154
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* %11, align 8
  %164 = icmp sgt i64 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %161
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %168 = call i32 @LockBuffer(i32 %166, i32 %167)
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @BufferGetPage(i32 %169)
  %171 = call i32 @BRIN_IS_REGULAR_PAGE(i32 %170)
  %172 = call i32 @Assert(i32 %171)
  br label %173

173:                                              ; preds = %165, %161, %154
  %174 = load i32, i32* %14, align 4
  store i32 %174, i32* %5, align 4
  br label %218

175:                                              ; preds = %149
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %175
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @brin_initialize_empty_new_buffer(i32 %180, i32 %181)
  %183 = load i32, i32* @ERROR, align 4
  %184 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %185 = call i32 @errcode(i32 %184)
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @RelationGetRelationName(i32 %188)
  %190 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %186, i32 %187, i32 %189)
  %191 = call i32 @ereport(i32 %183, i32 %190)
  %192 = load i32, i32* @InvalidBuffer, align 4
  store i32 %192, i32* %5, align 4
  br label %218

193:                                              ; preds = %175
  %194 = load i64, i64* %11, align 8
  %195 = load i64, i64* %10, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @UnlockReleaseBuffer(i32 %198)
  br label %200

200:                                              ; preds = %197, %193
  %201 = load i32, i32* %7, align 4
  %202 = call i64 @BufferIsValid(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %200
  %205 = load i64, i64* %10, align 8
  %206 = load i64, i64* %11, align 8
  %207 = icmp sle i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %211 = call i32 @LockBuffer(i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %208, %204, %200
  %213 = load i32, i32* %6, align 4
  %214 = load i64, i64* %11, align 8
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %8, align 4
  %217 = call i64 @RecordAndGetPageWithFreeSpace(i32 %213, i64 %214, i32 %215, i32 %216)
  store i64 %217, i64* %11, align 8
  br label %40

218:                                              ; preds = %179, %173, %125
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i64 @RelationGetTargetBlock(i32) #1

declare dso_local i64 @GetPageWithFreeSpace(i32, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @RELATION_IS_LOCAL(i32) #1

declare dso_local i32 @LockRelationForExtension(i32, i32) #1

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i32 @BRIN_elog(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BRIN_IS_REGULAR_PAGE(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @brin_initialize_empty_new_buffer(i32, i32) #1

declare dso_local i32 @UnlockRelationForExtension(i32, i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @FreeSpaceMapVacuumRange(i32, i64, i32) #1

declare dso_local i32 @br_page_get_freespace(i32) #1

declare dso_local i32 @RelationSetTargetBlock(i32, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i64 @RecordAndGetPageWithFreeSpace(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
