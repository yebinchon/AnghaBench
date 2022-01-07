; ModuleID = '/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_find_recurse.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_find_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_END = common dso_local global i32 0, align 4
@OP_RECURSE = common dso_local global i32 0, align 4
@OP_XCLASS = common dso_local global i32 0, align 4
@OP_PROP = common dso_local global i32 0, align 4
@OP_NOTPROP = common dso_local global i32 0, align 4
@IMM2_SIZE = common dso_local global i32 0, align 4
@OP_lengths = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64)* @find_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_recurse(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %7

7:                                                ; preds = %88, %2
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @OP_END, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32* null, i32** %3, align 8
  br label %89

14:                                               ; preds = %7
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @OP_RECURSE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  store i32* %19, i32** %3, align 8
  br label %89

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @OP_XCLASS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @GET(i32* %25, i32 1)
  %27 = load i32*, i32** %4, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %4, align 8
  br label %88

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %77 [
    i32 131, label %32
    i32 139, label %32
    i32 137, label %32
    i32 141, label %32
    i32 132, label %32
    i32 140, label %32
    i32 134, label %32
    i32 136, label %32
    i32 135, label %32
    i32 133, label %48
    i32 130, label %48
    i32 138, label %48
    i32 142, label %48
    i32 196, label %70
    i32 149, label %70
    i32 146, label %70
    i32 143, label %70
  ]

32:                                               ; preds = %30, %30, %30, %30, %30, %30, %30, %30, %30
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @OP_PROP, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OP_NOTPROP, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %32
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32* %46, i32** %4, align 8
  br label %47

47:                                               ; preds = %44, %38
  br label %77

48:                                               ; preds = %30, %30, %30, %30
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @IMM2_SIZE, align 4
  %51 = add nsw i32 1, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @OP_PROP, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %48
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @IMM2_SIZE, align 4
  %60 = add nsw i32 1, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @OP_NOTPROP, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %57, %48
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32* %68, i32** %4, align 8
  br label %69

69:                                               ; preds = %66, %57
  br label %77

70:                                               ; preds = %30, %30, %30, %30
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %4, align 8
  br label %77

77:                                               ; preds = %30, %70, %69, %47
  %78 = load i32, i32* @OP_lengths, align 4
  %79 = call i32* @PRIV(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %4, align 8
  %87 = load i64, i64* %5, align 8
  br label %88

88:                                               ; preds = %77, %24
  br label %7

89:                                               ; preds = %18, %13
  %90 = load i32*, i32** %3, align 8
  ret i32* %90
}

declare dso_local i32 @GET(i32*, i32) #1

declare dso_local i32* @PRIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
