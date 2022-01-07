; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_parse_line_comment.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_parse_line_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@CH_EOF = common dso_local global i32 0, align 4
@file = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @parse_line_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_line_comment(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %5, i32** %2, align 8
  br label %6

6:                                                ; preds = %70, %1
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %64, %6
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @CH_EOF, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %9
  br label %71

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 92
  br i1 %19, label %20, label %66

20:                                               ; preds = %17
  %21 = load i32*, i32** %2, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = call i32 (...) @handle_eob()
  store i32 %24, i32* %3, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 92
  br i1 %29, label %30, label %64

30:                                               ; preds = %20
  %31 = load i32, i32* %3, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @PEEKC_EOB(i32 %31, i32* %32)
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @PEEKC_EOB(i32 %41, i32* %42)
  br label %63

44:                                               ; preds = %30
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 13
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @PEEKC_EOB(i32 %48, i32* %49)
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @PEEKC_EOB(i32 %58, i32* %59)
  br label %61

61:                                               ; preds = %53, %47
  br label %62

62:                                               ; preds = %61, %44
  br label %63

63:                                               ; preds = %62, %36
  br label %65

64:                                               ; preds = %20
  br label %9

65:                                               ; preds = %63
  br label %69

66:                                               ; preds = %17
  %67 = load i32*, i32** %2, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %2, align 8
  br label %69

69:                                               ; preds = %66, %65
  br label %70

70:                                               ; preds = %69
  br label %6

71:                                               ; preds = %16
  %72 = load i32*, i32** %2, align 8
  ret i32* %72
}

declare dso_local i32 @handle_eob(...) #1

declare dso_local i32 @PEEKC_EOB(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
