; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_set_tmp_path.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_set_tmp_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@g_tmpfpath = common dso_local global i32 0, align 4
@TMP_LEN_MAX = common dso_local global i32 0, align 4
@g_tmpfplen = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"set TMPDIR\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @set_tmp_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tmp_path() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = call i64 @xdiraccess(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @g_tmpfpath, align 4
  %7 = load i32, i32* @TMP_LEN_MAX, align 4
  %8 = call i64 @xstrlcpy(i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i64 %8, i64* @g_tmpfplen, align 8
  br label %23

9:                                                ; preds = %0
  %10 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %10, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* @g_tmpfpath, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* @TMP_LEN_MAX, align 4
  %17 = call i64 @xstrlcpy(i32 %14, i8* %15, i32 %16)
  store i64 %17, i64* @g_tmpfplen, align 8
  br label %22

18:                                               ; preds = %9
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %1, align 4
  br label %25

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %5
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i64 @xdiraccess(i8*) #1

declare dso_local i64 @xstrlcpy(i32, i8*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
