; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_interpret_msrbank.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_interpret_msrbank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.interpret_msrbank.fields = private unnamed_addr constant [5 x i8] c"cxsf\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"spsr_\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"apsr_\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"nzcvq\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"nzcvqg\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cpsr_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @interpret_msrbank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_msrbank(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [5 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = bitcast [5 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.interpret_msrbank.fields, i32 0, i32 0), i64 5, i1 false)
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @r_str_startswith(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  store i32 1, i32* %15, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @r_str_startswith(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 5
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 4, i32* %3, align 4
  br label %102

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 5
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 8, i32* %3, align 4
  br label %102

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 5
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 12, i32* %3, align 4
  br label %102

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @r_str_startswith(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 @r_str_startswith(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %101

49:                                               ; preds = %45, %41
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %96, %49
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 5, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %99

58:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %81, %58
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 5, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %72, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %84

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %59

84:                                               ; preds = %79, %59
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %102

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  %93 = shl i32 1, %92
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %50

99:                                               ; preds = %50
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %102

101:                                              ; preds = %45
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %99, %90, %39, %33, %27
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @r_str_startswith(i8*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
