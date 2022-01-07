; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_textdupTtoW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_textdupTtoW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"   wstr=%s\0A\00", align 1
@LPSTR_TEXTCALLBACKW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"(callback)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i32)* @textdupTtoW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @textdupTtoW(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @is_text(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load i32, i32* @CP_ACP, align 4
  %17 = load i64, i64* %3, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @MultiByteToWideChar(i32 %16, i32 0, i32 %18, i32 -1, i32* null, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i32* @Alloc(i32 %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = load i32, i32* @CP_ACP, align 4
  %29 = load i64, i64* %3, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @MultiByteToWideChar(i32 %28, i32 0, i32 %30, i32 -1, i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %15
  br label %35

35:                                               ; preds = %34, %11, %2
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @LPSTR_TEXTCALLBACKW, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %43

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = call i8* @debugstr_w(i32* %41)
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %39 ], [ %42, %40 ]
  %45 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %5, align 8
  ret i32* %46
}

declare dso_local i64 @is_text(i64) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32* @Alloc(i32) #1

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local i8* @debugstr_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
