; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_radiff2.c_get_graph_commands.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_radiff2.c_get_graph_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@R_CORE_ANAL_GRAPHBODY = common dso_local global i32 0, align 4
@R_CORE_ANAL_GRAPHDIFF = common dso_local global i32 0, align 4
@R_CORE_ANAL_STAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32)* @get_graph_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_graph_commands(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call %struct.TYPE_2__* (...) @r_cons_singleton()
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = call %struct.TYPE_2__* (...) @r_cons_singleton()
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = call i32 (...) @r_cons_push()
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @R_CORE_ANAL_GRAPHBODY, align 4
  %17 = load i32, i32* @R_CORE_ANAL_GRAPHDIFF, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @R_CORE_ANAL_STAR, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @r_core_anal_graph(i32* %14, i32 %15, i32 %20)
  %22 = call i8* (...) @r_cons_get_buffer()
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i8*, i8** %6, align 8
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i8* [ %26, %25 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %27 ]
  %30 = call i8* @strdup(i8* %29)
  store i8* %30, i8** %7, align 8
  %31 = call i32 (...) @r_cons_pop()
  %32 = call i32 @r_cons_echo(i32* null)
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.TYPE_2__* (...) @r_cons_singleton()
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i8*, i8** %7, align 8
  ret i8* %36
}

declare dso_local %struct.TYPE_2__* @r_cons_singleton(...) #1

declare dso_local i32 @r_cons_push(...) #1

declare dso_local i32 @r_core_anal_graph(i32*, i32, i32) #1

declare dso_local i8* @r_cons_get_buffer(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_cons_pop(...) #1

declare dso_local i32 @r_cons_echo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
