; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdmisc.c_replace_ext.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdmisc.c_replace_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @replace_ext(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %55

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @strrchr(i8* %15, i8 signext 46)
  store i8* %16, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i8*, i8** %9, align 8
  %20 = call i32* @strchr(i8* %19, i8 signext 47)
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  store i64 %27, i64* %8, align 8
  br label %31

28:                                               ; preds = %18, %14
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = add i64 %33, %35
  %37 = add i64 %36, 1
  %38 = call i64 @mrb_malloc(i32* %32, i64 %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = add i64 %41, %43
  %45 = add i64 %44, 1
  %46 = call i32 @memset(i8* %40, i8 signext 0, i64 %45)
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @strncpy(i8* %47, i8* %48, i64 %49)
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @strcat(i8* %51, i8* %52)
  %54 = load i8*, i8** %10, align 8
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %31, %13
  %56 = load i8*, i8** %4, align 8
  ret i8* %56
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @mrb_malloc(i32*, i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
