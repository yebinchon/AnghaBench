; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_array.c_astrcmp.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_array.c_astrcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDB_RS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @astrcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @astrcmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %6, align 1
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %7, align 1
  br label %12

12:                                               ; preds = %59, %2
  %13 = load i8, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @SDB_RS, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16, %12
  %23 = load i8, i8* %7, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @SDB_RS, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %22
  store i32 0, i32* %3, align 4
  br label %66

33:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %66

34:                                               ; preds = %16
  %35 = load i8, i8* %7, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i8, i8* %7, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @SDB_RS, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %34
  store i32 1, i32* %3, align 4
  br label %66

45:                                               ; preds = %38
  %46 = load i8, i8* %6, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* %7, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i8, i8* %6, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* %7, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sgt i32 %53, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 -1
  store i32 %58, i32* %3, align 4
  br label %66

59:                                               ; preds = %45
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %6, align 1
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %5, align 8
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %7, align 1
  br label %12

66:                                               ; preds = %51, %44, %33, %32
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
