; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, i32, i64*, i32, i32 }
%struct.TYPE_15__ = type { double, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot initialize non-empty hash index \22%s\22\00", align 1
@INIT_FORKNUM = common dso_local global i64 0, align 8
@HASH_DEFAULT_FILLFACTOR = common dso_local global i32 0, align 4
@HASHSTANDARD_PROC = common dso_local global i32 0, align 4
@HASH_METAPAGE = common dso_local global i64 0, align 8
@SizeOfHashInitMetaPage = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_HASH_ID = common dso_local global i32 0, align 4
@XLOG_HASH_INIT_META_PAGE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@LH_BUCKET_PAGE = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@HASH_MAX_BITMAPS = common dso_local global i64 0, align 8
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"out of overflow pages in hash index \22%s\22\00", align 1
@SizeOfHashInitBitmapPage = common dso_local global i32 0, align 4
@XLOG_HASH_INIT_BITMAP_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_hash_init(%struct.TYPE_17__* %0, double %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_15__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_16__, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store double %1, double* %5, align 8
  store i64 %2, i64* %6, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @RelationGetNumberOfBlocksInFork(%struct.TYPE_17__* %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* @ERROR, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = call i32 @RelationGetRelationName(%struct.TYPE_17__* %30)
  %32 = call i32 @elog(i32 %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = call i64 @RelationNeedsWAL(%struct.TYPE_17__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @INIT_FORKNUM, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ true, %33 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %18, align 4
  store i32 8, i32* %13, align 4
  %44 = call i32 @MAXALIGN(i32 4)
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @MAXALIGN(i32 %45)
  %47 = add nsw i32 %44, %46
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 4
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %14, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = load i32, i32* @HASH_DEFAULT_FILLFACTOR, align 4
  %53 = call i32 @RelationGetTargetPageUsage(%struct.TYPE_17__* %51, i32 %52)
  %54 = load i32, i32* %14, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 10
  br i1 %57, label %58, label %59

58:                                               ; preds = %41
  store i32 10, i32* %15, align 4
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = load i32, i32* @HASHSTANDARD_PROC, align 4
  %62 = call i32 @index_getprocid(%struct.TYPE_17__* %60, i32 1, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = load i64, i64* @HASH_METAPAGE, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @_hash_getnewbuf(%struct.TYPE_17__* %63, i64 %64, i64 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load double, double* %5, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @_hash_init_metabuffer(i32 %67, double %68, i32 %69, i32 %70, i32 0)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @MarkBufferDirty(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @BufferGetPage(i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call %struct.TYPE_18__* @HashPageGetMeta(i32 %76)
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %11, align 8
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %59
  %81 = load double, double* %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store double %81, double* %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  store i32 %85, i32* %86, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  store i32 %89, i32* %90, align 8
  %91 = call i32 (...) @XLogBeginInsert()
  %92 = bitcast %struct.TYPE_15__* %19 to i8*
  %93 = load i32, i32* @SizeOfHashInitMetaPage, align 4
  %94 = call i32 @XLogRegisterData(i8* %92, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %97 = load i32, i32* @REGBUF_STANDARD, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @XLogRegisterBuffer(i32 0, i32 %95, i32 %98)
  %100 = load i32, i32* @RM_HASH_ID, align 4
  %101 = load i32, i32* @XLOG_HASH_INIT_META_PAGE, align 4
  %102 = call i32 @XLogInsert(i32 %100, i32 %101)
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @BufferGetPage(i32 %103)
  %105 = load i32, i32* %20, align 4
  %106 = call i32 @PageSetLSN(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %80, %59
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %16, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %114 = call i32 @LockBuffer(i32 %112, i32 %113)
  store i64 0, i64* %17, align 8
  br label %115

115:                                              ; preds = %151, %107
  %116 = load i64, i64* %17, align 8
  %117 = load i64, i64* %16, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %154

119:                                              ; preds = %115
  %120 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %122 = load i64, i64* %17, align 8
  %123 = call i64 @BUCKET_TO_BLKNO(%struct.TYPE_18__* %121, i64 %122)
  store i64 %123, i64* %21, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %125 = load i64, i64* %21, align 8
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @_hash_getnewbuf(%struct.TYPE_17__* %124, i64 %125, i64 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %17, align 8
  %133 = load i32, i32* @LH_BUCKET_PAGE, align 4
  %134 = call i32 @_hash_initbuf(i32 %128, i64 %131, i64 %132, i32 %133, i32 0)
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @MarkBufferDirty(i32 %135)
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %119
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* %21, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @BufferGetPage(i32 %144)
  %146 = call i32 @log_newpage(i32* %141, i64 %142, i64 %143, i32 %145, i32 1)
  br label %147

147:                                              ; preds = %139, %119
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @_hash_relbuf(%struct.TYPE_17__* %148, i32 %149)
  br label %151

151:                                              ; preds = %147
  %152 = load i64, i64* %17, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %17, align 8
  br label %115

154:                                              ; preds = %115
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %157 = call i32 @LockBuffer(i32 %155, i32 %156)
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %159 = load i64, i64* %16, align 8
  %160 = add nsw i64 %159, 1
  %161 = load i64, i64* %6, align 8
  %162 = call i32 @_hash_getnewbuf(%struct.TYPE_17__* %158, i64 %160, i64 %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @_hash_initbitmapbuffer(i32 %163, i32 %166, i32 0)
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @MarkBufferDirty(i32 %168)
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @HASH_MAX_BITMAPS, align 8
  %174 = icmp uge i64 %172, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %154
  %176 = load i32, i32* @ERROR, align 4
  %177 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %178 = call i32 @errcode(i32 %177)
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %180 = call i32 @RelationGetRelationName(%struct.TYPE_17__* %179)
  %181 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %180)
  %182 = call i32 @ereport(i32 %176, i32 %181)
  br label %183

183:                                              ; preds = %175, %154
  %184 = load i64, i64* %16, align 8
  %185 = add nsw i64 %184, 1
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 3
  %188 = load i64*, i64** %187, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds i64, i64* %188, i64 %191
  store i64 %185, i64* %192, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %194, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @MarkBufferDirty(i32 %197)
  %199 = load i32, i32* %18, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %227

201:                                              ; preds = %183
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  store i32 %204, i32* %205, align 4
  %206 = call i32 (...) @XLogBeginInsert()
  %207 = bitcast %struct.TYPE_16__* %22 to i8*
  %208 = load i32, i32* @SizeOfHashInitBitmapPage, align 4
  %209 = call i32 @XLogRegisterData(i8* %207, i32 %208)
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %212 = call i32 @XLogRegisterBuffer(i32 0, i32 %210, i32 %211)
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* @REGBUF_STANDARD, align 4
  %215 = call i32 @XLogRegisterBuffer(i32 1, i32 %213, i32 %214)
  %216 = load i32, i32* @RM_HASH_ID, align 4
  %217 = load i32, i32* @XLOG_HASH_INIT_BITMAP_PAGE, align 4
  %218 = call i32 @XLogInsert(i32 %216, i32 %217)
  store i32 %218, i32* %23, align 4
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @BufferGetPage(i32 %219)
  %221 = load i32, i32* %23, align 4
  %222 = call i32 @PageSetLSN(i32 %220, i32 %221)
  %223 = load i32, i32* %7, align 4
  %224 = call i32 @BufferGetPage(i32 %223)
  %225 = load i32, i32* %23, align 4
  %226 = call i32 @PageSetLSN(i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %201, %183
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @_hash_relbuf(%struct.TYPE_17__* %228, i32 %229)
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @_hash_relbuf(%struct.TYPE_17__* %231, i32 %232)
  %234 = load i64, i64* %16, align 8
  ret i64 %234
}

declare dso_local i64 @RelationGetNumberOfBlocksInFork(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_17__*) #1

declare dso_local i64 @RelationNeedsWAL(%struct.TYPE_17__*) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @RelationGetTargetPageUsage(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @index_getprocid(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @_hash_getnewbuf(%struct.TYPE_17__*, i64, i64) #1

declare dso_local i32 @_hash_init_metabuffer(i32, double, i32, i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local %struct.TYPE_18__* @HashPageGetMeta(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @BUCKET_TO_BLKNO(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @_hash_initbuf(i32, i64, i64, i32, i32) #1

declare dso_local i32 @log_newpage(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @_hash_relbuf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @_hash_initbitmapbuffer(i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
