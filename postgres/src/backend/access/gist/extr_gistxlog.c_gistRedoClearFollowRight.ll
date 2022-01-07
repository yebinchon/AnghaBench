; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistRedoClearFollowRight.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistRedoClearFollowRight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@BLK_RESTORED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @gistRedoClearFollowRight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistRedoClearFollowRight(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @XLogReadBufferForRedo(%struct.TYPE_4__* %12, i32 %13, i32* %6)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @BLK_RESTORED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @BufferGetPage(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @GistPageSetNSN(i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @GistClearFollowRight(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @PageSetLSN(i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @MarkBufferDirty(i32 %33)
  br label %35

35:                                               ; preds = %22, %18
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @BufferIsValid(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @UnlockReleaseBuffer(i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  ret void
}

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @GistPageSetNSN(i32, i32) #1

declare dso_local i32 @GistClearFollowRight(i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
