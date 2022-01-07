; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c___generic_ld_st.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c___generic_ld_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"1,%c,-,%c,=,\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%c,\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d,+,\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"16,ramp%c,<<,+,\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"_%s,+,\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s[1],\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"1,%c,+,%c,=,\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8, i32, i32, i32, i32)* @__generic_ld_st to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__generic_ld_st(i32* %0, i8* %1, i8 signext %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8 %2, i8* %10, align 1
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i8, i8* %10, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %7
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i8, i8* %10, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* %10, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 (i8*, ...) @ESIL_A(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i8, i8* %10, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 (i8*, ...) @ESIL_A(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %13, align 4
  %34 = call i32 (i8*, ...) @ESIL_A(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %26
  br label %39

36:                                               ; preds = %7
  %37 = load i32, i32* %13, align 4
  %38 = call i32 (i8*, ...) @ESIL_A(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i8, i8* %10, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8, i8* %10, align 1
  %48 = sext i8 %47 to i32
  br label %50

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i32 [ %48, %46 ], [ 100, %49 ]
  %52 = call i32 (i8*, ...) @ESIL_A(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %39
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 (i8*, ...) @ESIL_A(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %60 = call i32 (i8*, ...) @ESIL_A(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %59)
  %61 = load i8, i8* %10, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i8, i8* %10, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* %10, align 1
  %71 = sext i8 %70 to i32
  %72 = call i32 (i8*, ...) @ESIL_A(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %67, %64, %53
  ret void
}

declare dso_local i32 @ESIL_A(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
