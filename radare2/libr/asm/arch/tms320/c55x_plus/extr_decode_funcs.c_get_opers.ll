; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_decode_funcs.c_get_opers.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_decode_funcs.c_get_opers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"overflow(ac0)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"overflow(ac1)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"overflow(ac2)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"overflow(ac3)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"tc1\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tc2\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"carry\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"overflow(govf)\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"tc1 & tc2\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"tc1 & !tc2\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"!tc1 & tc2\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"!tc1 & !tc2\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"word_mode\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"byte_mode\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"!overflow(ac0)\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"!overflow(ac1)\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"!overflow(ac2)\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"!overflow(ac3)\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"!tc1\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"!tc2\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"!carry\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"!overflow(govf)\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"tc1 | tc2\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"tc1 | !tc2\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"!tc1 | tc2\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"!tc1 | !tc2\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"tc1 ^ tc2\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"tc1 ^ !tc2\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"!tc1 ^ tc2\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"!tc1 ^ !tc2\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c" != #0\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c" == #0\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c" < #0\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c" >= #0\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c" > #0\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c" <= #0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_opers(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %68 [
    i32 224, label %8
    i32 225, label %10
    i32 226, label %12
    i32 227, label %14
    i32 228, label %16
    i32 229, label %18
    i32 230, label %20
    i32 231, label %22
    i32 232, label %24
    i32 233, label %26
    i32 234, label %28
    i32 235, label %30
    i32 236, label %32
    i32 237, label %34
    i32 240, label %36
    i32 241, label %38
    i32 242, label %40
    i32 243, label %42
    i32 244, label %44
    i32 245, label %46
    i32 246, label %48
    i32 247, label %50
    i32 248, label %52
    i32 249, label %54
    i32 250, label %56
    i32 251, label %58
    i32 252, label %60
    i32 253, label %62
    i32 254, label %64
    i32 255, label %66
  ]

8:                                                ; preds = %1
  %9 = call i8* @strdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  br label %121

10:                                               ; preds = %1
  %11 = call i8* @strdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %11, i8** %4, align 8
  br label %121

12:                                               ; preds = %1
  %13 = call i8* @strdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %13, i8** %4, align 8
  br label %121

14:                                               ; preds = %1
  %15 = call i8* @strdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i8* %15, i8** %4, align 8
  br label %121

16:                                               ; preds = %1
  %17 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %17, i8** %4, align 8
  br label %121

18:                                               ; preds = %1
  %19 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %19, i8** %4, align 8
  br label %121

20:                                               ; preds = %1
  %21 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i8* %21, i8** %4, align 8
  br label %121

22:                                               ; preds = %1
  %23 = call i8* @strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i8* %23, i8** %4, align 8
  br label %121

24:                                               ; preds = %1
  %25 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store i8* %25, i8** %4, align 8
  br label %121

26:                                               ; preds = %1
  %27 = call i8* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i8* %27, i8** %4, align 8
  br label %121

28:                                               ; preds = %1
  %29 = call i8* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i8* %29, i8** %4, align 8
  br label %121

30:                                               ; preds = %1
  %31 = call i8* @strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  store i8* %31, i8** %4, align 8
  br label %121

32:                                               ; preds = %1
  %33 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  store i8* %33, i8** %4, align 8
  br label %121

34:                                               ; preds = %1
  %35 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  store i8* %35, i8** %4, align 8
  br label %121

36:                                               ; preds = %1
  %37 = call i8* @strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  store i8* %37, i8** %4, align 8
  br label %121

38:                                               ; preds = %1
  %39 = call i8* @strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  store i8* %39, i8** %4, align 8
  br label %121

40:                                               ; preds = %1
  %41 = call i8* @strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i8* %41, i8** %4, align 8
  br label %121

42:                                               ; preds = %1
  %43 = call i8* @strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  store i8* %43, i8** %4, align 8
  br label %121

44:                                               ; preds = %1
  %45 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  store i8* %45, i8** %4, align 8
  br label %121

46:                                               ; preds = %1
  %47 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  store i8* %47, i8** %4, align 8
  br label %121

48:                                               ; preds = %1
  %49 = call i8* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  store i8* %49, i8** %4, align 8
  br label %121

