; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_ipsocket_ntop.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_ipsocket_ntop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"invalid address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_ipsocket_ntop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_ipsocket_ntop(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [50 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @mrb_get_args(i32* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %5, i8** %7, i64* %6)
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @AF_INET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 4
  br i1 %16, label %24, label %17

17:                                               ; preds = %14, %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @AF_INET6, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 16
  br i1 %23, label %24, label %28

24:                                               ; preds = %21, %14
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %27 = call i32 @mrb_raise(i32* %25, i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %21, %17
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %33 = call i32* @inet_ntop(i32 %30, i8* %31, i8* %32, i32 50)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %38 = call i32 @mrb_raise(i32* %36, i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %42 = call i32 @mrb_str_new_cstr(i32* %40, i8* %41)
  ret i32 %42
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*, i8**, i64*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32* @inet_ntop(i32, i8*, i8*, i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
