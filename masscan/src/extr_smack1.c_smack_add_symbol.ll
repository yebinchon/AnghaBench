; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_add_symbol.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_add_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMACK = type { i32, i32*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SMACK*, i32)* @smack_add_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_add_symbol(%struct.SMACK* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SMACK*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.SMACK* %0, %struct.SMACK** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.SMACK*, %struct.SMACK** %4, align 8
  %11 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ule i32 %9, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load %struct.SMACK*, %struct.SMACK** %4, align 8
  %16 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %54

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load %struct.SMACK*, %struct.SMACK** %4, align 8
  %32 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.SMACK*, %struct.SMACK** %4, align 8
  %36 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.SMACK*, %struct.SMACK** %4, align 8
  %40 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = trunc i32 %45 to i8
  %47 = load %struct.SMACK*, %struct.SMACK** %4, align 8
  %48 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %46, i8* %52, align 1
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %30, %24
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
