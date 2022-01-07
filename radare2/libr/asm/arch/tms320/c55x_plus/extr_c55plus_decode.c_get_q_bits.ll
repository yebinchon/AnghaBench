; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_get_q_bits.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_get_q_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"q_MMAP\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"q_LOCK\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"q_LINR\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"q_CIRC\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"q_PORT_READ\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"q_PORT_WRITE\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"q_XPORT_READ\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"q_XPORT_WRITE\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"q_SAT\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"q_XC0\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"q_XC1\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"Invalid token %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*)* @get_q_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_q_bits(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @r_str_ncasecmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 1
  store i32 %15, i32* %9, align 4
  br label %110

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @r_str_ncasecmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %109

23:                                               ; preds = %16
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @r_str_ncasecmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 2
  %30 = and i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %108

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @r_str_ncasecmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 3
  %38 = and i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %107

39:                                               ; preds = %31
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @r_str_ncasecmp(i8* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 4
  %46 = and i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %106

47:                                               ; preds = %39
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @r_str_ncasecmp(i8* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 12)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 5
  %54 = and i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %105

55:                                               ; preds = %47
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @r_str_ncasecmp(i8* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 12)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 6
  %62 = and i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %104

63:                                               ; preds = %55
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @r_str_ncasecmp(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 13)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %68, 7
  %70 = and i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %103

71:                                               ; preds = %63
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @r_str_ncasecmp(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = ashr i32 %76, 8
  %78 = and i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %102

79:                                               ; preds = %71
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @r_str_ncasecmp(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = ashr i32 %84, 9
  %86 = and i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %101

87:                                               ; preds = %79
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @r_str_ncasecmp(i8* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 5)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = ashr i32 %92, 10
  %94 = and i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %100

95:                                               ; preds = %87
  %96 = load i32, i32* @stderr, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @fprintf(i32 %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %97)
  %99 = load i32*, i32** %8, align 8
  store i32 -1, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %91
  br label %101

101:                                              ; preds = %100, %83
  br label %102

102:                                              ; preds = %101, %75
  br label %103

103:                                              ; preds = %102, %67
  br label %104

104:                                              ; preds = %103, %59
  br label %105

105:                                              ; preds = %104, %51
  br label %106

106:                                              ; preds = %105, %43
  br label %107

107:                                              ; preds = %106, %35
  br label %108

108:                                              ; preds = %107, %27
  br label %109

109:                                              ; preds = %108, %20
  br label %110

110:                                              ; preds = %109, %13
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

declare dso_local i32 @r_str_ncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
