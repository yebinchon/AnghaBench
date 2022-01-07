; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-proc-ext/src/extr_proc.c_mrb_proc_inspect.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-proc-ext/src/extr_proc.c_mrb_proc_inspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RProc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"#<Proc:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" (lambda)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_proc_inspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_proc_inspect(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RProc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.RProc* @mrb_proc_ptr(i32 %10)
  store %struct.RProc* %11, %struct.RProc** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_str_new_lit(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @mrb_cptr(i32 %17)
  %19 = call i32 @mrb_ptr_to_str(i32* %16, i32 %18)
  %20 = call i32 @mrb_str_cat_str(i32* %14, i32 %15, i32 %19)
  %21 = load %struct.RProc*, %struct.RProc** %5, align 8
  %22 = call i32 @MRB_PROC_CFUNC_P(%struct.RProc* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %2
  %25 = load %struct.RProc*, %struct.RProc** %5, align 8
  %26 = getelementptr inbounds %struct.RProc, %struct.RProc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mrb_str_cat_lit(i32* %29, i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i8* @mrb_debug_get_filename(i32* %32, i32* %33, i32 0)
  store i8* %34, i8** %8, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i8*, i8** %8, align 8
  br label %42

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i8* [ %40, %39 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %41 ]
  %44 = call i32 @mrb_str_cat_cstr(i32* %35, i32 %36, i8* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mrb_str_cat_lit(i32* %45, i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @mrb_debug_get_line(i32* %48, i32* %49, i32 0)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @mrb_fixnum_value(i32 %56)
  %58 = call i32 @mrb_str_concat(i32* %54, i32 %55, i32 %57)
  br label %63

59:                                               ; preds = %42
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @mrb_str_cat_lit(i32* %60, i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %53
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.RProc*, %struct.RProc** %5, align 8
  %66 = call i64 @MRB_PROC_STRICT_P(%struct.RProc* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @mrb_str_cat_lit(i32* %69, i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @mrb_str_cat_lit(i32* %73, i32 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.RProc* @mrb_proc_ptr(i32) #1

declare dso_local i32 @mrb_str_new_lit(i32*, i8*) #1

declare dso_local i32 @mrb_str_cat_str(i32*, i32, i32) #1

declare dso_local i32 @mrb_ptr_to_str(i32*, i32) #1

declare dso_local i32 @mrb_cptr(i32) #1

declare dso_local i32 @MRB_PROC_CFUNC_P(%struct.RProc*) #1

declare dso_local i32 @mrb_str_cat_lit(i32*, i32, i8*) #1

declare dso_local i8* @mrb_debug_get_filename(i32*, i32*, i32) #1

declare dso_local i32 @mrb_str_cat_cstr(i32*, i32, i8*) #1

declare dso_local i32 @mrb_debug_get_line(i32*, i32*, i32) #1

declare dso_local i32 @mrb_str_concat(i32*, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i64 @MRB_PROC_STRICT_P(%struct.RProc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
