; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_mem_inceq_n.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_mem_inceq_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [37 x i8] c"esil_mem_inceq_n: invalid parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @esil_mem_inceq_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esil_mem_inceq_n(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = call i8* @r_anal_esil_pop(%struct.TYPE_9__* %9)
  store i8* %10, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %62

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @r_anal_esil_push(%struct.TYPE_9__* %14, i8* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @esil_peek_n(%struct.TYPE_9__* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = call i8* @r_anal_esil_pop(%struct.TYPE_9__* %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %60

28:                                               ; preds = %13
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @r_anal_esil_get_parm(%struct.TYPE_9__* %29, i8* %30, i8** %6)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @r_anal_esil_pushnum(%struct.TYPE_9__* %45, i8* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @r_anal_esil_push(%struct.TYPE_9__* %48, i8* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @esil_poke_n(%struct.TYPE_9__* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %61

60:                                               ; preds = %28, %13
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %33
  br label %62

62:                                               ; preds = %61, %2
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i8* @r_anal_esil_pop(%struct.TYPE_9__*) #1

declare dso_local i32 @r_anal_esil_push(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @esil_peek_n(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @r_anal_esil_get_parm(%struct.TYPE_9__*, i8*, i8**) #1

declare dso_local i32 @r_anal_esil_pushnum(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @esil_poke_n(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
