; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_log_newpage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_log_newpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REGBUF_FORCE_IMAGE = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_XLOG_ID = common dso_local global i32 0, align 4
@XLOG_FPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_newpage(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @REGBUF_FORCE_IMAGE, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i32, i32* @REGBUF_STANDARD, align 4
  %18 = load i32, i32* %11, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %16, %5
  %21 = call i32 (...) @XLogBeginInsert()
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @XLogRegisterBlock(i32 0, i32* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @RM_XLOG_ID, align 4
  %29 = load i32, i32* @XLOG_FPI, align 4
  %30 = call i32 @XLogInsert(i32 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @PageIsNew(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @PageSetLSN(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %20
  %39 = load i32, i32* %12, align 4
  ret i32 %39
}

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterBlock(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageIsNew(i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
