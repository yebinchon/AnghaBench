; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_macro.lex.yy.c_yy_get_previous_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_macro.lex.yy.c_yy_get_previous_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yy_start = common dso_local global i64 0, align 8
@YY_MORE_ADJ = common dso_local global i64 0, align 8
@yy_c_buf_p = common dso_local global i8* null, align 8
@yy_ec = common dso_local global i32* null, align 8
@yy_accept = common dso_local global i64* null, align 8
@yy_last_accepting_state = common dso_local global i64 0, align 8
@yy_last_accepting_cpos = common dso_local global i8* null, align 8
@yy_chk = common dso_local global i64* null, align 8
@yy_base = common dso_local global i64* null, align 8
@yy_def = common dso_local global i64* null, align 8
@yy_meta = common dso_local global i64* null, align 8
@yy_nxt = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @yy_get_previous_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @yy_get_previous_state() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @yy_start, align 8
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* @YY_MORE_ADJ, align 8
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** %2, align 8
  br label %7

7:                                                ; preds = %77, %0
  %8 = load i8*, i8** %2, align 8
  %9 = load i8*, i8** @yy_c_buf_p, align 8
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %11, label %80

11:                                               ; preds = %7
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load i32*, i32** @yy_ec, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @YY_SC_TO_UI(i8 signext %19)
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23, %16
  %25 = phi i32 [ %22, %16 ], [ 1, %23 ]
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %3, align 8
  %27 = load i64*, i64** @yy_accept, align 8
  %28 = load i64, i64* %1, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i64, i64* %1, align 8
  store i64 %33, i64* @yy_last_accepting_state, align 8
  %34 = load i8*, i8** %2, align 8
  store i8* %34, i8** @yy_last_accepting_cpos, align 8
  br label %35

35:                                               ; preds = %32, %24
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i64*, i64** @yy_chk, align 8
  %38 = load i64*, i64** @yy_base, align 8
  %39 = load i64, i64* %1, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %41, %42
  %44 = getelementptr inbounds i64, i64* %37, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %1, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %36
  %49 = load i64*, i64** @yy_def, align 8
  %50 = load i64, i64* %1, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %1, align 8
  %55 = load i64, i64* %1, align 8
  %56 = icmp uge i64 %55, 28
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load i64*, i64** @yy_meta, align 8
  %59 = load i64, i64* %3, align 8
  %60 = trunc i64 %59 to i32
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %57, %48
  br label %36

65:                                               ; preds = %36
  %66 = load i64*, i64** @yy_nxt, align 8
  %67 = load i64*, i64** @yy_base, align 8
  %68 = load i64, i64* %1, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %3, align 8
  %72 = trunc i64 %71 to i32
  %73 = zext i32 %72 to i64
  %74 = add i64 %70, %73
  %75 = getelementptr inbounds i64, i64* %66, i64 %74
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %1, align 8
  br label %77

77:                                               ; preds = %65
  %78 = load i8*, i8** %2, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %2, align 8
  br label %7

80:                                               ; preds = %7
  %81 = load i64, i64* %1, align 8
  ret i64 %81
}

declare dso_local i64 @YY_SC_TO_UI(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
