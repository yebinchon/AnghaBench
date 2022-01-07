; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_mem_addeq_n.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_mem_addeq_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"esil_mem_addeq_n: invalid parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @esil_mem_addeq_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esil_mem_addeq_n(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @r_anal_esil_pop(i32* %11)
  store i8* %12, i8** %8, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @r_anal_esil_pop(i32* %13)
  store i8* %14, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %63

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @r_anal_esil_get_parm(i32* %18, i8* %19, i64* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @r_anal_esil_push(i32* %23, i8* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @esil_peek_n(i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = call i8* @r_anal_esil_pop(i32* %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %22
  %38 = load i32*, i32** %3, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @r_anal_esil_get_parm(i32* %38, i8* %39, i64* %7)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @r_anal_esil_pushnum(i32* %46, i64 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @r_anal_esil_push(i32* %49, i8* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @esil_poke_n(i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %62

61:                                               ; preds = %37, %22
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %17, %2
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i8* @r_anal_esil_pop(i32*) #1

declare dso_local i64 @r_anal_esil_get_parm(i32*, i8*, i64*) #1

declare dso_local i32 @r_anal_esil_push(i32*, i8*) #1

declare dso_local i32 @esil_peek_n(i32*, i32) #1

declare dso_local i32 @r_anal_esil_pushnum(i32*, i64) #1

declare dso_local i32 @esil_poke_n(i32*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
