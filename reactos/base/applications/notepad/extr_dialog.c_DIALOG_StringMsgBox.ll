; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_dialog.c_DIALOG_StringMsgBox.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_dialog.c_DIALOG_StringMsgBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAX_STRING_LEN = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MB_ICONMASK = common dso_local global i32 0, align 4
@MB_ICONEXCLAMATION = common dso_local global i32 0, align 4
@STRING_ERROR = common dso_local global i32 0, align 4
@STRING_NOTEPAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DIALOG_StringMsgBox(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @MAX_STRING_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @MAX_STRING_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ARRAY_SIZE(i32* %18)
  %22 = call i32 @LoadString(i32 %19, i32 %20, i32* %18, i32 %21)
  %23 = call i32 @ARRAY_SIZE(i32* %15)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @_sntprintf(i32* %15, i32 %23, i32* %18, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MB_ICONMASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @MB_ICONEXCLAMATION, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %33 = load i32, i32* @STRING_ERROR, align 4
  %34 = call i32 @ARRAY_SIZE(i32* %18)
  %35 = call i32 @LoadString(i32 %32, i32 %33, i32* %18, i32 %34)
  br label %41

36:                                               ; preds = %4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %38 = load i32, i32* @STRING_NOTEPAD, align 4
  %39 = call i32 @ARRAY_SIZE(i32* %18)
  %40 = call i32 @LoadString(i32 %37, i32 %38, i32* %18, i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @MessageBox(i32 %42, i32* %15, i32* %18, i32 %43)
  %45 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %45)
  ret i32 %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LoadString(i32, i32, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @_sntprintf(i32*, i32, i32*, i32) #2

declare dso_local i32 @MessageBox(i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
