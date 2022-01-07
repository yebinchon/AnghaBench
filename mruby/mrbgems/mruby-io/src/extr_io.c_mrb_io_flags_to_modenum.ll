; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_flags_to_modenum.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_flags_to_modenum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@FMODE_APPEND = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@FMODE_TRUNC = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@FMODE_CREATE = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@FMODE_BINMODE = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_io_flags_to_modenum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_io_flags_to_modenum(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 131
  switch i32 %7, label %14 [
    i32 130, label %8
    i32 128, label %10
    i32 129, label %12
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @O_RDONLY, align 4
  store i32 %9, i32* %5, align 4
  br label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @O_WRONLY, align 4
  store i32 %11, i32* %5, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @O_RDWR, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %2, %12, %10, %8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @FMODE_APPEND, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @O_APPEND, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FMODE_TRUNC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @O_TRUNC, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @FMODE_CREATE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @O_CREAT, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
