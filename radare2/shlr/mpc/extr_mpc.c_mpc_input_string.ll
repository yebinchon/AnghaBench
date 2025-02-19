; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_input_string.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_input_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8**)* @mpc_input_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_input_string(i32* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i8*, i8** %6, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @mpc_input_mark(i32* %10)
  br label %12

12:                                               ; preds = %25, %3
  %13 = load i8*, i8** %8, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @mpc_input_char(i32* %17, i8 signext %19, i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @mpc_input_rewind(i32* %23)
  store i32 0, i32* %4, align 4
  br label %41

25:                                               ; preds = %16
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %8, align 8
  br label %12

28:                                               ; preds = %12
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @mpc_input_unmark(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = add nsw i64 %33, 1
  %35 = call i8* @mpc_malloc(i32* %31, i64 %34)
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i8**, i8*** %7, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strcpy(i8* %38, i8* %39)
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %28, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @mpc_input_mark(i32*) #1

declare dso_local i32 @mpc_input_char(i32*, i8 signext, i32*) #1

declare dso_local i32 @mpc_input_rewind(i32*) #1

declare dso_local i32 @mpc_input_unmark(i32*) #1

declare dso_local i8* @mpc_malloc(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
