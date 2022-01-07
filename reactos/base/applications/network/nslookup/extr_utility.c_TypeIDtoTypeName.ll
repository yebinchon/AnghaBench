; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/nslookup/extr_utility.c_TypeIDtoTypeName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/nslookup/extr_utility.c_TypeIDtoTypeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TypeA = common dso_local global i8* null, align 8
@TypeNS = common dso_local global i8* null, align 8
@TypeCNAME = common dso_local global i8* null, align 8
@TypeSOA = common dso_local global i8* null, align 8
@TypeSRV = common dso_local global i8* null, align 8
@TypePTR = common dso_local global i8* null, align 8
@TypeMX = common dso_local global i8* null, align 8
@TypeAny = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @TypeIDtoTypeName(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %21 [
    i32 135, label %5
    i32 131, label %7
    i32 133, label %9
    i32 129, label %11
    i32 128, label %13
    i32 130, label %15
    i32 132, label %17
    i32 134, label %19
  ]

5:                                                ; preds = %1
  %6 = load i8*, i8** @TypeA, align 8
  store i8* %6, i8** %2, align 8
  br label %22

7:                                                ; preds = %1
  %8 = load i8*, i8** @TypeNS, align 8
  store i8* %8, i8** %2, align 8
  br label %22

9:                                                ; preds = %1
  %10 = load i8*, i8** @TypeCNAME, align 8
  store i8* %10, i8** %2, align 8
  br label %22

11:                                               ; preds = %1
  %12 = load i8*, i8** @TypeSOA, align 8
  store i8* %12, i8** %2, align 8
  br label %22

13:                                               ; preds = %1
  %14 = load i8*, i8** @TypeSRV, align 8
  store i8* %14, i8** %2, align 8
  br label %22

15:                                               ; preds = %1
  %16 = load i8*, i8** @TypePTR, align 8
  store i8* %16, i8** %2, align 8
  br label %22

17:                                               ; preds = %1
  %18 = load i8*, i8** @TypeMX, align 8
  store i8* %18, i8** %2, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load i8*, i8** @TypeAny, align 8
  store i8* %20, i8** %2, align 8
  br label %22

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %22

22:                                               ; preds = %21, %19, %17, %15, %13, %11, %9, %7, %5
  %23 = load i8*, i8** %2, align 8
  ret i8* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
