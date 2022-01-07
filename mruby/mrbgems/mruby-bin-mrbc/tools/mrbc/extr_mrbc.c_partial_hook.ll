; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-mrbc/tools/mrbc/extr_mrbc.c_partial_hook.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-mrbc/tools/mrbc/extr_mrbc.c_partial_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_parser_state = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mrbc_args = type { i64, i64, i8**, i8* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: cannot open program file. (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrb_parser_state*)* @partial_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partial_hook(%struct.mrb_parser_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrb_parser_state*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca %struct.mrbc_args*, align 8
  %6 = alloca i8*, align 8
  store %struct.mrb_parser_state* %0, %struct.mrb_parser_state** %3, align 8
  %7 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %3, align 8
  %8 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.mrbc_args*
  store %struct.mrbc_args* %13, %struct.mrbc_args** %5, align 8
  %14 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %3, align 8
  %15 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %3, align 8
  %20 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @fclose(i32* %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.mrbc_args*, %struct.mrbc_args** %5, align 8
  %25 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mrbc_args*, %struct.mrbc_args** %5, align 8
  %28 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %3, align 8
  %33 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  store i32 -1, i32* %2, align 4
  br label %63

34:                                               ; preds = %23
  %35 = load %struct.mrbc_args*, %struct.mrbc_args** %5, align 8
  %36 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %35, i32 0, i32 2
  %37 = load i8**, i8*** %36, align 8
  %38 = load %struct.mrbc_args*, %struct.mrbc_args** %5, align 8
  %39 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = getelementptr inbounds i8*, i8** %37, i64 %40
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32* @fopen(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %3, align 8
  %47 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  %48 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %3, align 8
  %49 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %34
  %53 = load i32, i32* @stderr, align 4
  %54 = load %struct.mrbc_args*, %struct.mrbc_args** %5, align 8
  %55 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %56, i8* %57)
  store i32 -1, i32* %2, align 4
  br label %63

59:                                               ; preds = %34
  %60 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %3, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @mrb_parser_set_filename(%struct.mrb_parser_state* %60, i8* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %52, %31
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @mrb_parser_set_filename(%struct.mrb_parser_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
