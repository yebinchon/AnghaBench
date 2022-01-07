; ModuleID = '/home/carl/AnghaBench/openwrt/package/libs/libiconv/src/extr_iconv.c_utf8seq_is_overlong.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/libs/libiconv/src/extr_iconv.c_utf8seq_is_overlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @utf8seq_is_overlong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8seq_is_overlong(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %74 [
    i32 2, label %7
    i32 3, label %23
    i32 4, label %45
  ]

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = ashr i32 %10, 1
  %12 = icmp eq i32 %11, 96
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = ashr i32 %17, 6
  %19 = icmp eq i32 %18, 2
  br label %20

20:                                               ; preds = %13, %7
  %21 = phi i1 [ false, %7 ], [ %19, %13 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %75

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 224
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = ashr i32 %32, 5
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = ashr i32 %39, 6
  %41 = icmp eq i32 %40, 2
  br label %42

42:                                               ; preds = %35, %28, %23
  %43 = phi i1 [ false, %28 ], [ false, %23 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %2
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 240
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = ashr i32 %54, 4
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = ashr i32 %61, 6
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = ashr i32 %68, 6
  %70 = icmp eq i32 %69, 2
  br label %71

71:                                               ; preds = %64, %57, %50, %45
  %72 = phi i1 [ false, %57 ], [ false, %50 ], [ false, %45 ], [ %70, %64 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %71, %42, %20
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
