; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_create_tmp_file.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_create_tmp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_tmpfpath = common dso_local global i64 0, align 8
@g_tmpfplen = common dso_local global i64 0, align 8
@messages = common dso_local global i32* null, align 8
@STR_TMPFILE = common dso_local global i64 0, align 8
@TMP_LEN_MAX = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_tmp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_tmp_file() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @g_tmpfpath, align 8
  %3 = load i64, i64* @g_tmpfplen, align 8
  %4 = add nsw i64 %2, %3
  %5 = sub nsw i64 %4, 1
  %6 = load i32*, i32** @messages, align 8
  %7 = load i64, i64* @STR_TMPFILE, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* @TMP_LEN_MAX, align 8
  %11 = load i64, i64* @g_tmpfplen, align 8
  %12 = sub nsw i64 %10, %11
  %13 = call i32 @xstrlcpy(i64 %5, i32 %9, i64 %12)
  %14 = load i64, i64* @g_tmpfpath, align 8
  %15 = call i32 @mkstemp(i64 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 @DPRINTF_S(i32 %20)
  br label %22

22:                                               ; preds = %18, %0
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @xstrlcpy(i64, i32, i64) #1

declare dso_local i32 @mkstemp(i64) #1

declare dso_local i32 @DPRINTF_S(i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
