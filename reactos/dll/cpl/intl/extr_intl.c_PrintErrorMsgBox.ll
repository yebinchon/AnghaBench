; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_intl.c_PrintErrorMsgBox.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_intl.c_PrintErrorMsgBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFFERSIZE = common dso_local global i32 0, align 4
@hApplet = common dso_local global i32 0, align 4
@IDS_ERROR = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PrintErrorMsgBox(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @BUFFERSIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* @BUFFERSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %14 = load i32, i32* @hApplet, align 4
  %15 = load i32, i32* %3, align 4
  %16 = mul nuw i64 4, %8
  %17 = udiv i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @LoadStringW(i32 %14, i32 %15, i32* %10, i32 %18)
  %20 = load i32, i32* @hApplet, align 4
  %21 = load i32, i32* @IDS_ERROR, align 4
  %22 = mul nuw i64 4, %12
  %23 = udiv i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i32 @LoadStringW(i32 %20, i32 %21, i32* %13, i32 %24)
  %26 = load i32, i32* @MB_OK, align 4
  %27 = load i32, i32* @MB_ICONERROR, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @MessageBoxW(i32* null, i32* %10, i32* %13, i32 %28)
  %30 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %30)
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #2

declare dso_local i32 @MessageBoxW(i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
