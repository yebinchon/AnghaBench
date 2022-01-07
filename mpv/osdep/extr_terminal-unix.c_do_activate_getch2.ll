; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_terminal-unix.c_do_activate_getch2.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_terminal-unix.c_do_activate_getch2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32* }

@getch2_active = common dso_local global i32 0, align 4
@read_terminal = common dso_local global i32 0, align 4
@tty_in = common dso_local global i32 0, align 4
@tio_orig_set = common dso_local global i32 0, align 4
@tio_orig = common dso_local global %struct.termios zeroinitializer, align 8
@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_activate_getch2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_activate_getch2() #0 {
  %1 = alloca %struct.termios, align 8
  %2 = load i32, i32* @getch2_active, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @read_terminal, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %0
  br label %35

8:                                                ; preds = %4
  %9 = call i32 @enable_kx(i32 1)
  %10 = load i32, i32* @tty_in, align 4
  %11 = call i32 @tcgetattr(i32 %10, %struct.termios* %1)
  %12 = load i32, i32* @tio_orig_set, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = bitcast %struct.termios* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.termios* @tio_orig to i8*), i8* align 8 %15, i64 16, i1 false)
  store i32 1, i32* @tio_orig_set, align 4
  br label %16

16:                                               ; preds = %14, %8
  %17 = load i32, i32* @ICANON, align 4
  %18 = load i32, i32* @ECHO, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @VMIN, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @VTIME, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @tty_in, align 4
  %33 = load i32, i32* @TCSANOW, align 4
  %34 = call i32 @tcsetattr(i32 %32, i32 %33, %struct.termios* %1)
  store i32 1, i32* @getch2_active, align 4
  br label %35

35:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32 @enable_kx(i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
