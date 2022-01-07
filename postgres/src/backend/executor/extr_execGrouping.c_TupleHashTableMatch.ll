; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execGrouping.c_TupleHashTableMatch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execGrouping.c_TupleHashTableMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuplehash_hash = type { i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tuplehash_hash*, i32*, i32*)* @TupleHashTableMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TupleHashTableMatch(%struct.tuplehash_hash* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.tuplehash_hash*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.tuplehash_hash* %0, %struct.tuplehash_hash** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.tuplehash_hash*, %struct.tuplehash_hash** %4, align 8
  %12 = getelementptr inbounds %struct.tuplehash_hash, %struct.tuplehash_hash* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %9, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %10, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @ExecStoreMinimalTuple(i32* %26, i32* %27, i32 0)
  %29 = load i32*, i32** %6, align 8
  %30 = icmp eq i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = call i32 @ExecQualAndReset(i32 %44, %struct.TYPE_5__* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  ret i32 %49
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ExecStoreMinimalTuple(i32*, i32*, i32) #1

declare dso_local i32 @ExecQualAndReset(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
