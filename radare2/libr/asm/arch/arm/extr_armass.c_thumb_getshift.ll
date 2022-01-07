; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_thumb_getshift.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_thumb_getshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"LSL\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"LSR\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ASR\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ROR\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RRX\00", align 1
@err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @thumb_getshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb_getshift(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [6 x i8*], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = bitcast [6 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 48, i1 false)
  %13 = bitcast i8* %12 to [6 x i8*]*
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %15, align 8
  %16 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i32 0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %18, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* @err, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @r_str_case(i8* %21, i32 1)
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 5
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %23, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, 12288
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %107

34:                                               ; preds = %1
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 32)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @free(i8* %40)
  store i32 1, i32* @err, align 4
  store i32 0, i32* %2, align 4
  br label %107

42:                                               ; preds = %34
  %43 = load i8*, i8** %7, align 8
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  %46 = call i8* @strdup(i8* %45)
  store i8* %46, i8** %6, align 8
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %63, %42
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcmp(i8* %54, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  store i32 1, i32* %9, align 4
  br label %66

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %47

66:                                               ; preds = %61, %47
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  store i32 1, i32* @err, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @free(i8* %72)
  store i32 0, i32* %2, align 4
  br label %107

74:                                               ; preds = %66
  %75 = load i32, i32* %11, align 4
  %76 = shl i32 %75, 12
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @getnum(i8* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* @err, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %10, align 4
  %85 = icmp sgt i32 %84, 32
  br i1 %85, label %86, label %91

86:                                               ; preds = %83, %74
  store i32 1, i32* @err, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @free(i8* %89)
  store i32 0, i32* %2, align 4
  br label %107

91:                                               ; preds = %83
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 28
  %94 = shl i32 %93, 2
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, 3
  %99 = shl i32 %98, 14
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %91, %86, %69, %39, %28
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @r_str_case(i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @getnum(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
