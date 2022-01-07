; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_pdb.c_convert_to_state.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_pdb.c_convert_to_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eStateMax = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"member\00", align 1
@eMemberState = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@ePointerState = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@eUnionState = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@eStructState = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@eUnsignedState = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@eShortState = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@eLongState = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@eCharState = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@eModifierState = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@eEnumState = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@eArrayState = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"onemethod\00", align 1
@eOneMethodState = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@eVoidState = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@eDoubleState = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"bitfield\00", align 1
@eBitfieldState = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @convert_to_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_state(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @eStateMax, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strstr(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @eMemberState, align 4
  store i32 %9, i32* %3, align 4
  br label %108

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strstr(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @ePointerState, align 4
  store i32 %15, i32* %3, align 4
  br label %107

16:                                               ; preds = %10
  %17 = load i8*, i8** %2, align 8
  %18 = call i64 @strstr(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @eUnionState, align 4
  store i32 %21, i32* %3, align 4
  br label %106

22:                                               ; preds = %16
  %23 = load i8*, i8** %2, align 8
  %24 = call i64 @strstr(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @eStructState, align 4
  store i32 %27, i32* %3, align 4
  br label %105

28:                                               ; preds = %22
  %29 = load i8*, i8** %2, align 8
  %30 = call i64 @strstr(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @eUnsignedState, align 4
  store i32 %33, i32* %3, align 4
  br label %104

34:                                               ; preds = %28
  %35 = load i8*, i8** %2, align 8
  %36 = call i64 @strstr(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @eShortState, align 4
  store i32 %39, i32* %3, align 4
  br label %103

40:                                               ; preds = %34
  %41 = load i8*, i8** %2, align 8
  %42 = call i64 @strstr(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @eLongState, align 4
  store i32 %45, i32* %3, align 4
  br label %102

46:                                               ; preds = %40
  %47 = load i8*, i8** %2, align 8
  %48 = call i64 @strstr(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @eCharState, align 4
  store i32 %51, i32* %3, align 4
  br label %101

52:                                               ; preds = %46
  %53 = load i8*, i8** %2, align 8
  %54 = call i64 @strstr(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @eModifierState, align 4
  store i32 %57, i32* %3, align 4
  br label %100

58:                                               ; preds = %52
  %59 = load i8*, i8** %2, align 8
  %60 = call i64 @strstr(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @eEnumState, align 4
  store i32 %63, i32* %3, align 4
  br label %99

64:                                               ; preds = %58
  %65 = load i8*, i8** %2, align 8
  %66 = call i64 @strstr(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @eArrayState, align 4
  store i32 %69, i32* %3, align 4
  br label %98

70:                                               ; preds = %64
  %71 = load i8*, i8** %2, align 8
  %72 = call i64 @strstr(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @eOneMethodState, align 4
  store i32 %75, i32* %3, align 4
  br label %97

76:                                               ; preds = %70
  %77 = load i8*, i8** %2, align 8
  %78 = call i64 @strstr(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @eVoidState, align 4
  store i32 %81, i32* %3, align 4
  br label %96

82:                                               ; preds = %76
  %83 = load i8*, i8** %2, align 8
  %84 = call i64 @strstr(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @eDoubleState, align 4
  store i32 %87, i32* %3, align 4
  br label %95

88:                                               ; preds = %82
  %89 = load i8*, i8** %2, align 8
  %90 = call i64 @strstr(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @eBitfieldState, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %88
  br label %95

95:                                               ; preds = %94, %86
  br label %96

96:                                               ; preds = %95, %80
  br label %97

97:                                               ; preds = %96, %74
  br label %98

98:                                               ; preds = %97, %68
  br label %99

99:                                               ; preds = %98, %62
  br label %100

100:                                              ; preds = %99, %56
  br label %101

101:                                              ; preds = %100, %50
  br label %102

102:                                              ; preds = %101, %44
  br label %103

103:                                              ; preds = %102, %38
  br label %104

104:                                              ; preds = %103, %32
  br label %105

105:                                              ; preds = %104, %26
  br label %106

106:                                              ; preds = %105, %20
  br label %107

107:                                              ; preds = %106, %14
  br label %108

108:                                              ; preds = %107, %8
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
