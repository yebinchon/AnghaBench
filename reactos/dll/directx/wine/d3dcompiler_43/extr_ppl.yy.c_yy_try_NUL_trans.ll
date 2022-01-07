; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_ppl.yy.c_yy_try_NUL_trans.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_ppl.yy.c_yy_try_NUL_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yy_c_buf_p = common dso_local global i8* null, align 8
@yy_accept = common dso_local global i64* null, align 8
@yy_last_accepting_state = common dso_local global i64 0, align 8
@yy_last_accepting_cpos = common dso_local global i8* null, align 8
@yy_chk = common dso_local global i64* null, align 8
@yy_base = common dso_local global i64* null, align 8
@yy_def = common dso_local global i64* null, align 8
@yy_meta = common dso_local global i64* null, align 8
@yy_nxt = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @yy_try_NUL_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @yy_try_NUL_trans(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %6, i8** %4, align 8
  store i64 1, i64* %5, align 8
  %7 = load i64*, i64** @yy_accept, align 8
  %8 = load i64, i64* %2, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i64, i64* %2, align 8
  store i64 %13, i64* @yy_last_accepting_state, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** @yy_last_accepting_cpos, align 8
  br label %15

15:                                               ; preds = %12, %1
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i64*, i64** @yy_chk, align 8
  %18 = load i64*, i64** @yy_base, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %21, %22
  %24 = getelementptr inbounds i64, i64* %17, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %2, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %16
  %29 = load i64*, i64** @yy_def, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %2, align 8
  %35 = load i64, i64* %2, align 8
  %36 = icmp uge i64 %35, 421
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load i64*, i64** @yy_meta, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %37, %28
  br label %16

43:                                               ; preds = %16
  %44 = load i64*, i64** @yy_nxt, align 8
  %45 = load i64*, i64** @yy_base, align 8
  %46 = load i64, i64* %2, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %48, %49
  %51 = getelementptr inbounds i64, i64* %44, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %2, align 8
  %53 = load i64, i64* %2, align 8
  %54 = icmp eq i64 %53, 420
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %61

59:                                               ; preds = %43
  %60 = load i64, i64* %2, align 8
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi i64 [ 0, %58 ], [ %60, %59 ]
  ret i64 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
