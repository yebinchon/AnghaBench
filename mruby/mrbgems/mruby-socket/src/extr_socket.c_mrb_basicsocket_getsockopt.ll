; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_getsockopt.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_getsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Socket\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Option\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_basicsocket_getsockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_basicsocket_getsockopt(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @mrb_get_args(i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %8, i64* %9)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @socket_fd(i32* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  store i32 8, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* %8, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i64, i64* %9, align 8
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %24 = call i32 @getsockopt(i32 %18, i32 %20, i32 %22, i8* %23, i32* %12)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @mrb_sys_fail(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @mrb_class_get(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @mrb_obj_value(i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @mrb_intern_lit(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @mrb_const_get(i32* %30, i32 %33, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @socket_family(i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @mrb_str_new(i32* %39, i8* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @mrb_fixnum_value(i64 %45)
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @mrb_fixnum_value(i64 %47)
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @mrb_fixnum_value(i64 %49)
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @mrb_funcall(i32* %43, i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 4, i32 %46, i32 %48, i32 %50, i32 %51)
  ret i32 %52
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*, i64*) #1

declare dso_local i32 @socket_fd(i32*, i32) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_const_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(i32) #1

declare dso_local i32 @mrb_class_get(i32*, i8*) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i64 @socket_family(i32) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
