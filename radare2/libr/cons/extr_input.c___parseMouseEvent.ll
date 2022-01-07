; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_input.c___parseMouseEvent.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_input.c___parseMouseEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__parseMouseEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__parseMouseEvent() #0 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = call i8* (...) @r_cons_readchar()
  %9 = call i8* (...) @r_cons_readchar()
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 59
  br i1 %12, label %13, label %93

13:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %34, %13
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 32
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = call i8* (...) @r_cons_readchar()
  %20 = ptrtoint i8* %19 to i8
  store i8 %20, i8* %5, align 1
  %21 = load i8, i8* %5, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 59
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i8, i8* %5, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 77
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %18
  br label %37

29:                                               ; preds = %24
  %30 = load i8, i8* %5, align 1
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 %32
  store i8 %30, i8* %33, align 1
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %14

37:                                               ; preds = %28, %14
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 %39
  store i8 0, i8* %40, align 1
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %61, %37
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 32
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = call i8* (...) @r_cons_readchar()
  %47 = ptrtoint i8* %46 to i8
  store i8 %47, i8* %6, align 1
  %48 = load i8, i8* %6, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 59
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load i8, i8* %6, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 77
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %45
  br label %64

56:                                               ; preds = %51
  %57 = load i8, i8* %6, align 1
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %59
  store i8 %57, i8* %60, align 1
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %41

64:                                               ; preds = %55, %41
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %66
  store i8 0, i8* %67, align 1
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %69 = call i32 @atoi(i8* %68)
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %71 = call i32 @atoi(i8* %70)
  %72 = call i32 @r_cons_set_click(i32 %69, i32 %71)
  %73 = call i8* (...) @r_cons_readchar()
  %74 = call i8* (...) @r_cons_readchar()
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 27
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  %79 = call i8* (...) @r_cons_readchar()
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %64
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 91
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %88, %84
  %86 = call i8* (...) @r_cons_readchar()
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 77
  br i1 %90, label %85, label %91

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %91, %81
  br label %93

93:                                               ; preds = %92, %0
  ret i32 0
}

declare dso_local i8* @r_cons_readchar(...) #1

declare dso_local i32 @r_cons_set_click(i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
