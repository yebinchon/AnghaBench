; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_strftime.c__yconv.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_strftime.c__yconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02d\00", align 1
@DIVISOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32, i32, i8*, i8*)* @_yconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_yconv(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = srem i32 %15, 100
  %17 = load i32, i32* %8, align 4
  %18 = srem i32 %17, 100
  %19 = add nsw i32 %16, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sdiv i32 %20, 100
  %22 = load i32, i32* %8, align 4
  %23 = sdiv i32 %22, 100
  %24 = add nsw i32 %21, %23
  %25 = load i32, i32* %14, align 4
  %26 = sdiv i32 %25, 100
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = srem i32 %28, 100
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %6
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %36, 100
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %13, align 4
  br label %52

40:                                               ; preds = %32, %6
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* %14, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %14, align 4
  %48 = sub nsw i32 %47, 100
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %46, %43, %40
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i8* @_add(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %62, i8* %63)
  store i8* %64, i8** %11, align 8
  br label %70

65:                                               ; preds = %58, %55
  %66 = load i32, i32* %13, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = call i8* @_conv(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %67, i8* %68)
  store i8* %69, i8** %11, align 8
  br label %70

70:                                               ; preds = %65, %61
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 0, %78
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %14, align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i32 [ %79, %77 ], [ %81, %80 ]
  %84 = load i8*, i8** %11, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = call i8* @_conv(i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %84, i8* %85)
  store i8* %86, i8** %11, align 8
  br label %87

87:                                               ; preds = %82, %71
  %88 = load i8*, i8** %11, align 8
  ret i8* %88
}

declare dso_local i8* @_add(i8*, i8*, i8*) #1

declare dso_local i8* @_conv(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
