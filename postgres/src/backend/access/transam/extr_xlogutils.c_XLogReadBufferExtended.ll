; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogutils.c_XLogReadBufferExtended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogutils.c_XLogReadBufferExtended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P_NEW = common dso_local global i64 0, align 8
@InvalidBackendId = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i64 0, align 8
@InvalidBuffer = common dso_local global i64 0, align 8
@RBM_NORMAL_NO_LOG = common dso_local global i64 0, align 8
@InRecovery = common dso_local global i32 0, align 4
@RBM_ZERO_AND_LOCK = common dso_local global i64 0, align 8
@RBM_ZERO_AND_CLEANUP_LOCK = common dso_local global i64 0, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XLogReadBufferExtended(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @P_NEW, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @InvalidBackendId, align 4
  %21 = call i32 @smgropen(i32 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @smgrcreate(i32 %22, i32 %23, i32 1)
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @smgrnblocks(i32 %25, i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @ReadBufferWithoutRelcache(i32 %32, i32 %33, i64 %34, i64 %35, i32* null)
  store i64 %36, i64* %11, align 8
  br label %113

37:                                               ; preds = %4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @RBM_NORMAL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @log_invalid_page(i32 %42, i32 %43, i64 %44, i32 0)
  %46 = load i64, i64* @InvalidBuffer, align 8
  store i64 %46, i64* %5, align 8
  br label %134

47:                                               ; preds = %37
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @RBM_NORMAL_NO_LOG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @InvalidBuffer, align 8
  store i64 %52, i64* %5, align 8
  br label %134

53:                                               ; preds = %47
  %54 = load i32, i32* @InRecovery, align 4
  %55 = call i32 @Assert(i32 %54)
  %56 = load i64, i64* @InvalidBuffer, align 8
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %82, %53
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @InvalidBuffer, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @RBM_ZERO_AND_LOCK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @RBM_ZERO_AND_CLEANUP_LOCK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65, %61
  %70 = load i64, i64* %11, align 8
  %71 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %72 = call i32 @LockBuffer(i64 %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @ReleaseBuffer(i64 %74)
  br label %76

76:                                               ; preds = %73, %57
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i64, i64* @P_NEW, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @ReadBufferWithoutRelcache(i32 %77, i32 %78, i64 %79, i64 %80, i32* null)
  store i64 %81, i64* %11, align 8
  br label %82

82:                                               ; preds = %76
  %83 = load i64, i64* %11, align 8
  %84 = call i64 @BufferGetBlockNumber(i64 %83)
  %85 = load i64, i64* %8, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %57, label %87

87:                                               ; preds = %82
  %88 = load i64, i64* %11, align 8
  %89 = call i64 @BufferGetBlockNumber(i64 %88)
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %87
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* @RBM_ZERO_AND_LOCK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @RBM_ZERO_AND_CLEANUP_LOCK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96, %92
  %101 = load i64, i64* %11, align 8
  %102 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %103 = call i32 @LockBuffer(i64 %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @ReleaseBuffer(i64 %105)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i64 @ReadBufferWithoutRelcache(i32 %107, i32 %108, i64 %109, i64 %110, i32* null)
  store i64 %111, i64* %11, align 8
  br label %112

112:                                              ; preds = %104, %87
  br label %113

113:                                              ; preds = %112, %31
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* @RBM_NORMAL, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %113
  %118 = load i64, i64* %11, align 8
  %119 = call i32 @BufferGetPage(i64 %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i64 @PageIsNew(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @ReleaseBuffer(i64 %124)
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @log_invalid_page(i32 %126, i32 %127, i64 %128, i32 1)
  %130 = load i64, i64* @InvalidBuffer, align 8
  store i64 %130, i64* %5, align 8
  br label %134

131:                                              ; preds = %117
  br label %132

132:                                              ; preds = %131, %113
  %133 = load i64, i64* %11, align 8
  store i64 %133, i64* %5, align 8
  br label %134

134:                                              ; preds = %132, %123, %51, %41
  %135 = load i64, i64* %5, align 8
  ret i64 %135
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @smgropen(i32, i32) #1

declare dso_local i32 @smgrcreate(i32, i32, i32) #1

declare dso_local i64 @smgrnblocks(i32, i32) #1

declare dso_local i64 @ReadBufferWithoutRelcache(i32, i32, i64, i64, i32*) #1

declare dso_local i32 @log_invalid_page(i32, i32, i64, i32) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i32 @ReleaseBuffer(i64) #1

declare dso_local i64 @BufferGetBlockNumber(i64) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i64 @PageIsNew(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
