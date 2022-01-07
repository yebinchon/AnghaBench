; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-strip/tools/mruby-strip/extr_mruby-strip.c_main.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-strip/tools/mruby-strip/extr_mruby-strip.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strip_args = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"no files to strip\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@mrb_default_allocf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Invalid mrb_state, exiting mruby-strip\0A\00", align 1
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.strip_args, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 1
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @print_usage(i8* %16)
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %18, i32* %3, align 4
  br label %46

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @parse_args(i32 %20, i8** %21, %struct.strip_args* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @print_usage(i8* %28)
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %19
  %32 = load i32, i32* @mrb_default_allocf, align 4
  %33 = call i32* @mrb_open_core(i32 %32, i32* null)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fputs(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %39, i32* %3, align 4
  br label %46

40:                                               ; preds = %31
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @strip(i32* %41, %struct.strip_args* %6)
  store i32 %42, i32* %9, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @mrb_close(i32* %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %36, %25, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_usage(i8*) #1

declare dso_local i32 @parse_args(i32, i8**, %struct.strip_args*) #1

declare dso_local i32* @mrb_open_core(i32, i32*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @strip(i32*, %struct.strip_args*) #1

declare dso_local i32 @mrb_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
