; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/examples/extr_simple_parse.c_print_json_aux.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/examples/extr_simple_parse.c_print_json_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unrecognized JSON type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_json_aux(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @json_typeof(i32* %5)
  switch i32 %6, label %39 [
    i32 131, label %7
    i32 135, label %11
    i32 129, label %15
    i32 133, label %19
    i32 130, label %23
    i32 128, label %27
    i32 134, label %31
    i32 132, label %35
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @print_json_object(i32* %8, i32 %9)
  br label %44

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @print_json_array(i32* %12, i32 %13)
  br label %44

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @print_json_string(i32* %16, i32 %17)
  br label %44

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @print_json_integer(i32* %20, i32 %21)
  br label %44

23:                                               ; preds = %2
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @print_json_real(i32* %24, i32 %25)
  br label %44

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @print_json_true(i32* %28, i32 %29)
  br label %44

31:                                               ; preds = %2
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @print_json_false(i32* %32, i32 %33)
  br label %44

35:                                               ; preds = %2
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @print_json_null(i32* %36, i32 %37)
  br label %44

39:                                               ; preds = %2
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @json_typeof(i32* %41)
  %43 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %35, %31, %27, %23, %19, %15, %11, %7
  ret void
}

declare dso_local i32 @json_typeof(i32*) #1

declare dso_local i32 @print_json_object(i32*, i32) #1

declare dso_local i32 @print_json_array(i32*, i32) #1

declare dso_local i32 @print_json_string(i32*, i32) #1

declare dso_local i32 @print_json_integer(i32*, i32) #1

declare dso_local i32 @print_json_real(i32*, i32) #1

declare dso_local i32 @print_json_true(i32*, i32) #1

declare dso_local i32 @print_json_false(i32*, i32) #1

declare dso_local i32 @print_json_null(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
