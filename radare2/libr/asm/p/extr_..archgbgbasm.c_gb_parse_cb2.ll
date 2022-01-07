; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archgbgbasm.c_gb_parse_cb2.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archgbgbasm.c_gb_parse_cb2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"[hl]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @gb_parse_cb2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_parse_cb2(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %102

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @r_str_replace_in(i8* %20, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @r_str_replace_in(i8* %23, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @r_str_replace_in(i8* %26, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @strchr(i8* %29, i32 32)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %102

34:                                               ; preds = %19
  %35 = load i8*, i8** %12, align 8
  %36 = call i8* @strchr(i8* %35, i32 44)
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %102

40:                                               ; preds = %34
  %41 = load i8*, i8** %13, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %40
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %40
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 44, i8* %56, align 1
  store i32 0, i32* %5, align 4
  br label %102

57:                                               ; preds = %48
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i32 @r_num_get(i32* null, i8* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 44, i8* %62, align 1
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %63, 7
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %102

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 %68, 8
  %70 = add nsw i32 %67, %69
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %70, i32* %72, align 4
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = call i32 @gb_reg_idx(i8 signext %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %85

79:                                               ; preds = %66
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  store i32 1, i32* %5, align 4
  br label %102

85:                                               ; preds = %66
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = call i32 @strlen(i8* %87)
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %102

91:                                               ; preds = %85
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = call i32 @strncmp(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, 6
  store i32 %100, i32* %98, align 4
  store i32 1, i32* %5, align 4
  br label %102

101:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %96, %90, %79, %65, %54, %39, %33, %18
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_str_replace_in(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @r_num_get(i32*, i8*) #1

declare dso_local i32 @gb_reg_idx(i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
