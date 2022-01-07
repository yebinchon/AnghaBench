; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_selsafe.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_selsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_selpath = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"selection file not found\00", align 1
@FALSE = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@messages = common dso_local global i8** null, align 8
@NONE_SELECTED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @selsafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selsafe() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @g_selpath, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call i32 @printmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %1, align 4
  br label %31

7:                                                ; preds = %0
  %8 = load i32, i32* @g_selpath, align 4
  %9 = load i32, i32* @R_OK, align 4
  %10 = load i32, i32* @W_OK, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @access(i32 %8, i32 %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %29

14:                                               ; preds = %7
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @ENOENT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i8**, i8*** @messages, align 8
  %20 = load i64, i64* @NONE_SELECTED, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @printmsg(i8* %22)
  br label %26

24:                                               ; preds = %14
  %25 = call i32 @printwarn(i32* null)
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i32 [ %23, %18 ], [ %25, %24 ]
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %1, align 4
  br label %31

29:                                               ; preds = %7
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %29, %26, %4
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @printmsg(i8*) #1

declare dso_local i32 @access(i32, i32) #1

declare dso_local i32 @printwarn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
