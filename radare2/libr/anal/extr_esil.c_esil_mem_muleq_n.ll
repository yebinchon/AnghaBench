; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_mem_muleq_n.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_mem_muleq_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"esil_mem_muleq_n: invalid parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @esil_mem_muleq_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esil_mem_muleq_n(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @r_anal_esil_pop(i32* %13)
  store i8* %14, i8** %10, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i8* @r_anal_esil_pop(i32* %15)
  store i8* %16, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %65

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i64 @r_anal_esil_get_parm(i32* %20, i8* %21, i32* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @r_anal_esil_push(i32* %25, i8* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @esil_peek_n(i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i8* @r_anal_esil_pop(i32* %35)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %24
  %40 = load i32*, i32** %4, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i64 @r_anal_esil_get_parm(i32* %40, i8* %41, i32* %9)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @r_anal_esil_pushnum(i32* %48, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @r_anal_esil_push(i32* %51, i8* %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @esil_poke_n(i32* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %64

63:                                               ; preds = %39, %24
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %19, %3
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i8* @r_anal_esil_pop(i32*) #1

declare dso_local i64 @r_anal_esil_get_parm(i32*, i8*, i32*) #1

declare dso_local i32 @r_anal_esil_push(i32*, i8*) #1

declare dso_local i32 @esil_peek_n(i32*, i32) #1

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
