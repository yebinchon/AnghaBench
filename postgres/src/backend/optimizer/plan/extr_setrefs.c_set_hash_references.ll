; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_setrefs.c_set_hash_references.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_setrefs.c_set_hash_references.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }

@OUTER_VAR = common dso_local global i32 0, align 4
@NIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32)* @set_hash_references to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_hash_references(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = bitcast %struct.TYPE_5__* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32* @build_tlist_index(i32 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* @OUTER_VAR, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @fix_upper_expr(i32* %19, i32* %22, i32* %23, i32 %24, i32 %25)
  %27 = inttoptr i64 %26 to i32*
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @set_dummy_tlist_references(%struct.TYPE_5__* %30, i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NIL, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  ret void
}

declare dso_local i32* @build_tlist_index(i32) #1

declare dso_local i64 @fix_upper_expr(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @set_dummy_tlist_references(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
