; ModuleID = '/home/carl/AnghaBench/micropython/examples/embedding/extr_hello-embed.c_execute_from_str.c'
source_filename = "/home/carl/AnghaBench/micropython/examples/embedding/extr_hello-embed.c_execute_from_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MP_PARSE_FILE_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execute_from_str(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = call i64 @nlr_push(%struct.TYPE_3__* %4)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i32* @mp_lexer_new_from_str_len(i32 %12, i8* %13, i32 %15, i32 0)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @MP_PARSE_FILE_INPUT, align 4
  %19 = call i32 @mp_parse(i32* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @mp_compile(i32* %7, i32 %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @mp_call_function_0(i32 %22)
  %24 = call i32 (...) @nlr_pop()
  store i32 0, i32* %2, align 4
  br label %28

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @nlr_push(%struct.TYPE_3__*) #1

declare dso_local i32* @mp_lexer_new_from_str_len(i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mp_parse(i32*, i32) #1

declare dso_local i32 @mp_compile(i32*, i32, i32) #1

declare dso_local i32 @mp_call_function_0(i32) #1

declare dso_local i32 @nlr_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
