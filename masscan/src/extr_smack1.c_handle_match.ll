; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_handle_match.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_handle_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMACK = type { %struct.SmackMatches* }
%struct.SmackMatches = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SMACK*, i32, i32 (i64, i32, i8*)*, i8*, i32)* @handle_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_match(%struct.SMACK* %0, i32 %1, i32 (i64, i32, i8*)* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.SMACK*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i64, i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.SmackMatches*, align 8
  %13 = alloca i64, align 8
  store %struct.SMACK* %0, %struct.SMACK** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i64, i32, i8*)* %2, i32 (i64, i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %15 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %14, i32 0, i32 0
  %16 = load %struct.SmackMatches*, %struct.SmackMatches** %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %16, i64 %18
  store %struct.SmackMatches* %19, %struct.SmackMatches** %12, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %39, %5
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.SmackMatches*, %struct.SmackMatches** %12, align 8
  %23 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.SmackMatches*, %struct.SmackMatches** %12, align 8
  %28 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %13, align 8
  %34 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** %8, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 %34(i64 %35, i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %11, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %20

42:                                               ; preds = %20
  %43 = load %struct.SmackMatches*, %struct.SmackMatches** %12, align 8
  %44 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
