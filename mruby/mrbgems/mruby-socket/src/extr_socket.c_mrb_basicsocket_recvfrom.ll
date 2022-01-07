; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_recvfrom.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"i|i\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_basicsocket_recvfrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_basicsocket_recvfrom(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_get_args(i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @mrb_str_buf_new(i32* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  store i32 4, i32* %11, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @mrb_str_buf_new(i32* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @socket_fd(i32* %20, i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @RSTRING_PTR(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @RSTRING_PTR(i32 %27)
  %29 = inttoptr i64 %28 to %struct.sockaddr*
  %30 = call i32 @recvfrom(i32 %22, i64 %24, i32 %25, i32 %26, %struct.sockaddr* %29, i32* %11)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @mrb_sys_fail(i32* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %2
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @mrb_str_resize(i32* %37, i32 %38, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @mrb_str_resize(i32* %41, i32 %42, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @mrb_ary_new_capa(i32* %45, i32 2)
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mrb_ary_push(i32* %47, i32 %48, i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @mrb_ary_push(i32* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @mrb_str_buf_new(i32*, i32) #1

declare dso_local i32 @recvfrom(i32, i64, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @socket_fd(i32*, i32) #1

declare dso_local i64 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_str_resize(i32*, i32, i32) #1

declare dso_local i32 @mrb_ary_new_capa(i32*, i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
