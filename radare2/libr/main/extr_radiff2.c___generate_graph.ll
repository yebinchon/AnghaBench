; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_radiff2.c___generate_graph.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_radiff2.c___generate_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @__generate_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__generate_graph(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @r_return_if_fail(i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @get_graph_commands(i32* %11, i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %6, align 8
  %15 = call i32 @r_cons_break_push(i32* null, i32* null)
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %58

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %52, %18
  %20 = call i64 (...) @r_cons_is_breaked()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %55

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 10)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @strdup(i8* %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @free(i8* %40)
  br label %60

42:                                               ; preds = %34
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @r_core_cmd0(i32* %43, i8* %44)
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @free(i8* %46)
  br label %48

48:                                               ; preds = %42, %30
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %55

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %5, align 8
  br label %19

55:                                               ; preds = %51, %22
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @free(i8* %56)
  br label %58

58:                                               ; preds = %55, %2
  %59 = call i32 (...) @r_cons_break_pop()
  br label %60

60:                                               ; preds = %58, %39
  ret void
}

declare dso_local i32 @r_return_if_fail(i32*) #1

declare dso_local i8* @get_graph_commands(i32*, i32) #1

declare dso_local i32 @r_cons_break_push(i32*, i32*) #1

declare dso_local i64 @r_cons_is_breaked(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_core_cmd0(i32*, i8*) #1

declare dso_local i32 @r_cons_break_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
