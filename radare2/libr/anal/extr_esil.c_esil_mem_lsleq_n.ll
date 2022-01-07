; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_mem_lsleq_n.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_mem_lsleq_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"esil_mem_lsleq_n: shift is too big\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"esil_mem_lsleq_n: invalid parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @esil_mem_lsleq_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esil_mem_lsleq_n(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  br i1 %16, label %17, label %75

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @r_anal_esil_get_parm(i32* %18, i8* %19, i32* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %75

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %24, 32
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %74

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @r_anal_esil_push(i32* %29, i8* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @esil_peek_n(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = call i8* @r_anal_esil_pop(i32* %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %72

43:                                               ; preds = %28
  %44 = load i32*, i32** %3, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @r_anal_esil_get_parm(i32* %44, i8* %45, i32* %7)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 63
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %51
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @r_anal_esil_pushnum(i32* %57, i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @r_anal_esil_push(i32* %60, i8* %61)
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @esil_poke_n(i32* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %43, %28
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %56
  br label %74

74:                                               ; preds = %73, %26
  br label %75

75:                                               ; preds = %74, %17, %2
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i8* @r_anal_esil_pop(i32*) #1

declare dso_local i64 @r_anal_esil_get_parm(i32*, i8*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @r_anal_esil_push(i32*, i8*) #1

declare dso_local i32 @esil_peek_n(i32*, i32) #1

declare dso_local i32 @r_anal_esil_pushnum(i32*, i32) #1

declare dso_local i32 @esil_poke_n(i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
