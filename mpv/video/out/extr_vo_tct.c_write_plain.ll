; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_tct.c_write_plain.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_tct.c_write_plain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESC_GOTOXY = common dso_local global i8* null, align 8
@ESC_COLOR256_BG = common dso_local global i8* null, align 8
@ESC_COLOR_BG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@ESC_CLEAR_COLORS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i8*, i32, i32)* @write_plain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_plain(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load i8*, i8** %12, align 8
  %24 = call i32 @assert(i8* %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %33

33:                                               ; preds = %90, %7
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %33
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %13, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  store i8* %43, i8** %18, align 8
  %44 = load i8*, i8** @ESC_GOTOXY, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %15, align 4
  %49 = call i32 (i8*, ...) @printf(i8* %44, i32 %47, i32 %48)
  store i32 0, i32* %19, align 4
  br label %50

50:                                               ; preds = %84, %37
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %50
  %55 = load i8*, i8** %18, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %18, align 8
  %57 = load i8, i8* %55, align 1
  store i8 %57, i8* %20, align 1
  %58 = load i8*, i8** %18, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %18, align 8
  %60 = load i8, i8* %58, align 1
  store i8 %60, i8* %21, align 1
  %61 = load i8*, i8** %18, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %18, align 8
  %63 = load i8, i8* %61, align 1
  store i8 %63, i8* %22, align 1
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %54
  %67 = load i8*, i8** @ESC_COLOR256_BG, align 8
  %68 = load i8, i8* %22, align 1
  %69 = load i8, i8* %21, align 1
  %70 = load i8, i8* %20, align 1
  %71 = call i32 @rgb_to_x256(i8 zeroext %68, i8 zeroext %69, i8 zeroext %70)
  %72 = call i32 (i8*, ...) @printf(i8* %67, i32 %71)
  br label %82

73:                                               ; preds = %54
  %74 = load i8*, i8** @ESC_COLOR_BG, align 8
  %75 = load i8, i8* %22, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* %21, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %20, align 1
  %80 = zext i8 %79 to i32
  %81 = call i32 (i8*, ...) @printf(i8* %74, i32 %76, i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %73, %66
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82
  %85 = load i32, i32* %19, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %19, align 4
  br label %50

87:                                               ; preds = %50
  %88 = load i8*, i8** @ESC_CLEAR_COLORS, align 8
  %89 = call i32 (i8*, ...) @printf(i8* %88)
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %33

93:                                               ; preds = %33
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @rgb_to_x256(i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
