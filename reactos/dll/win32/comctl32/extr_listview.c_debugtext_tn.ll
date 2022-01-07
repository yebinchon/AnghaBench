; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_debugtext_tn.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_debugtext_tn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPSTR_TEXTCALLBACKW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"(callback)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i32)* @debugtext_tn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debugtext_tn(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @LPSTR_TEXTCALLBACKW, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %31

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @textlenT(i64 %13, i64 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @min(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @debugstr_wn(i64 %21, i32 %22)
  br label %29

24:                                               ; preds = %12
  %25 = load i64, i64* %5, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @debugstr_an(i8* %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i8* [ %23, %20 ], [ %28, %24 ]
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %29, %11
  %32 = load i8*, i8** %4, align 8
  ret i8* %32
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @textlenT(i64, i64) #1

declare dso_local i8* @debugstr_wn(i64, i32) #1

declare dso_local i8* @debugstr_an(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
