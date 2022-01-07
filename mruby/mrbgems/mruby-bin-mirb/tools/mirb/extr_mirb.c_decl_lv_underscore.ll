; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-mirb/tools/mirb/extr_mirb.c_decl_lv_underscore.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-mirb/tools/mirb/extr_mirb.c_decl_lv_underscore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RProc = type { i32 }
%struct.mrb_parser_state = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"_=nil\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"create parser state error\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decl_lv_underscore(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.RProc*, align 8
  %6 = alloca %struct.mrb_parser_state*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.mrb_parser_state* @mrb_parse_string(i32* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %8)
  store %struct.mrb_parser_state* %9, %struct.mrb_parser_state** %6, align 8
  %10 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %6, align 8
  %11 = icmp eq %struct.mrb_parser_state* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @mrb_close(i32* %15)
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  %18 = call i32 @exit(i32 %17) #3
  unreachable

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %6, align 8
  %22 = call %struct.RProc* @mrb_generate_code(i32* %20, %struct.mrb_parser_state* %21)
  store %struct.RProc* %22, %struct.RProc** %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.RProc*, %struct.RProc** %5, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @mrb_top_self(i32* %25)
  %27 = call i32 @mrb_vm_run(i32* %23, %struct.RProc* %24, i32 %26, i32 0)
  %28 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %6, align 8
  %29 = call i32 @mrb_parser_free(%struct.mrb_parser_state* %28)
  ret void
}

declare dso_local %struct.mrb_parser_state* @mrb_parse_string(i32*, i8*, i32*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @mrb_close(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.RProc* @mrb_generate_code(i32*, %struct.mrb_parser_state*) #1

declare dso_local i32 @mrb_vm_run(i32*, %struct.RProc*, i32, i32) #1

declare dso_local i32 @mrb_top_self(i32*) #1

declare dso_local i32 @mrb_parser_free(%struct.mrb_parser_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
