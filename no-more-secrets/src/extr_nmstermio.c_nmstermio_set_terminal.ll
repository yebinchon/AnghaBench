; ModuleID = '/home/carl/AnghaBench/no-more-secrets/src/extr_nmstermio.c_nmstermio_set_terminal.c'
source_filename = "/home/carl/AnghaBench/no-more-secrets/src/extr_nmstermio.c_nmstermio_set_terminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@nmstermio_set_terminal.save = internal global %struct.termios zeroinitializer, align 4
@nmstermio_set_terminal.state = internal global i32 1, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nmstermio_set_terminal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmstermio_set_terminal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.termios, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @STDIN_FILENO, align 4
  %5 = call i32 @isatty(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @stdin, align 4
  %9 = call i32 @freopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  store i32 %9, i32* @stdin, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load i32, i32* @STDIN_FILENO, align 4
  %15 = call i32 @tcgetattr(i32 %14, %struct.termios* %3)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %46

18:                                               ; preds = %13
  %19 = bitcast %struct.termios* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.termios* @nmstermio_set_terminal.save to i8*), i8* align 4 %19, i64 4, i1 false)
  %20 = load i32, i32* @ICANON, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @ECHO, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %24
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @STDIN_FILENO, align 4
  %29 = load i32, i32* @TCSAFLUSH, align 4
  %30 = call i32 @tcsetattr(i32 %28, i32 %29, %struct.termios* %3)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %46

33:                                               ; preds = %18
  br label %44

34:                                               ; preds = %10
  %35 = load i32, i32* @nmstermio_set_terminal.state, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* @STDIN_FILENO, align 4
  %39 = load i32, i32* @TCSANOW, align 4
  %40 = call i32 @tcsetattr(i32 %38, i32 %39, %struct.termios* @nmstermio_set_terminal.save)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %46

43:                                               ; preds = %37, %34
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, i32* %2, align 4
  store i32 %45, i32* @nmstermio_set_terminal.state, align 4
  br label %46

46:                                               ; preds = %44, %42, %32, %17
  ret void
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @freopen(i8*, i8*, i32) #1

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
