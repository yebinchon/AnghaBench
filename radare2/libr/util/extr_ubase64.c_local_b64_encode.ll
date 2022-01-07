; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_ubase64.c_local_b64_encode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_ubase64.c_local_b64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cb64 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @local_b64_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @local_b64_encode(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %93

10:                                               ; preds = %3
  %11 = load i8*, i8** @cb64, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %11, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %18, i8* %20, align 1
  %21 = load i8*, i8** @cb64, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 3
  %26 = shl i32 %25, 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %10
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 240
  %34 = ashr i32 %33, 4
  br label %36

35:                                               ; preds = %10
  br label %36

36:                                               ; preds = %35, %29
  %37 = phi i32 [ %34, %29 ], [ 0, %35 ]
  %38 = or i32 %26, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %21, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8 %41, i8* %43, align 1
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %69

46:                                               ; preds = %36
  %47 = load i8*, i8** @cb64, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 15
  %52 = shl i32 %51, 2
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 2
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 192
  %60 = ashr i32 %59, 6
  br label %62

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %55
  %63 = phi i32 [ %60, %55 ], [ 0, %61 ]
  %64 = or i32 %52, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %47, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  br label %70

69:                                               ; preds = %36
  br label %70

70:                                               ; preds = %69, %62
  %71 = phi i32 [ %68, %62 ], [ 61, %69 ]
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  store i8 %72, i8* %74, align 1
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %75, 2
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load i8*, i8** @cb64, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 63
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %78, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  br label %88

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87, %77
  %89 = phi i32 [ %86, %77 ], [ 61, %87 ]
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  store i8 %90, i8* %92, align 1
  br label %93

93:                                               ; preds = %88, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
