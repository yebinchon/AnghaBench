; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_AddTextButton.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_AddTextButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_STRING_LEN = common dso_local global i32 0, align 4
@WC_BUTTONW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@REBARBANDINFOW_V6_SIZE = common dso_local global i32 0, align 4
@RBBIM_SIZE = common dso_local global i32 0, align 4
@RBBIM_CHILDSIZE = common dso_local global i32 0, align 4
@RBBIM_STYLE = common dso_local global i32 0, align 4
@RBBIM_CHILD = common dso_local global i32 0, align 4
@RBBIM_IDEALSIZE = common dso_local global i32 0, align 4
@RBBIM_ID = common dso_local global i32 0, align 4
@RBBS_NOGRIPPER = common dso_local global i32 0, align 4
@RBBS_VARIABLEHEIGHT = common dso_local global i32 0, align 4
@RB_INSERTBANDW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @AddTextButton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AddTextButton(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = call i32 @GetModuleHandleW(i32 0)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @MAX_STRING_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MAX_STRING_LEN, align 4
  %22 = call i32 @LoadStringW(i32 %19, i32 %20, i32* %18, i32 %21)
  %23 = load i32, i32* @WC_BUTTONW, align 4
  %24 = load i32, i32* @WS_VISIBLE, align 4
  %25 = load i32, i32* @WS_CHILD, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ULongToHandle(i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @CreateWindowW(i32 %23, i32* %18, i32 %26, i32 5, i32 5, i32 100, i32 15, i32 %27, i32 %29, i32 %30, i32* null)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* @REBARBANDINFOW_V6_SIZE, align 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 9
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @RBBIM_SIZE, align 4
  %35 = load i32, i32* @RBBIM_CHILDSIZE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RBBIM_STYLE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RBBIM_CHILD, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RBBIM_IDEALSIZE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @RBBIM_ID, align 4
  %44 = or i32 %42, %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @RBBS_NOGRIPPER, align 4
  %47 = load i32, i32* @RBBS_VARIABLEHEIGHT, align 4
  %48 = or i32 %46, %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %13, align 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 8
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  store i32 22, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 22, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  store i32 90, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  store i32 90, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 6
  store i32 100, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 7
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @RB_INSERTBANDW, align 4
  %61 = ptrtoint %struct.TYPE_2__* %9 to i32
  %62 = call i32 @SendMessageW(i32 %59, i32 %60, i32 -1, i32 %61)
  %63 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

declare dso_local i32 @GetModuleHandleW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @CreateWindowW(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ULongToHandle(i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
