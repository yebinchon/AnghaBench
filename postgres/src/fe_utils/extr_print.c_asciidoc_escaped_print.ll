; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_asciidoc_escaped_print.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_asciidoc_escaped_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\\|\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @asciidoc_escaped_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asciidoc_escaped_print(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %18 [
    i32 124, label %15
  ]

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %16)
  br label %23

18:                                               ; preds = %11
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @fputc(i8 signext %20, i32* %21)
  br label %23

23:                                               ; preds = %18, %15
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %7

27:                                               ; preds = %7
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
