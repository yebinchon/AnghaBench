; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_ipaddress.c_IPADDRESS_UpdateText.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_ipaddress.c_IPADDRESS_UpdateText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IPADDRESS_UpdateText.zero = internal constant [2 x i8] c"0\00", align 1
@IPADDRESS_UpdateText.dot = internal constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @IPADDRESS_UpdateText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IPADDRESS_UpdateText(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca [4 x i8], align 1
  %4 = alloca [16 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %6, align 16
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %20 = call i64 @GetWindowTextW(i32 %18, i8* %19, i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %25 = call i32 @strcatW(i8* %23, i8* %24)
  br label %29

26:                                               ; preds = %10
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %28 = call i32 @strcatW(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @IPADDRESS_UpdateText.zero, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %34 = call i32 @strcatW(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @IPADDRESS_UpdateText.dot, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %7
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %44 = call i32 @SetWindowTextW(i32 %42, i8* %43)
  ret void
}

declare dso_local i64 @GetWindowTextW(i32, i8*, i32) #1

declare dso_local i32 @strcatW(i8*, i8*) #1

declare dso_local i32 @SetWindowTextW(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
