; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_xmdlg.c_name_part.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_xmdlg.c_name_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEMP_BUF_SIZE = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @name_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @name_part(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @TEMP_BUF_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* @TEMP_BUF_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @get_part(i8* %15, i32 2, i8* %11)
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @get_part(i8* %17, i32 1, i8* %14)
  %19 = load i8, i8* %14, align 16
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @NUL, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @TEMP_BUF_SIZE, align 4
  %27 = call i32 (i8*, i32, i8*, i8*, ...) @vim_snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %14)
  br label %32

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @TEMP_BUF_SIZE, align 4
  %31 = call i32 (i8*, i32, i8*, i8*, ...) @vim_snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %33)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_part(i8*, i32, i8*) #2

declare dso_local i32 @vim_snprintf(i8*, i32, i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
