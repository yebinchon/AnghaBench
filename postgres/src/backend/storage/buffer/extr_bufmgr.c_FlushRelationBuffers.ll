; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_FlushRelationBuffers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_FlushRelationBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_20__*, i8*, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@NLocBuffer = common dso_local global i32 0, align 4
@BM_VALID = common dso_local global i32 0, align 4
@BM_DIRTY = common dso_local global i32 0, align 4
@local_buffer_write_error_callback = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global %struct.TYPE_20__* null, align 8
@BM_JUST_DIRTIED = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@NBuffers = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FlushRelationBuffers(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %10 = call i32 @RelationOpenSmgr(%struct.TYPE_19__* %9)
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = call i64 @RelationUsesLocalBuffers(%struct.TYPE_19__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %90

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %86, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @NLocBuffer, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %89

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.TYPE_21__* @GetLocalBufferDescriptor(i32 %20)
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %4, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @RelFileNodeEquals(i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %85

31:                                               ; preds = %19
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  %34 = call i32 @pg_atomic_read_u32(i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @BM_VALID, align 4
  %36 = load i32, i32* @BM_DIRTY, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = load i32, i32* @BM_VALID, align 4
  %40 = load i32, i32* @BM_DIRTY, align 4
  %41 = or i32 %39, %40
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %31
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = call i64 @LocalBufHdrGetBlock(%struct.TYPE_21__* %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %7, align 8
  %47 = load i32, i32* @local_buffer_write_error_callback, align 4
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = bitcast %struct.TYPE_21__* %49 to i8*
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** @error_context_stack, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store %struct.TYPE_20__* %52, %struct.TYPE_20__** %53, align 8
  store %struct.TYPE_20__* %6, %struct.TYPE_20__** @error_context_stack, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PageSetChecksumInplace(i8* %54, i32 %58)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @smgrwrite(i32 %62, i32 %66, i32 %70, i8* %71, i32 0)
  %73 = load i32, i32* @BM_DIRTY, align 4
  %74 = load i32, i32* @BM_JUST_DIRTIED, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @pg_atomic_unlocked_write_u32(i32* %80, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  store %struct.TYPE_20__* %84, %struct.TYPE_20__** @error_context_stack, align 8
  br label %85

85:                                               ; preds = %43, %31, %19
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %15

89:                                               ; preds = %15
  br label %158

90:                                               ; preds = %1
  %91 = load i32, i32* @CurrentResourceOwner, align 4
  %92 = call i32 @ResourceOwnerEnlargeBuffers(i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %155, %90
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @NBuffers, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %158

97:                                               ; preds = %93
  %98 = load i32, i32* %3, align 4
  %99 = call %struct.TYPE_21__* @GetBufferDescriptor(i32 %98)
  store %struct.TYPE_21__* %99, %struct.TYPE_21__** %4, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @RelFileNodeEquals(i32 %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %97
  br label %155

110:                                              ; preds = %97
  %111 = call i32 (...) @ReservePrivateRefCountEntry()
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %113 = call i32 @LockBufHdr(%struct.TYPE_21__* %112)
  store i32 %113, i32* %8, align 4
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @RelFileNodeEquals(i32 %117, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %110
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @BM_VALID, align 4
  %126 = load i32, i32* @BM_DIRTY, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = load i32, i32* @BM_VALID, align 4
  %130 = load i32, i32* @BM_DIRTY, align 4
  %131 = or i32 %129, %130
  %132 = icmp eq i32 %128, %131
  br i1 %132, label %133, label %150

133:                                              ; preds = %123
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %135 = call i32 @PinBuffer_Locked(%struct.TYPE_21__* %134)
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %137 = call i32 @BufferDescriptorGetContentLock(%struct.TYPE_21__* %136)
  %138 = load i32, i32* @LW_SHARED, align 4
  %139 = call i32 @LWLockAcquire(i32 %137, i32 %138)
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @FlushBuffer(%struct.TYPE_21__* %140, i32 %143)
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %146 = call i32 @BufferDescriptorGetContentLock(%struct.TYPE_21__* %145)
  %147 = call i32 @LWLockRelease(i32 %146)
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %149 = call i32 @UnpinBuffer(%struct.TYPE_21__* %148, i32 1)
  br label %154

150:                                              ; preds = %123, %110
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @UnlockBufHdr(%struct.TYPE_21__* %151, i32 %152)
  br label %154

154:                                              ; preds = %150, %133
  br label %155

155:                                              ; preds = %154, %109
  %156 = load i32, i32* %3, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %3, align 4
  br label %93

158:                                              ; preds = %89, %93
  ret void
}

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_19__*) #1

declare dso_local i64 @RelationUsesLocalBuffers(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_21__* @GetLocalBufferDescriptor(i32) #1

declare dso_local i64 @RelFileNodeEquals(i32, i32) #1

declare dso_local i32 @pg_atomic_read_u32(i32*) #1

declare dso_local i64 @LocalBufHdrGetBlock(%struct.TYPE_21__*) #1

declare dso_local i32 @PageSetChecksumInplace(i8*, i32) #1

declare dso_local i32 @smgrwrite(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @pg_atomic_unlocked_write_u32(i32*, i32) #1

declare dso_local i32 @ResourceOwnerEnlargeBuffers(i32) #1

declare dso_local %struct.TYPE_21__* @GetBufferDescriptor(i32) #1

declare dso_local i32 @ReservePrivateRefCountEntry(...) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_21__*) #1

declare dso_local i32 @PinBuffer_Locked(%struct.TYPE_21__*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @BufferDescriptorGetContentLock(%struct.TYPE_21__*) #1

declare dso_local i32 @FlushBuffer(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @UnpinBuffer(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
