; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_FISTTP.c_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_FISTTP.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FE_DIVBYZERO = common dso_local global i32 0, align 4
@FE_INEXACT = common dso_local global i32 0, align 4
@FE_INVALID = common dso_local global i32 0, align 4
@FE_OVERFLOW = common dso_local global i32 0, align 4
@FE_UNDERFLOW = common dso_local global i32 0, align 4
@res16 = common dso_local global i32 0, align 4
@res32 = common dso_local global i32 0, align 4
@res64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"[BAD]\09fisttp 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"[BAD]\09fisttp 1: wrong exception state\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"[BAD]\09fisttp pi\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"[BAD]\09fisttp pi: wrong exception state\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"[BAD]\09fisttp -pi\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"[BAD]\09fisttp -pi: wrong exception state\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"[BAD]\09fisttp ln2\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"[BAD]\09fisttp ln2: wrong exception state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @FE_DIVBYZERO, align 4
  %4 = load i32, i32* @FE_INEXACT, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @FE_INVALID, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @FE_OVERFLOW, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @FE_UNDERFLOW, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @feclearexcept(i32 %11)
  call void asm sideeffect "\0A\09fld1\0A\09fisttp\09res16\0A\09fld1\0A\09fisttpl\09res32\0A\09fld1\0A\09fisttpll res64\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %13 = load i32, i32* @res16, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %21, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* @res32, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @res64, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15, %0
  %22 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %151

23:                                               ; preds = %18
  %24 = load i32, i32* @FE_DIVBYZERO, align 4
  %25 = load i32, i32* @FE_INEXACT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FE_INVALID, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FE_OVERFLOW, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @FE_UNDERFLOW, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @fetestexcept(i32 %32)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %151

38:                                               ; preds = %23
  %39 = load i32, i32* @FE_DIVBYZERO, align 4
  %40 = load i32, i32* @FE_INEXACT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FE_INVALID, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FE_OVERFLOW, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @FE_UNDERFLOW, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @feclearexcept(i32 %47)
  call void asm sideeffect "\0A\09fldpi\0A\09fisttp\09res16\0A\09fldpi\0A\09fisttpl\09res32\0A\09fldpi\0A\09fisttpll res64\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  %49 = load i32, i32* @res16, align 4
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %57, label %51

51:                                               ; preds = %38
  %52 = load i32, i32* @res32, align 4
  %53 = icmp ne i32 %52, 3
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @res64, align 4
  %56 = icmp ne i32 %55, 3
  br i1 %56, label %57, label %59

57:                                               ; preds = %54, %51, %38
  %58 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %151

59:                                               ; preds = %54
  %60 = load i32, i32* @FE_DIVBYZERO, align 4
  %61 = load i32, i32* @FE_INEXACT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @FE_INVALID, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @FE_OVERFLOW, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @FE_UNDERFLOW, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @fetestexcept(i32 %68)
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @FE_INEXACT, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %151

75:                                               ; preds = %59
  %76 = load i32, i32* @FE_DIVBYZERO, align 4
  %77 = load i32, i32* @FE_INEXACT, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @FE_INVALID, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @FE_OVERFLOW, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @FE_UNDERFLOW, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @feclearexcept(i32 %84)
  call void asm sideeffect "\0A\09fldpi\0A\09fchs\0A\09fisttp\09res16\0A\09fldpi\0A\09fchs\0A\09fisttpl\09res32\0A\09fldpi\0A\09fchs\0A\09fisttpll res64\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  %86 = load i32, i32* @res16, align 4
  %87 = icmp ne i32 %86, 65533
  br i1 %87, label %95, label %88

88:                                               ; preds = %75
  %89 = load i32, i32* @res32, align 4
  %90 = icmp ne i32 %89, -3
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @res64, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ne i64 %93, -3
  br i1 %94, label %95, label %97

95:                                               ; preds = %91, %88, %75
  %96 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %151

97:                                               ; preds = %91
  %98 = load i32, i32* @FE_DIVBYZERO, align 4
  %99 = load i32, i32* @FE_INEXACT, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @FE_INVALID, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @FE_OVERFLOW, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @FE_UNDERFLOW, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @fetestexcept(i32 %106)
  store i32 %107, i32* %2, align 4
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @FE_INEXACT, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %97
  %112 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %151

113:                                              ; preds = %97
  %114 = load i32, i32* @FE_DIVBYZERO, align 4
  %115 = load i32, i32* @FE_INEXACT, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @FE_INVALID, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @FE_OVERFLOW, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @FE_UNDERFLOW, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @feclearexcept(i32 %122)
  call void asm sideeffect "\0A\09fldln2\0A\09fisttp\09res16\0A\09fldln2\0A\09fisttpl\09res32\0A\09fldln2\0A\09fisttpll res64\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  %124 = load i32, i32* @res16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %113
  %127 = load i32, i32* @res32, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* @res64, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129, %126, %113
  %133 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %151

134:                                              ; preds = %129
  %135 = load i32, i32* @FE_DIVBYZERO, align 4
  %136 = load i32, i32* @FE_INEXACT, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @FE_INVALID, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @FE_OVERFLOW, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @FE_UNDERFLOW, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @fetestexcept(i32 %143)
  store i32 %144, i32* %2, align 4
  %145 = load i32, i32* %2, align 4
  %146 = load i32, i32* @FE_INEXACT, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %134
  %149 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %151

150:                                              ; preds = %134
  store i32 0, i32* %1, align 4
  br label %151

151:                                              ; preds = %150, %148, %132, %111, %95, %73, %57, %36, %21
  %152 = load i32, i32* %1, align 4
  ret i32 %152
}

declare dso_local i32 @feclearexcept(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fetestexcept(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 462, i32 469, i32 482, i32 503, i32 516, i32 538, i32 551}
!3 = !{i32 944, i32 951, i32 965, i32 986, i32 1000, i32 1022, i32 1036}
!4 = !{i32 1440, i32 1447, i32 1461, i32 1474, i32 1495, i32 1509, i32 1522, i32 1544, i32 1558, i32 1571}
!5 = !{i32 2011, i32 2018, i32 2033, i32 2054, i32 2069, i32 2091, i32 2106}