50:                                               ; preds = %1
  %51 = call i8* @strdup(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  store i8* %51, i8** %4, align 8
  br label %121

52:                                               ; preds = %1
  %53 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  store i8* %53, i8** %4, align 8
  br label %121

54:                                               ; preds = %1
  %55 = call i8* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  store i8* %55, i8** %4, align 8
  br label %121

56:                                               ; preds = %1
  %57 = call i8* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  store i8* %57, i8** %4, align 8
  br label %121

58:                                               ; preds = %1
  %59 = call i8* @strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  store i8* %59, i8** %4, align 8
  br label %121

60:                                               ; preds = %1
  %61 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  store i8* %61, i8** %4, align 8
  br label %121

62:                                               ; preds = %1
  %63 = call i8* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  store i8* %63, i8** %4, align 8
  br label %121

64:                                               ; preds = %1
  %65 = call i8* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  store i8* %65, i8** %4, align 8
  br label %121

66:                                               ; preds = %1
  %67 = call i8* @strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  store i8* %67, i8** %4, align 8
  br label %121

68:                                               ; preds = %1
  %69 = load i32, i32* %3, align 4
  %70 = ashr i32 %69, 5
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 6
  br i1 %72, label %73, label %98

73:                                               ; preds = %68
  %74 = load i32, i32* %3, align 4
  %75 = and i32 %74, 31
  %76 = call i8* @get_reg_name_4(i32 %75)
  store i8* %76, i8** %6, align 8
  %77 = load i32, i32* %5, align 4
  switch i32 %77, label %96 [
    i32 1, label %78
    i32 0, label %81
    i32 2, label %84
    i32 3, label %87
    i32 4, label %90
    i32 5, label %93
  ]

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = call i8* @strcat_dup(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 1)
  store i8* %80, i8** %4, align 8
  br label %96

81:                                               ; preds = %73
  %82 = load i8*, i8** %6, align 8
  %83 = call i8* @strcat_dup(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 1)
  store i8* %83, i8** %4, align 8
  br label %96

84:                                               ; preds = %73
  %85 = load i8*, i8** %6, align 8
  %86 = call i8* @strcat_dup(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i32 1)
  store i8* %86, i8** %4, align 8
  br label %96

87:                                               ; preds = %73
  %88 = load i8*, i8** %6, align 8
  %89 = call i8* @strcat_dup(i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i32 1)
  store i8* %89, i8** %4, align 8
  br label %96

90:                                               ; preds = %73
  %91 = load i8*, i8** %6, align 8
  %92 = call i8* @strcat_dup(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i32 1)
  store i8* %92, i8** %4, align 8
  br label %96

93:                                               ; preds = %73
  %94 = load i8*, i8** %6, align 8
  %95 = call i8* @strcat_dup(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i32 1)
  store i8* %95, i8** %4, align 8
  br label %96

96:                                               ; preds = %93, %73, %90, %87, %84, %81, %78
  %97 = load i8*, i8** %4, align 8
  store i8* %97, i8** %2, align 8
  br label %125

98:                                               ; preds = %68
  %99 = load i32, i32* %3, align 4
  %100 = and i32 %99, 15
  %101 = add nsw i32 %100, 128
  %102 = call i8* @get_reg_name_1(i32 %101)
  store i8* %102, i8** %6, align 8
  %103 = load i32, i32* %3, align 4
  %104 = ashr i32 %103, 4
  %105 = sub nsw i32 %104, 12
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %98
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @free(i8* %112)
  store i8* null, i8** %2, align 8
  br label %125

114:                                              ; preds = %108
  %115 = load i8*, i8** %6, align 8
  %116 = call i8* @strcat_dup(i8* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 1)
  store i8* %116, i8** %4, align 8
  br label %120

117:                                              ; preds = %98
  %118 = load i8*, i8** %6, align 8
  %119 = call i8* @strcat_dup(i8* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 1)
  store i8* %119, i8** %4, align 8
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i8*, i8** %4, align 8
  store i8* %124, i8** %2, align 8
  br label %125

125:                                              ; preds = %121, %111, %96
  %126 = load i8*, i8** %2, align 8
  ret i8* %126
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @get_reg_name_4(i32) #1

declare dso_local i8* @strcat_dup(i8*, i8*, i32) #1

declare dso_local i8* @get_reg_name_1(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
