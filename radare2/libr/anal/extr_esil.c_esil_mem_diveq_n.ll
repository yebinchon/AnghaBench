; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_mem_diveq_n.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_mem_diveq_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"esil_mem_diveq8: Division by zero!\00", align 1
@R_ANAL_TRAP_DIVBYZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"esil_mem_diveq_n: invalid parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @esil_mem_diveq_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esil_mem_diveq_n(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = call i8* @r_anal_esil_pop(%struct.TYPE_9__* %11)
  store i8* %12, i8** %8, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = call i8* @r_anal_esil_pop(%struct.TYPE_9__* %13)
  store i8* %14, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %74

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @r_anal_esil_get_parm(%struct.TYPE_9__* %18, i8* %19, i32* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @R_ANAL_TRAP_DIVBYZERO, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %73

32:                                               ; preds = %22
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @r_anal_esil_push(%struct.TYPE_9__* %33, i8* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @esil_peek_n(%struct.TYPE_9__* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %5, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = call i8* @r_anal_esil_pop(%struct.TYPE_9__* %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %71

47:                                               ; preds = %32
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i64 @r_anal_esil_get_parm(%struct.TYPE_9__* %48, i8* %49, i32* %7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %7, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @r_anal_esil_pushnum(%struct.TYPE_9__* %56, i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @r_anal_esil_push(%struct.TYPE_9__* %59, i8* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @esil_poke_n(%struct.TYPE_9__* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %72

71:                                               ; preds = %47, %32
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %52
  br label %73

73:                                               ; preds = %72, %25
  br label %74

74:                                               ; preds = %73, %17, %2
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i8* @r_anal_esil_pop(%struct.TYPE_9__*) #1

declare dso_local i64 @r_anal_esil_get_parm(%struct.TYPE_9__*, i8*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @r_anal_esil_push(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @esil_peek_n(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @r_anal_esil_pushnum(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @esil_poke_n(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
