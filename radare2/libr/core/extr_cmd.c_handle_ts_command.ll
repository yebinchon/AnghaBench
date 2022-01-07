; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_handle_ts_command.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_handle_ts_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @handle_ts_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ts_command(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @r_line_hist_add(i8* %13)
  br label %15

15:                                               ; preds = %12, %4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @is_ts_arged_command(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @handle_ts_arged_command(i32* %20, i8* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  br label %46

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @is_ts_tmp_seek_command(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @handle_ts_tmp_seek_command(i32* %29, i8* %30, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %45

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @is_ts_interpret_command(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @handle_ts_interpret_command(i32* %39, i8* %40, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %38, %34
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45, %19
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @run_pending_anal(i32* %47)
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @r_line_hist_add(i8*) #1

declare dso_local i64 @is_ts_arged_command(i32) #1

declare dso_local i32 @handle_ts_arged_command(i32*, i8*, i32) #1

declare dso_local i64 @is_ts_tmp_seek_command(i32) #1

declare dso_local i32 @handle_ts_tmp_seek_command(i32*, i8*, i32, i32) #1

declare dso_local i64 @is_ts_interpret_command(i32) #1

declare dso_local i32 @handle_ts_interpret_command(i32*, i8*, i32, i32) #1

declare dso_local i32 @run_pending_anal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
