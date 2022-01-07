; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/user/extr_dbg_printf.c_kprintn.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/user/extr_dbg_printf.c_kprintn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void (i8)*, i32, i32, i32, i8)* @kprintn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kprintn(void (i8)* %0, i32 %1, i32 %2, i32 %3, i8 signext %4) #0 {
  %6 = alloca void (i8)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca [23 x i8], align 16
  store void (i8)* %0, void (i8)** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8 %4, i8* %10, align 1
  %13 = getelementptr inbounds [23 x i8], [23 x i8]* %12, i64 0, i64 0
  store i8* %13, i8** %11, align 8
  br label %14

14:                                               ; preds = %23, %5
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = srem i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %11, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %11, align 8
  store i8 %20, i8* %21, align 1
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %14, label %28

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %39, %28
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds [23 x i8], [23 x i8]* %12, i64 0, i64 0
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %9, align 4
  %37 = sext i32 %35 to i64
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load void (i8)*, void (i8)** %6, align 8
  %41 = load i8, i8* %10, align 1
  call void %40(i8 signext %41)
  br label %29

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %48, %42
  %44 = load void (i8)*, void (i8)** %6, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %46, i8** %11, align 8
  %47 = load i8, i8* %46, align 1
  call void %44(i8 signext %47)
  br label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds [23 x i8], [23 x i8]* %12, i64 0, i64 0
  %51 = icmp ugt i8* %49, %50
  br i1 %51, label %43, label %52

52:                                               ; preds = %48
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
