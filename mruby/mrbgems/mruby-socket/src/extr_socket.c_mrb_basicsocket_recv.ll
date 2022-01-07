; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_recv.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"i|i\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_basicsocket_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_basicsocket_recv(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %7, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @mrb_get_args(i32* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %6, i64* %7)
  %11 = load i32*, i32** %3, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @mrb_str_buf_new(i32* %11, i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @socket_fd(i32* %14, i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @RSTRING_PTR(i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @recv(i32 %16, i32 %18, i32 %20, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @mrb_sys_fail(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = call i32 @mrb_str_resize(i32* %30, i32 %31, i64 %33)
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*, i64*) #1

declare dso_local i32 @mrb_str_buf_new(i32*, i64) #1

declare dso_local i32 @recv(i32, i32, i32, i32) #1

declare dso_local i32 @socket_fd(i32*, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_str_resize(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
