; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_connect.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@False = common dso_local global i32 0, align 4
@g_username = common dso_local global i32 0, align 4
@g_rdp_shareid = common dso_local global i32 0, align 4
@g_network_error = common dso_local global i64 0, align 8
@g_redirect = common dso_local global i64 0, align 8
@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdp_connect(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* @False, align 4
  store i32 %18, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* @g_username, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* %15, align 4
  %24 = call i32 @sec_connect(i8* %19, i32 %20, i8* %21, i8* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* @False, align 4
  store i32 %27, i32* %8, align 4
  br label %58

28:                                               ; preds = %7
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* @g_username, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @rdp_send_logon_info(i32 %29, i8* %30, i32 %31, i8* %32, i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %55, %28
  %37 = load i32, i32* @g_rdp_shareid, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load i64, i64* @g_network_error, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @False, align 4
  store i32 %44, i32* %8, align 4
  br label %58

45:                                               ; preds = %40
  %46 = call i32 @rdp_loop(i32* %16, i32* %17)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @False, align 4
  store i32 %49, i32* %8, align 4
  br label %58

50:                                               ; preds = %45
  %51 = load i64, i64* @g_redirect, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @True, align 4
  store i32 %54, i32* %8, align 4
  br label %58

55:                                               ; preds = %50
  br label %36

56:                                               ; preds = %36
  %57 = load i32, i32* @True, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %53, %48, %43, %26
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @sec_connect(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @rdp_send_logon_info(i32, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @rdp_loop(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
