; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil2reil.c_reil_generate_partity_flag.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil2reil.c_reil_generate_partity_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reil_generate_partity_flag(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @r_anal_esil_push(%struct.TYPE_13__* %4, i32 %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = call i32 @r_anal_esil_pushnum(%struct.TYPE_13__* %11, i32 255)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = call i32 @reil_and(%struct.TYPE_13__* %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = call i32* @reil_pop_arg(%struct.TYPE_13__* %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %95

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = call i32 @r_anal_esil_pushnum(%struct.TYPE_13__* %21, i32 7)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @reil_push_arg(%struct.TYPE_13__* %23, i32* %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = call i32 @reil_lsr(%struct.TYPE_13__* %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = call i32 @r_anal_esil_pushnum(%struct.TYPE_13__* %28, i32 6)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @reil_push_arg(%struct.TYPE_13__* %30, i32* %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = call i32 @reil_lsr(%struct.TYPE_13__* %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = call i32 @reil_xor(%struct.TYPE_13__* %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = call i32 @r_anal_esil_pushnum(%struct.TYPE_13__* %37, i32 5)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @reil_push_arg(%struct.TYPE_13__* %39, i32* %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = call i32 @reil_lsr(%struct.TYPE_13__* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = call i32 @r_anal_esil_pushnum(%struct.TYPE_13__* %44, i32 4)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @reil_push_arg(%struct.TYPE_13__* %46, i32* %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = call i32 @reil_lsr(%struct.TYPE_13__* %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = call i32 @reil_xor(%struct.TYPE_13__* %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = call i32 @reil_xor(%struct.TYPE_13__* %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %56 = call i32 @r_anal_esil_pushnum(%struct.TYPE_13__* %55, i32 3)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @reil_push_arg(%struct.TYPE_13__* %57, i32* %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = call i32 @reil_lsr(%struct.TYPE_13__* %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = call i32 @r_anal_esil_pushnum(%struct.TYPE_13__* %62, i32 2)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @reil_push_arg(%struct.TYPE_13__* %64, i32* %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = call i32 @reil_lsr(%struct.TYPE_13__* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = call i32 @reil_xor(%struct.TYPE_13__* %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %72 = call i32 @r_anal_esil_pushnum(%struct.TYPE_13__* %71, i32 1)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @reil_push_arg(%struct.TYPE_13__* %73, i32* %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %77 = call i32 @reil_lsr(%struct.TYPE_13__* %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @reil_push_arg(%struct.TYPE_13__* %78, i32* %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = call i32 @reil_xor(%struct.TYPE_13__* %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = call i32 @reil_xor(%struct.TYPE_13__* %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %86 = call i32 @reil_xor(%struct.TYPE_13__* %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %88 = call i32 @r_anal_esil_pushnum(%struct.TYPE_13__* %87, i32 1)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = call i32 @reil_and(%struct.TYPE_13__* %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %92 = call i32 @reil_not(%struct.TYPE_13__* %91)
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @free(i32* %93)
  br label %95

95:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @r_anal_esil_push(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @r_anal_esil_pushnum(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @reil_and(%struct.TYPE_13__*) #1

declare dso_local i32* @reil_pop_arg(%struct.TYPE_13__*) #1

declare dso_local i32 @reil_push_arg(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @reil_lsr(%struct.TYPE_13__*) #1

declare dso_local i32 @reil_xor(%struct.TYPE_13__*) #1

declare dso_local i32 @reil_not(%struct.TYPE_13__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
