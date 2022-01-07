; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_MailboxWrite.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_MailboxWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DSL_DEV_MEI_ERR_SUCCESS = common dso_local global i32 0, align 4
@MEI_TO_ARC_MAILBOX = common dso_local global i32 0, align 4
@MEI_TO_ARC_MAILBOXR = common dso_local global i32 0, align 4
@ME_ME2ARC_INT = common dso_local global i64 0, align 8
@MEI_TO_ARC_MSGAV = common dso_local global i32 0, align 4
@WHILE_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c">>> Timeout waiting for ARC to clear MEI_TO_ARC_MSGAV!!! MEI_TO_ARC message size = %d DWORDs <<<\0A\00", align 1
@DSL_DEV_MEI_ERR_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @IFX_MEI_MailboxWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IFX_MEI_MailboxWrite(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @MEI_TO_ARC_MAILBOX, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sdiv i32 %15, 2
  %17 = call i32 @IFX_MEI_DMAWrite(i32* %12, i32 %13, i32* %14, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @MEI_TO_ARC_MAILBOXR, align 4
  %20 = call i32 @IFX_MEI_DMAWrite(i32* %18, i32 %19, i32* %9, i32 1)
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.TYPE_2__* @DSL_DEV_PRIVATE(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* @ME_ME2ARC_INT, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @MEI_TO_ARC_MSGAV, align 4
  %28 = call i32 @IFX_MEI_LongWordWriteOffset(i32* %24, i32 %26, i32 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %55, %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @WHILE_DELAY, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* @ME_ME2ARC_INT, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @IFX_MEI_LongWordReadOffset(i32* %34, i32 %36, i32* %8)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MEI_TO_ARC_MSGAV, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @MEI_TO_ARC_MSGAV, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %56

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @WHILE_DELAY, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = sdiv i32 %51, 2
  %53 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @DSL_DEV_MEI_ERR_FAILURE, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %50, %44
  br label %29

56:                                               ; preds = %43, %29
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

declare dso_local i32 @IFX_MEI_DMAWrite(i32*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @DSL_DEV_PRIVATE(i32*) #1

declare dso_local i32 @IFX_MEI_LongWordWriteOffset(i32*, i32, i32) #1

declare dso_local i32 @IFX_MEI_LongWordReadOffset(i32*, i32, i32*) #1

declare dso_local i32 @IFX_MEI_EMSG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
