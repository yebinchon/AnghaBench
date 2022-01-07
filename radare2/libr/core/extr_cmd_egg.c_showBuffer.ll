; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_egg.c_showBuffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_egg.c_showBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_BUF_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @showBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showBuffer(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @r_buf_size(i32* %7)
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @R_BUF_SET, align 4
  %13 = call i32 @r_buf_seek(i32* %11, i32 0, i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %23, %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @r_buf_size(i32* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @r_buf_read8(i32* %20)
  %22 = call i32 @r_cons_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %14

26:                                               ; preds = %14
  %27 = call i32 (...) @r_cons_newline()
  br label %28

28:                                               ; preds = %26, %6, %1
  ret void
}

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32 @r_buf_seek(i32*, i32, i32) #1

declare dso_local i32 @r_cons_printf(i8*, i32) #1

declare dso_local i32 @r_buf_read8(i32*) #1

declare dso_local i32 @r_cons_newline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
