; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/extr_emit_arm.c_emit_set_string.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/extr_emit_arm.c_emit_set_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"  add pc, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c".string \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c".fill %d, 1, 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"  sub r0, pc, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"  str r0, [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32)* @emit_set_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_set_string(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = srem i32 %16, 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = sub nsw i32 4, %21
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %20, %4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %24, 4
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32*, i8*, ...) @r_egg_printf(i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @r_str_escape(i8* %32)
  store i8* %33, i8** %7, align 8
  %34 = call i32 (i32*, i8*, ...) @r_egg_printf(i32* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i32*, i8*, ...) @r_egg_printf(i32* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %23
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 12
  %47 = call i32 (i32*, i8*, ...) @r_egg_printf(i32* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %50 = load i8*, i8** %6, align 8
  %51 = call i8* @r_egg_mkvar(i32* %48, i8* %49, i8* %50, i32 0)
  store i8* %51, i8** %12, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 (i32*, i8*, ...) @r_egg_printf(i32* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @free(i8* %55)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_egg_printf(i32*, i8*, ...) #1

declare dso_local i8* @r_str_escape(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_egg_mkvar(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
