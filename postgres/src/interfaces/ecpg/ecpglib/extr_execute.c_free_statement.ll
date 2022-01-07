; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_free_statement.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_free_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statement = type { %struct.statement*, i64, %struct.statement*, %struct.statement*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.statement*)* @free_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_statement(%struct.statement* %0) #0 {
  %2 = alloca %struct.statement*, align 8
  store %struct.statement* %0, %struct.statement** %2, align 8
  %3 = load %struct.statement*, %struct.statement** %2, align 8
  %4 = icmp eq %struct.statement* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %29

6:                                                ; preds = %1
  %7 = load %struct.statement*, %struct.statement** %2, align 8
  %8 = getelementptr inbounds %struct.statement, %struct.statement* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @free_variable(i32 %9)
  %11 = load %struct.statement*, %struct.statement** %2, align 8
  %12 = getelementptr inbounds %struct.statement, %struct.statement* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @free_variable(i32 %13)
  %15 = load %struct.statement*, %struct.statement** %2, align 8
  %16 = getelementptr inbounds %struct.statement, %struct.statement* %15, i32 0, i32 3
  %17 = load %struct.statement*, %struct.statement** %16, align 8
  %18 = call i32 @ecpg_free(%struct.statement* %17)
  %19 = load %struct.statement*, %struct.statement** %2, align 8
  %20 = getelementptr inbounds %struct.statement, %struct.statement* %19, i32 0, i32 2
  %21 = load %struct.statement*, %struct.statement** %20, align 8
  %22 = call i32 @ecpg_free(%struct.statement* %21)
  %23 = load %struct.statement*, %struct.statement** %2, align 8
  %24 = getelementptr inbounds %struct.statement, %struct.statement* %23, i32 0, i32 0
  %25 = load %struct.statement*, %struct.statement** %24, align 8
  %26 = call i32 @ecpg_free(%struct.statement* %25)
  %27 = load %struct.statement*, %struct.statement** %2, align 8
  %28 = call i32 @ecpg_free(%struct.statement* %27)
  br label %29

29:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @free_variable(i32) #1

declare dso_local i32 @ecpg_free(%struct.statement*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
