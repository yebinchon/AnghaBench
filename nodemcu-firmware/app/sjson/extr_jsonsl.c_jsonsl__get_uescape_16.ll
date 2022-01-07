; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl__get_uescape_16.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl__get_uescape_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @jsonsl__get_uescape_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonsl__get_uescape_16(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @jsonsl__digit2int to i32 (i32, ...)*)(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %59

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 12
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @jsonsl__digit2int to i32 (i32, ...)*)(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %59

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %28, 8
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = call i32 (i32, ...) bitcast (i32 (...)* @jsonsl__digit2int to i32 (i32, ...)*)(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %59

40:                                               ; preds = %27
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %41, 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = call i32 (i32, ...) bitcast (i32 (...)* @jsonsl__digit2int to i32 (i32, ...)*)(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 -1, i32* %2, align 4
  br label %59

53:                                               ; preds = %40
  %54 = load i32, i32* %5, align 4
  %55 = shl i32 %54, 0
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %53, %52, %39, %26, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @jsonsl__digit2int(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
