; ModuleID = '/home/carl/AnghaBench/php-src/ext/readline/extr_readline_cli.c_cli_completion_generator_func.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/readline/extr_readline_cli.c_cli_completion_generator_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@rl_completion_append_character = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32*, i32*)* @cli_completion_generator_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cli_completion_generator_func(i8* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = bitcast %struct.TYPE_4__** %9 to i8**
  %16 = call i8* @cli_completion_generator_ht(i8* %11, i64 %12, i32* %13, i32* %14, i8** %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  store i8 40, i8* @rl_completion_append_character, align 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ZSTR_VAL(i32 %23)
  %25 = call i8* @strdup(i32 %24)
  store i8* %25, i8** %10, align 8
  br label %26

26:                                               ; preds = %19, %4
  %27 = load i8*, i8** %10, align 8
  ret i8* %27
}

declare dso_local i8* @cli_completion_generator_ht(i8*, i64, i32*, i32*, i8**) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
