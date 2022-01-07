; ModuleID = '/home/carl/AnghaBench/postgres/contrib/bloom/extr_blvacuum.c_blbulkdelete.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/bloom/extr_blvacuum.c_blbulkdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32, i64, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@BLOOM_HEAD_BLKNO = common dso_local global i64 0, align 8
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i32 0, align 4
@BloomMetaBlockN = common dso_local global i32 0, align 4
@BLOOM_METAPAGE_BLKNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @blbulkdelete(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i64 (i32*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i64 (i32*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i64 (i32*, i8*)* %2, i64 (i32*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %26 = icmp eq %struct.TYPE_22__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = call i64 @palloc0(i32 4)
  %29 = inttoptr i64 %28 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %6, align 8
  br label %30

30:                                               ; preds = %27, %4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @initBloomState(%struct.TYPE_24__* %14, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @RelationGetNumberOfBlocks(i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* @BLOOM_HEAD_BLKNO, align 8
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %175, %30
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %178

40:                                               ; preds = %36
  %41 = call i32 (...) @vacuum_delay_point()
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @MAIN_FORKNUM, align 4
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* @RBM_NORMAL, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ReadBufferExtended(i32 %42, i32 %43, i64 %44, i32 %45, i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %52 = call i32 @LockBuffer(i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32* @GenericXLogStart(i32 %53)
  store i32* %54, i32** %18, align 8
  %55 = load i32*, i32** %18, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i64 @GenericXLogRegisterBuffer(i32* %55, i32 %56, i32 0)
  store i64 %57, i64* %16, align 8
  %58 = load i64, i64* %16, align 8
  %59 = call i64 @PageIsNew(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %40
  %62 = load i64, i64* %16, align 8
  %63 = call i64 @BloomPageIsDeleted(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61, %40
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @UnlockReleaseBuffer(i32 %66)
  %68 = load i32*, i32** %18, align 8
  %69 = call i32 @GenericXLogAbort(i32* %68)
  br label %175

70:                                               ; preds = %61
  %71 = load i64, i64* %16, align 8
  %72 = load i32, i32* @FirstOffsetNumber, align 4
  %73 = call %struct.TYPE_23__* @BloomPageGetTuple(%struct.TYPE_24__* %14, i64 %71, i32 %72)
  store %struct.TYPE_23__* %73, %struct.TYPE_23__** %20, align 8
  store %struct.TYPE_23__* %73, %struct.TYPE_23__** %19, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* %16, align 8
  %76 = call i64 @BloomPageGetMaxOffset(i64 %75)
  %77 = call i32 @OffsetNumberNext(i64 %76)
  %78 = call %struct.TYPE_23__* @BloomPageGetTuple(%struct.TYPE_24__* %14, i64 %74, i32 %77)
  store %struct.TYPE_23__* %78, %struct.TYPE_23__** %21, align 8
  br label %79

79:                                               ; preds = %115, %70
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %82 = icmp ult %struct.TYPE_23__* %80, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %79
  %84 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %7, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i8*, i8** %8, align 8
  %88 = call i64 %84(i32* %86, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load i64, i64* %16, align 8
  %92 = call %struct.TYPE_19__* @BloomPageGetOpaque(i64 %91)
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %115

100:                                              ; preds = %83
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %103 = icmp ne %struct.TYPE_23__* %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %106 = ptrtoint %struct.TYPE_23__* %105 to i64
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %108 = ptrtoint %struct.TYPE_23__* %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @memmove(i64 %106, i64 %108, i32 %110)
  br label %112

112:                                              ; preds = %104, %100
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %114 = call %struct.TYPE_23__* @BloomPageGetNextTuple(%struct.TYPE_24__* %14, %struct.TYPE_23__* %113)
  store %struct.TYPE_23__* %114, %struct.TYPE_23__** %20, align 8
  br label %115

115:                                              ; preds = %112, %90
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %117 = call %struct.TYPE_23__* @BloomPageGetNextTuple(%struct.TYPE_24__* %14, %struct.TYPE_23__* %116)
  store %struct.TYPE_23__* %117, %struct.TYPE_23__** %19, align 8
  br label %79

118:                                              ; preds = %79
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %16, align 8
  %122 = call i64 @BloomPageGetMaxOffset(i64 %121)
  %123 = call i32 @OffsetNumberNext(i64 %122)
  %124 = call %struct.TYPE_23__* @BloomPageGetTuple(%struct.TYPE_24__* %14, i64 %120, i32 %123)
  %125 = icmp eq %struct.TYPE_23__* %119, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @Assert(i32 %126)
  %128 = load i64, i64* %16, align 8
  %129 = call i64 @BloomPageGetMaxOffset(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %118
  %132 = load i64, i64* %16, align 8
  %133 = call i32 @BloomPageGetFreeSpace(%struct.TYPE_24__* %14, i64 %132)
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp sge i32 %133, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %131
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @BloomMetaBlockN, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i64, i64* %10, align 8
  %143 = load i64*, i64** %12, align 8
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  store i64 %142, i64* %147, align 8
  br label %148

148:                                              ; preds = %141, %137, %131, %118
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %151 = icmp ne %struct.TYPE_23__* %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %148
  %153 = load i64, i64* %16, align 8
  %154 = call i64 @BloomPageGetMaxOffset(i64 %153)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i64, i64* %16, align 8
  %158 = call i32 @BloomPageSetDeleted(i64 %157)
  br label %159

159:                                              ; preds = %156, %152
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %161 = ptrtoint %struct.TYPE_23__* %160 to i64
  %162 = load i64, i64* %16, align 8
  %163 = sub nsw i64 %161, %162
  %164 = load i64, i64* %16, align 8
  %165 = inttoptr i64 %164 to %struct.TYPE_20__*
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  store i64 %163, i64* %166, align 8
  %167 = load i32*, i32** %18, align 8
  %168 = call i32 @GenericXLogFinish(i32* %167)
  br label %172

169:                                              ; preds = %148
  %170 = load i32*, i32** %18, align 8
  %171 = call i32 @GenericXLogAbort(i32* %170)
  br label %172

172:                                              ; preds = %169, %159
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @UnlockReleaseBuffer(i32 %173)
  br label %175

175:                                              ; preds = %172, %65
  %176 = load i64, i64* %10, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %10, align 8
  br label %36

178:                                              ; preds = %36
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @BLOOM_METAPAGE_BLKNO, align 4
  %181 = call i32 @ReadBuffer(i32 %179, i32 %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %184 = call i32 @LockBuffer(i32 %182, i32 %183)
  %185 = load i32, i32* %9, align 4
  %186 = call i32* @GenericXLogStart(i32 %185)
  store i32* %186, i32** %18, align 8
  %187 = load i32*, i32** %18, align 8
  %188 = load i32, i32* %15, align 4
  %189 = call i64 @GenericXLogRegisterBuffer(i32* %187, i32 %188, i32 0)
  store i64 %189, i64* %16, align 8
  %190 = load i64, i64* %16, align 8
  %191 = call %struct.TYPE_25__* @BloomPageGetMeta(i64 %190)
  store %struct.TYPE_25__* %191, %struct.TYPE_25__** %17, align 8
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i64*, i64** %12, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = mul i64 8, %197
  %199 = trunc i64 %198 to i32
  %200 = call i32 @memcpy(i32 %194, i64* %195, i32 %199)
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 1
  store i64 0, i64* %202, align 8
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load i32*, i32** %18, align 8
  %207 = call i32 @GenericXLogFinish(i32* %206)
  %208 = load i32, i32* %15, align 4
  %209 = call i32 @UnlockReleaseBuffer(i32 %208)
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  ret %struct.TYPE_22__* %210
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @initBloomState(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @vacuum_delay_point(...) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32* @GenericXLogStart(i32) #1

declare dso_local i64 @GenericXLogRegisterBuffer(i32*, i32, i32) #1

declare dso_local i64 @PageIsNew(i64) #1

declare dso_local i64 @BloomPageIsDeleted(i64) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @GenericXLogAbort(i32*) #1

declare dso_local %struct.TYPE_23__* @BloomPageGetTuple(%struct.TYPE_24__*, i64, i32) #1

declare dso_local i32 @OffsetNumberNext(i64) #1

declare dso_local i64 @BloomPageGetMaxOffset(i64) #1

declare dso_local %struct.TYPE_19__* @BloomPageGetOpaque(i64) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local %struct.TYPE_23__* @BloomPageGetNextTuple(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BloomPageGetFreeSpace(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @BloomPageSetDeleted(i64) #1

declare dso_local i32 @GenericXLogFinish(i32*) #1

declare dso_local i32 @ReadBuffer(i32, i32) #1

declare dso_local %struct.TYPE_25__* @BloomPageGetMeta(i64) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
