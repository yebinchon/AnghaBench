; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_ShowMCIError.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_ShowMCIError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_MCISTR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@hInstance = common dso_local global i32 0, align 4
@IDS_DEFAULTMCIERRMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"MMSYS%lu: %s\00", align 1
@szAppTitle = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONEXCLAMATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ShowMCIError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShowMCIError(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @MAX_MCISTR, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* @MAX_MCISTR, align 4
  %14 = add nsw i32 %13, 44
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ARRAYSIZE(i32* %12)
  %19 = call i64 @mciGetErrorString(i32 %17, i32* %12, i32 %18)
  %20 = load i64, i64* @FALSE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @hInstance, align 4
  %24 = load i32, i32* @IDS_DEFAULTMCIERRMSG, align 4
  %25 = call i32 @ARRAYSIZE(i32* %12)
  %26 = call i32 @LoadString(i32 %23, i32 %24, i32* %12, i32 %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = mul nuw i64 4, %15
  %29 = trunc i64 %28 to i32
  %30 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @StringCbPrintf(i32* %16, i32 %29, i32 %30, i32 %31, i32* %12)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @szAppTitle, align 4
  %35 = load i32, i32* @MB_OK, align 4
  %36 = load i32, i32* @MB_ICONEXCLAMATION, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @MessageBox(i32 %33, i32* %16, i32 %34, i32 %37)
  %39 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mciGetErrorString(i32, i32*, i32) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @LoadString(i32, i32, i32*, i32) #2

declare dso_local i32 @StringCbPrintf(i32*, i32, i32, i32, i32*) #2

declare dso_local i32 @_T(i8*) #2

declare dso_local i32 @MessageBox(i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
