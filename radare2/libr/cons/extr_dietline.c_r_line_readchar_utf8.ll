; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c_r_line_readchar_utf8.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c_r_line_readchar_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @r_line_readchar_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_line_readchar_utf8(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

13:                                               ; preds = %2
  %14 = call i32 (...) @r_cons_readchar()
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %89

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @r_cons_controlz(i32 %22)
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 128
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %54

29:                                               ; preds = %18
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 224
  %34 = icmp eq i32 %33, 192
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 2, i32* %6, align 4
  br label %53

36:                                               ; preds = %29
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 240
  %41 = icmp eq i32 %40, 224
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 3, i32* %6, align 4
  br label %52

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 248
  %48 = icmp eq i32 %47, 240
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 4, i32* %6, align 4
  br label %51

50:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %89

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %42
  br label %53

53:                                               ; preds = %52, %35
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %89

59:                                               ; preds = %54
  store i32 1, i32* %7, align 4
  br label %60

60:                                               ; preds = %84, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %60
  %65 = call i32 (...) @r_cons_readchar()
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %64
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 192
  %81 = icmp ne i32 %80, 128
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %89

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %60

87:                                               ; preds = %60
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %82, %58, %50, %17, %12
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @r_cons_readchar(...) #1

declare dso_local i32 @r_cons_controlz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
