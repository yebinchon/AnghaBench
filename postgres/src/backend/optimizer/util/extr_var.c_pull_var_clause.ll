; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_var.c_pull_var_clause.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_var.c_pull_var_clause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@PVC_INCLUDE_AGGREGATES = common dso_local global i32 0, align 4
@PVC_RECURSE_AGGREGATES = common dso_local global i32 0, align 4
@PVC_INCLUDE_WINDOWFUNCS = common dso_local global i32 0, align 4
@PVC_RECURSE_WINDOWFUNCS = common dso_local global i32 0, align 4
@PVC_INCLUDE_PLACEHOLDERS = common dso_local global i32 0, align 4
@PVC_RECURSE_PLACEHOLDERS = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pull_var_clause(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PVC_INCLUDE_AGGREGATES, align 4
  %8 = load i32, i32* @PVC_RECURSE_AGGREGATES, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = load i32, i32* @PVC_INCLUDE_AGGREGATES, align 4
  %12 = load i32, i32* @PVC_RECURSE_AGGREGATES, align 4
  %13 = or i32 %11, %12
  %14 = icmp ne i32 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PVC_INCLUDE_WINDOWFUNCS, align 4
  %19 = load i32, i32* @PVC_RECURSE_WINDOWFUNCS, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = load i32, i32* @PVC_INCLUDE_WINDOWFUNCS, align 4
  %23 = load i32, i32* @PVC_RECURSE_WINDOWFUNCS, align 4
  %24 = or i32 %22, %23
  %25 = icmp ne i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PVC_INCLUDE_PLACEHOLDERS, align 4
  %30 = load i32, i32* @PVC_RECURSE_PLACEHOLDERS, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = load i32, i32* @PVC_INCLUDE_PLACEHOLDERS, align 4
  %34 = load i32, i32* @PVC_RECURSE_PLACEHOLDERS, align 4
  %35 = or i32 %33, %34
  %36 = icmp ne i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load i32*, i32** @NIL, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32* %39, i32** %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @pull_var_clause_walker(i32* %43, %struct.TYPE_3__* %5)
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  ret i32* %46
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pull_var_clause_walker(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
