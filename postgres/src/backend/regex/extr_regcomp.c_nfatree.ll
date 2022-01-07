; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_nfatree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_nfatree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }
%struct.subre = type { %struct.subre*, %struct.subre*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vars*, %struct.subre*, i32*)* @nfatree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfatree(%struct.vars* %0, %struct.subre* %1, i32* %2) #0 {
  %4 = alloca %struct.vars*, align 8
  %5 = alloca %struct.subre*, align 8
  %6 = alloca i32*, align 8
  store %struct.vars* %0, %struct.vars** %4, align 8
  store %struct.subre* %1, %struct.subre** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.subre*, %struct.subre** %5, align 8
  %8 = icmp ne %struct.subre* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load %struct.subre*, %struct.subre** %5, align 8
  %11 = getelementptr inbounds %struct.subre, %struct.subre* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi i1 [ false, %3 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.subre*, %struct.subre** %5, align 8
  %19 = getelementptr inbounds %struct.subre, %struct.subre* %18, i32 0, i32 1
  %20 = load %struct.subre*, %struct.subre** %19, align 8
  %21 = icmp ne %struct.subre* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load %struct.vars*, %struct.vars** %4, align 8
  %24 = load %struct.subre*, %struct.subre** %5, align 8
  %25 = getelementptr inbounds %struct.subre, %struct.subre* %24, i32 0, i32 1
  %26 = load %struct.subre*, %struct.subre** %25, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @nfatree(%struct.vars* %23, %struct.subre* %26, i32* %27)
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %22, %14
  %31 = load %struct.subre*, %struct.subre** %5, align 8
  %32 = getelementptr inbounds %struct.subre, %struct.subre* %31, i32 0, i32 0
  %33 = load %struct.subre*, %struct.subre** %32, align 8
  %34 = icmp ne %struct.subre* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.vars*, %struct.vars** %4, align 8
  %37 = load %struct.subre*, %struct.subre** %5, align 8
  %38 = getelementptr inbounds %struct.subre, %struct.subre* %37, i32 0, i32 0
  %39 = load %struct.subre*, %struct.subre** %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @nfatree(%struct.vars* %36, %struct.subre* %39, i32* %40)
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %35, %30
  %44 = load %struct.vars*, %struct.vars** %4, align 8
  %45 = load %struct.subre*, %struct.subre** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i64 @nfanode(%struct.vars* %44, %struct.subre* %45, i32 0, i32* %46)
  ret i64 %47
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nfanode(%struct.vars*, %struct.subre*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
