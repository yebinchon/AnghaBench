; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_listselfile.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_listselfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@g_selpath = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@g_buf = common dso_local global i32 0, align 4
@CMD_LEN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cat %s | tr '\\0' '\\n'\00", align 1
@utils = common dso_local global i32* null, align 8
@SH_EXEC = common dso_local global i64 0, align 8
@F_CLI = common dso_local global i32 0, align 4
@F_CONFIRM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @listselfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listselfile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 4
  %3 = load i8*, i8** @g_selpath, align 8
  %4 = call i32 @stat(i8* %3, %struct.stat* %2)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %1, align 4
  br label %29

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %1, align 4
  br label %29

14:                                               ; preds = %8
  %15 = load i32, i32* @g_buf, align 4
  %16 = load i32, i32* @CMD_LEN_MAX, align 4
  %17 = load i8*, i8** @g_selpath, align 8
  %18 = call i32 @snprintf(i32 %15, i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** @utils, align 8
  %20 = load i64, i64* @SH_EXEC, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @g_buf, align 4
  %24 = load i32, i32* @F_CLI, align 4
  %25 = load i32, i32* @F_CONFIRM, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @spawn(i32 %22, i32 %23, i32* null, i32* null, i32 %26)
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %14, %12, %6
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @spawn(i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
