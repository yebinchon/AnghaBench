; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstattuple.c_pgstat_gist_page.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstattuple.c_pgstat_gist_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@GIST_SHARE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @pgstat_gist_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgstat_gist_page(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MAIN_FORKNUM, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @RBM_NORMAL, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @ReadBufferExtended(i32 %11, i32 %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @GIST_SHARE, align 4
  %19 = call i32 @LockBuffer(i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @gistcheckpage(i32 %20, i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @BufferGetPage(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @GistPageIsLeaf(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @FirstOffsetNumber, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @PageGetMaxOffsetNumber(i32 %32)
  %34 = call i32 @pgstat_index_page(i32* %29, i32 %30, i32 %31, i32 %33)
  br label %36

35:                                               ; preds = %4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @UnlockReleaseBuffer(i32 %37)
  ret void
}

declare dso_local i32 @ReadBufferExtended(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @gistcheckpage(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @GistPageIsLeaf(i32) #1

declare dso_local i32 @pgstat_index_page(i32*, i32, i32, i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
