; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_analyse_texasr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_analyse_texasr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"TEXASR: %16lx\09\00", align 1
@TEXASR_FP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"TEXASR_FP  \00", align 1
@TEXASR_DA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"TEXASR_DA  \00", align 1
@TEXASR_NO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"TEXASR_NO  \00", align 1
@TEXASR_FO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"TEXASR_FO  \00", align 1
@TEXASR_SIC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"TEXASR_SIC  \00", align 1
@TEXASR_NTC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"TEXASR_NTC  \00", align 1
@TEXASR_TC = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"TEXASR_TC  \00", align 1
@TEXASR_TIC = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"TEXASR_TIC  \00", align 1
@TEXASR_IC = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"TEXASR_IC  \00", align 1
@TEXASR_IFC = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"TEXASR_IFC  \00", align 1
@TEXASR_ABT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"TEXASR_ABT  \00", align 1
@TEXASR_SPD = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"TEXASR_SPD  \00", align 1
@TEXASR_HV = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [12 x i8] c"TEXASR_HV  \00", align 1
@TEXASR_PR = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"TEXASR_PR  \00", align 1
@TEXASR_FS = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"TEXASR_FS  \00", align 1
@TEXASR_TE = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"TEXASR_TE  \00", align 1
@TEXASR_ROT = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"TEXASR_ROT  \00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"TFIAR :%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analyse_texasr(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %3)
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @TEXASR_FP, align 8
  %7 = and i64 %5, %6
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @TEXASR_DA, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @TEXASR_NO, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* @TEXASR_FO, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @TEXASR_SIC, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @TEXASR_NTC, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i64, i64* %2, align 8
  %48 = load i64, i64* @TEXASR_TC, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i64, i64* %2, align 8
  %55 = load i64, i64* @TEXASR_TIC, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i64, i64* %2, align 8
  %62 = load i64, i64* @TEXASR_IC, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i64, i64* %2, align 8
  %69 = load i64, i64* @TEXASR_IFC, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i64, i64* %2, align 8
  %76 = load i64, i64* @TEXASR_ABT, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i64, i64* %2, align 8
  %83 = load i64, i64* @TEXASR_SPD, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %81
  %89 = load i64, i64* %2, align 8
  %90 = load i64, i64* @TEXASR_HV, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %88
  %96 = load i64, i64* %2, align 8
  %97 = load i64, i64* @TEXASR_PR, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %95
  %103 = load i64, i64* %2, align 8
  %104 = load i64, i64* @TEXASR_FS, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %102
  %110 = load i64, i64* %2, align 8
  %111 = load i64, i64* @TEXASR_TE, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %109
  %117 = load i64, i64* %2, align 8
  %118 = load i64, i64* @TEXASR_ROT, align 8
  %119 = and i64 %117, %118
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %116
  %124 = call i64 (...) @get_tfiar()
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i64 %124)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @get_tfiar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
