; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_xmdlg.c_encoding_part.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_xmdlg.c_encoding_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEMP_BUF_SIZE = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @encoding_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encoding_part(i8* %0, i8* %1) #0 {
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
  %15 = load i8*, i8** %4, align 8
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @get_part(i8* %16, i32 13, i8* %11)
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @get_part(i8* %18, i32 14, i8* %14)
  %20 = load i8, i8* %11, align 16
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* @NUL, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load i8, i8* %14, align 16
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @NUL, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @TEMP_BUF_SIZE, align 4
  %34 = call i32 @vim_snprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %14)
  br label %35

35:                                               ; preds = %31, %25, %2
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strcpy(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %43)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_part(i8*, i32, i8*) #2

declare dso_local i32 @vim_snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
