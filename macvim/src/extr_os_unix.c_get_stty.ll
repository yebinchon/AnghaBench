; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_unix.c_get_stty.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_unix.c_get_stty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgttyb = type { i32, i32, i32* }
%struct.termio = type { i32, i32, i32* }

@read_cmd_fd = common dso_local global i32 0, align 4
@TIOCGETP = common dso_local global i32 0, align 4
@intr_char = common dso_local global i32 0, align 4
@NUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"kb\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"kD\00", align 1
@TCGETA = common dso_local global i32 0, align 4
@VERASE = common dso_local global i64 0, align 8
@VINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_stty() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.sgttyb, align 8
  %4 = load i32, i32* @read_cmd_fd, align 4
  %5 = load i32, i32* @TIOCGETP, align 4
  %6 = bitcast %struct.sgttyb* %3 to %struct.termio*
  %7 = call i32 @ioctl(i32 %4, i32 %5, %struct.termio* %6)
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %40

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %3, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* @intr_char, align 4
  %15 = load i32, i32* @NUL, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @add_termcode(i32* bitcast ([3 x i8]* @.str to i32*), i32* %17, i32 %18)
  %20 = call i32* @find_termcode(i32* bitcast ([3 x i8]* @.str.1 to i32*))
  store i32* %20, i32** %2, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %9
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @do_fixdel(i32* null)
  br label %39

39:                                               ; preds = %37, %30, %23, %9
  br label %40

40:                                               ; preds = %39, %0
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.termio*) #1

declare dso_local i32 @add_termcode(i32*, i32*, i32) #1

declare dso_local i32* @find_termcode(i32*) #1

declare dso_local i32 @do_fixdel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
