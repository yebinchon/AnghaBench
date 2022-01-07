; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_dialog.c_AlertFileNotSaved.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_dialog.c_AlertFileNotSaved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAX_STRING_LEN = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@STRING_UNTITLED = common dso_local global i32 0, align 4
@STRING_NOTSAVED = common dso_local global i32 0, align 4
@MB_ICONQUESTION = common dso_local global i32 0, align 4
@MB_YESNOCANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @AlertFileNotSaved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AlertFileNotSaved(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %5 = load i32, i32* @MAX_STRING_LEN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i64, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 1), align 4
  %10 = load i32, i32* @STRING_UNTITLED, align 4
  %11 = call i32 @ARRAY_SIZE(i64* %8)
  %12 = call i32 @LoadString(i32 %9, i32 %10, i64* %8, i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %14 = load i32, i32* @STRING_NOTSAVED, align 4
  %15 = load i64*, i64** %2, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64*, i64** %2, align 8
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i64* [ %20, %19 ], [ %8, %21 ]
  %24 = load i32, i32* @MB_ICONQUESTION, align 4
  %25 = load i32, i32* @MB_YESNOCANCEL, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @DIALOG_StringMsgBox(i32 %13, i32 %14, i64* %23, i32 %26)
  %28 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %28)
  ret i32 %27
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LoadString(i32, i32, i64*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @DIALOG_StringMsgBox(i32, i32, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
