; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_write.c_cmd_write_init.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_write.c_cmd_write_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@w = common dso_local global i32 0, align 4
@wa = common dso_local global i32 0, align 4
@wA = common dso_local global i32 0, align 4
@wc = common dso_local global i32 0, align 4
@we = common dso_local global i32 0, align 4
@wo = common dso_local global i32 0, align 4
@wop = common dso_local global i32 0, align 4
@wp = common dso_local global i32 0, align 4
@wt = common dso_local global i32 0, align 4
@wv = common dso_local global i32 0, align 4
@wx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @cmd_write_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_write_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @w, align 4
  %5 = call i32 @DEFINE_CMD_DESCRIPTOR(i32* %3, i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @wa, align 4
  %8 = call i32 @DEFINE_CMD_DESCRIPTOR(i32* %6, i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @wA, align 4
  %11 = call i32 @DEFINE_CMD_DESCRIPTOR(i32* %9, i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @wc, align 4
  %14 = call i32 @DEFINE_CMD_DESCRIPTOR(i32* %12, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @we, align 4
  %17 = call i32 @DEFINE_CMD_DESCRIPTOR(i32* %15, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @wo, align 4
  %20 = call i32 @DEFINE_CMD_DESCRIPTOR(i32* %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @wop, align 4
  %23 = call i32 @DEFINE_CMD_DESCRIPTOR(i32* %21, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @wp, align 4
  %26 = call i32 @DEFINE_CMD_DESCRIPTOR(i32* %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @wt, align 4
  %29 = call i32 @DEFINE_CMD_DESCRIPTOR(i32* %27, i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @wv, align 4
  %32 = call i32 @DEFINE_CMD_DESCRIPTOR(i32* %30, i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @wx, align 4
  %35 = call i32 @DEFINE_CMD_DESCRIPTOR(i32* %33, i32 %34)
  ret void
}

declare dso_local i32 @DEFINE_CMD_DESCRIPTOR(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
