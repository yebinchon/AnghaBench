; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/progman/extr_dialog.c_DIALOG_BrowsePrograms.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/progman/extr_dialog.c_DIALOG_BrowsePrograms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STRING_LEN = common dso_local global i32 0, align 4
@IDS_PROGRAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i32] [i32 42, i32 46, i32 101, i32 120, i32 101, i32 59, i32 42, i32 46, i32 112, i32 105, i32 102, i32 59, i32 42, i32 46, i32 99, i32 111, i32 109, i32 59, i32 42, i32 46, i32 98, i32 97, i32 116, i32 59, i32 42, i32 46, i32 99, i32 109, i32 100, i32 0], align 4
@IDS_ALL_FILES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 42, i32 46, i32 42, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @DIALOG_BrowsePrograms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DIALOG_BrowsePrograms(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @MAX_STRING_LEN, align 4
  %11 = mul nsw i32 2, %10
  %12 = add nsw i32 %11, 100
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32, i32* @IDS_PROGRAMS, align 4
  %17 = call i32 @DIALOG_AddFilterItem(i32** %9, i32 %16, i8* bitcast ([30 x i32]* @.str to i8*))
  %18 = load i32, i32* @IDS_ALL_FILES, align 4
  %19 = call i32 @DIALOG_AddFilterItem(i32** %9, i32 %18, i8* bitcast ([4 x i32]* @.str.1 to i8*))
  %20 = load i32, i32* %4, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @DIALOG_Browse(i32 %20, i32* %15, i32* %21, i32 %22)
  %24 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %24)
  ret i32 %23
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DIALOG_AddFilterItem(i32**, i32, i8*) #2

declare dso_local i32 @DIALOG_Browse(i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
