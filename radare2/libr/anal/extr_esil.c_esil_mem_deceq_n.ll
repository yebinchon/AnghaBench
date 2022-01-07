; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_mem_deceq_n.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_mem_deceq_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"esil_mem_deceq_n: invalid parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @esil_mem_deceq_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esil_mem_deceq_n(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @r_anal_esil_pop(i32* %9)
  store i8* %10, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @r_anal_esil_push(i32* %14, i8* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @esil_peek_n(i32* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @r_anal_esil_pop(i32* %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %13
  %29 = load i32*, i32** %3, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @r_anal_esil_get_parm(i32* %29, i8* %30, i32* %6)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @r_anal_esil_pushnum(i32* %36, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @r_anal_esil_push(i32* %39, i8* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @esil_poke_n(i32* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %52

51:                                               ; preds = %28, %13
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %33
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i8* @r_anal_esil_pop(i32*) #1

declare dso_local i32 @r_anal_esil_push(i32*, i8*) #1

declare dso_local i32 @esil_peek_n(i32*, i32) #1

declare dso_local i64 @r_anal_esil_get_parm(i32*, i8*, i32*) #1

declare dso_local i32 @r_anal_esil_pushnum(i32*, i32) #1

declare dso_local i32 @esil_poke_n(i32*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
