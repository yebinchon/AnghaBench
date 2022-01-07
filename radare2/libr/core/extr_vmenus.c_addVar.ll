; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_vmenus.c_addVar.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_vmenus.c_addVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Variable Name: \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Type of Variable (int32_t): \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"afv%c %s %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @addVar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addVar(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @__prompt(i8* %11, i32* null)
  store i8* %12, i8** %7, align 8
  %13 = call i8* @__prompt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %13, i8** %8, align 8
  %14 = call i8* @__prompt(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %14, i8** %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i8* @r_str_newf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %15, i8* %16, i8* %17, i8* %18)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @r_str_trim(i8* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @r_core_cmd0(i32* %22, i8* %23)
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @free(i8* %31)
  ret void
}

declare dso_local i8* @__prompt(i8*, i32*) #1

declare dso_local i8* @r_str_newf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @r_str_trim(i8*) #1

declare dso_local i32 @r_core_cmd0(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
