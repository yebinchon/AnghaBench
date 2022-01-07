; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_log_newpage_range.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_log_newpage_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLR_MAX_BLOCK_ID = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@REGBUF_FORCE_IMAGE = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_XLOG_ID = common dso_local global i32 0, align 4
@XLOG_FPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_newpage_range(i32 %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* @XLR_MAX_BLOCK_ID, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @XLogEnsureRecordSpace(i32 %19, i32 0)
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %11, align 8
  br label %22

22:                                               ; preds = %114, %5
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %117

26:                                               ; preds = %22
  %27 = load i32, i32* @XLR_MAX_BLOCK_ID, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %12, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  %31 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %62, %26
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @XLR_MAX_BLOCK_ID, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %65

42:                                               ; preds = %40
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @ReadBuffer(i32 %43, i64 %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %48 = call i32 @LockBuffer(i32 %46, i32 %47)
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @BufferGetPage(i32 %49)
  %51 = call i32 @PageIsNew(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %15, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %30, i64 %57
  store i32 %54, i32* %58, align 4
  br label %62

59:                                               ; preds = %42
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @UnlockReleaseBuffer(i32 %60)
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i64, i64* %11, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %11, align 8
  br label %32

65:                                               ; preds = %40
  %66 = call i32 (...) @XLogBeginInsert()
  %67 = call i32 (...) @START_CRIT_SECTION()
  store i32 0, i32* %16, align 4
  br label %68

68:                                               ; preds = %87, %65
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %30, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @REGBUF_FORCE_IMAGE, align 4
  %79 = load i32, i32* @REGBUF_STANDARD, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @XLogRegisterBuffer(i32 %73, i32 %77, i32 %80)
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %30, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @MarkBufferDirty(i32 %85)
  br label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %68

90:                                               ; preds = %68
  %91 = load i32, i32* @RM_XLOG_ID, align 4
  %92 = load i32, i32* @XLOG_FPI, align 4
  %93 = call i32 @XLogInsert(i32 %91, i32 %92)
  store i32 %93, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %111, %90
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %30, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @BufferGetPage(i32 %102)
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @PageSetLSN(i32 %103, i32 %104)
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %30, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @UnlockReleaseBuffer(i32 %109)
  br label %111

111:                                              ; preds = %98
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %94

114:                                              ; preds = %94
  %115 = call i32 (...) @END_CRIT_SECTION()
  %116 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %116)
  br label %22

117:                                              ; preds = %22
  ret void
}

declare dso_local i32 @XLogEnsureRecordSpace(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @PageIsNew(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
