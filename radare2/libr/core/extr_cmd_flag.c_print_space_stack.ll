; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_flag.c_print_space_stack.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_flag.c_print_space_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"ordinal\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"selected\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fs %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"fs+%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%-2d %s%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" (selected)\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32, i32*, i32)* @print_space_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_space_stack(i32* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %12, align 4
  switch i32 %19, label %50 [
    i32 106, label %20
    i32 42, label %42
  ]

20:                                               ; preds = %6
  %21 = load i8*, i8** %9, align 8
  %22 = call i8* @r_str_escape(i8* %21)
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %58

26:                                               ; preds = %20
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @pj_o(i32* %27)
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pj_ki(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %11, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = call i32 @pj_ks(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @pj_kb(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @pj_end(i32* %38)
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 @free(i8* %40)
  br label %58

42:                                               ; preds = %6
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  store i8* %46, i8** %15, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 (i8*, ...) @r_cons_printf(i8* %47, i8* %48)
  br label %58

50:                                               ; preds = %6
  %51 = load i32, i32* %8, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %57 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %51, i8* %52, i8* %56)
  br label %58

58:                                               ; preds = %25, %50, %42, %26
  ret void
}

declare dso_local i8* @r_str_escape(i8*) #1

declare dso_local i32 @pj_o(i32*) #1

declare dso_local i32 @pj_ki(i32*, i8*, i32) #1

declare dso_local i32 @pj_ks(i32*, i8*, i8*) #1

declare dso_local i32 @pj_kb(i32*, i8*, i32) #1

declare dso_local i32 @pj_end(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_cons_printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
