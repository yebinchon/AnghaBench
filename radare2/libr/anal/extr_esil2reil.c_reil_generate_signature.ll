; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil2reil.c_reil_generate_signature.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil2reil.c_reil_generate_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reil_generate_signature(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10, %1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = call i32 @r_anal_esil_pushnum(%struct.TYPE_12__* %18, i32 0)
  br label %63

20:                                               ; preds = %10
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @r_anal_esil_pushnum(%struct.TYPE_12__* %21, i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = call i32 @r_anal_esil_pushnum(%struct.TYPE_12__* %29, i32 1)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = call i32 @reil_lsl(%struct.TYPE_12__* %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @r_anal_esil_push(%struct.TYPE_12__* %33, i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = call i32 @reil_and(%struct.TYPE_12__* %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = call i32* @reil_pop_arg(%struct.TYPE_12__* %42)
  store i32* %43, i32** %3, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %20
  br label %63

47:                                               ; preds = %20
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = call i32 @r_anal_esil_pushnum(%struct.TYPE_12__* %48, i32 %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @reil_push_arg(%struct.TYPE_12__* %56, i32* %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = call i32 @reil_lsr(%struct.TYPE_12__* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @free(i32* %61)
  br label %63

63:                                               ; preds = %47, %46, %17
  ret void
}

declare dso_local i32 @r_anal_esil_pushnum(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @reil_lsl(%struct.TYPE_12__*) #1

declare dso_local i32 @r_anal_esil_push(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @reil_and(%struct.TYPE_12__*) #1

declare dso_local i32* @reil_pop_arg(%struct.TYPE_12__*) #1

declare dso_local i32 @reil_push_arg(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @reil_lsr(%struct.TYPE_12__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
