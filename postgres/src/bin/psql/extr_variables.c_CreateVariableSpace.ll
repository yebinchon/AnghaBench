; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_variables.c_CreateVariableSpace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_variables.c_CreateVariableSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._variable = type { i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._variable* @CreateVariableSpace() #0 {
  %1 = alloca %struct._variable*, align 8
  %2 = call %struct._variable* @pg_malloc(i32 40)
  store %struct._variable* %2, %struct._variable** %1, align 8
  %3 = load %struct._variable*, %struct._variable** %1, align 8
  %4 = getelementptr inbounds %struct._variable, %struct._variable* %3, i32 0, i32 4
  store i32* null, i32** %4, align 8
  %5 = load %struct._variable*, %struct._variable** %1, align 8
  %6 = getelementptr inbounds %struct._variable, %struct._variable* %5, i32 0, i32 3
  store i32* null, i32** %6, align 8
  %7 = load %struct._variable*, %struct._variable** %1, align 8
  %8 = getelementptr inbounds %struct._variable, %struct._variable* %7, i32 0, i32 2
  store i32* null, i32** %8, align 8
  %9 = load %struct._variable*, %struct._variable** %1, align 8
  %10 = getelementptr inbounds %struct._variable, %struct._variable* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct._variable*, %struct._variable** %1, align 8
  %12 = getelementptr inbounds %struct._variable, %struct._variable* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct._variable*, %struct._variable** %1, align 8
  ret %struct._variable* %13
}

declare dso_local %struct._variable* @pg_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
