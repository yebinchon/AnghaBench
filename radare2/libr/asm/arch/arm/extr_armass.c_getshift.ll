; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_getshift.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_getshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"LSL\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"LSR\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ASR\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ROR\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RRX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @getshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getshift(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca [128 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [6 x i8*], align 16
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = bitcast [6 x i8*]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 48, i1 false)
  %12 = bitcast i8* %11 to [6 x i8*]*
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %14, align 8
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %15, align 16
  %16 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %16, align 8
  %17 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i32 0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strncpy(i8* %18, i8* %19, i32 127)
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 5
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @r_str_casecmp(i8* %21, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i64 6, i64* %8, align 8
  br label %103

27:                                               ; preds = %1
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %29 = call i8* @strchr(i8* %28, i8 signext 32)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i64 0, i64* %2, align 8
  br label %105

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  %38 = call i32 @strncpy(i8* %35, i8* %37, i32 127)
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %53, %33
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @r_str_casecmp(i8* %45, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i64 1, i64* %8, align 8
  br label %56

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %39

56:                                               ; preds = %51, %39
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i64 0, i64* %2, align 8
  br label %105

60:                                               ; preds = %56
  %61 = load i64, i64* %7, align 8
  %62 = mul i64 %61, 2
  store i64 %62, i64* %8, align 8
  %63 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %64 = call i64 @getreg(i8* %63)
  store i64 %64, i64* %7, align 8
  %65 = icmp ne i64 %64, -1
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load i64, i64* %7, align 8
  %68 = shl i64 %67, 8
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = or i64 %69, 16
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = shl i64 %71, 4
  %73 = load i64, i64* %7, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp eq i64 %75, 6
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i64, i64* %7, align 8
  %79 = or i64 %78, 1048576
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %77, %66
  br label %102

81:                                               ; preds = %60
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %83 = call i8* @strchr(i8* %82, i8 signext 93)
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %86, %81
  %89 = load i64, i64* %7, align 8
  %90 = and i64 %89, 31
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  store i64 32, i64* %7, align 8
  br label %94

94:                                               ; preds = %93, %88
  %95 = load i64, i64* %7, align 8
  %96 = mul i64 %95, 8
  store i64 %96, i64* %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %7, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %7, align 8
  %101 = shl i64 %100, 4
  store i64 %101, i64* %7, align 8
  br label %102

102:                                              ; preds = %94, %80
  br label %103

103:                                              ; preds = %102, %26
  %104 = load i64, i64* %7, align 8
  store i64 %104, i64* %2, align 8
  br label %105

105:                                              ; preds = %103, %59, %32
  %106 = load i64, i64* %2, align 8
  ret i64 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @r_str_casecmp(i8*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @getreg(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
