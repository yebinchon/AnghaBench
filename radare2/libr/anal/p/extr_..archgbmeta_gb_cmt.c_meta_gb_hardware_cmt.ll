; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_..archgbmeta_gb_cmt.c_meta_gb_hardware_cmt.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_..archgbmeta_gb_cmt.c_meta_gb_hardware_cmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_META_TYPE_COMMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"JOYPAD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Serial transfer data\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Serial transfer data - Ctl\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DIV\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TIMA\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"TMA\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"TAC\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Interrupt Flag\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"SOUND\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Wave Pattern RAM/SOUND\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"LCDC\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"LCDC - STAT\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"LCDC - Scroll y\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"LCDC - Scroll x\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"LCDC - y cord\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"LCDC - y cord cmp\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Interrupt Enable Flag\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @meta_gb_hardware_cmt(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %98 [
    i32 0, label %8
    i32 1, label %13
    i32 2, label %18
    i32 4, label %23
    i32 5, label %28
    i32 6, label %33
    i32 7, label %38
    i32 15, label %43
    i32 16, label %48
    i32 17, label %48
    i32 18, label %48
    i32 19, label %48
    i32 20, label %48
    i32 22, label %48
    i32 23, label %48
    i32 24, label %48
    i32 25, label %48
    i32 26, label %48
    i32 27, label %48
    i32 28, label %48
    i32 29, label %48
    i32 30, label %48
    i32 32, label %48
    i32 33, label %48
    i32 34, label %48
    i32 35, label %48
    i32 36, label %48
    i32 37, label %48
    i32 38, label %48
    i32 48, label %53
    i32 64, label %58
    i32 65, label %63
    i32 66, label %68
    i32 67, label %73
    i32 68, label %78
    i32 69, label %83
    i32 70, label %88
    i32 255, label %93
  ]

8:                                                ; preds = %3
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @r_meta_set_string(i32* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %98

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @r_meta_set_string(i32* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %98

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @r_meta_set_string(i32* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %98

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @r_meta_set_string(i32* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %98

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @r_meta_set_string(i32* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %98

33:                                               ; preds = %3
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @r_meta_set_string(i32* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %98

38:                                               ; preds = %3
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @r_meta_set_string(i32* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %98

43:                                               ; preds = %3
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @r_meta_set_string(i32* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %98

48:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @r_meta_set_string(i32* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %98

53:                                               ; preds = %3
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @r_meta_set_string(i32* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %98

58:                                               ; preds = %3
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @r_meta_set_string(i32* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %98

63:                                               ; preds = %3
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @r_meta_set_string(i32* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %98

68:                                               ; preds = %3
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @r_meta_set_string(i32* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %98

73:                                               ; preds = %3
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @r_meta_set_string(i32* %74, i32 %75, i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %98

78:                                               ; preds = %3
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @r_meta_set_string(i32* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %98

83:                                               ; preds = %3
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @r_meta_set_string(i32* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  br label %98

88:                                               ; preds = %3
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @r_meta_set_string(i32* %89, i32 %90, i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %98

93:                                               ; preds = %3
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @r_meta_set_string(i32* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  br label %98

98:                                               ; preds = %93, %3, %88, %83, %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28, %23, %18, %13, %8
  ret void
}

declare dso_local i32 @r_meta_set_string(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
