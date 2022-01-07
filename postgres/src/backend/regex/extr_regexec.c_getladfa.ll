; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_getladfa.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_getladfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfa = type { i32 }
%struct.vars = type { %struct.dfa**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.subre* }
%struct.subre = type { i32 }

@DOMALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dfa* (%struct.vars*, i32)* @getladfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dfa* @getladfa(%struct.vars* %0, i32 %1) #0 {
  %3 = alloca %struct.dfa*, align 8
  %4 = alloca %struct.vars*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.subre*, align 8
  store %struct.vars* %0, %struct.vars** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.vars*, %struct.vars** %4, align 8
  %12 = getelementptr inbounds %struct.vars, %struct.vars* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = load %struct.vars*, %struct.vars** %4, align 8
  %19 = getelementptr inbounds %struct.vars, %struct.vars* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load %struct.subre*, %struct.subre** %21, align 8
  %23 = icmp ne %struct.subre* %22, null
  br label %24

24:                                               ; preds = %17, %9, %2
  %25 = phi i1 [ false, %9 ], [ false, %2 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.vars*, %struct.vars** %4, align 8
  %29 = getelementptr inbounds %struct.vars, %struct.vars* %28, i32 0, i32 0
  %30 = load %struct.dfa**, %struct.dfa*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dfa*, %struct.dfa** %30, i64 %32
  %34 = load %struct.dfa*, %struct.dfa** %33, align 8
  %35 = icmp eq %struct.dfa* %34, null
  br i1 %35, label %36, label %64

36:                                               ; preds = %24
  %37 = load %struct.vars*, %struct.vars** %4, align 8
  %38 = getelementptr inbounds %struct.vars, %struct.vars* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load %struct.subre*, %struct.subre** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.subre, %struct.subre* %41, i64 %43
  store %struct.subre* %44, %struct.subre** %6, align 8
  %45 = load %struct.vars*, %struct.vars** %4, align 8
  %46 = load %struct.subre*, %struct.subre** %6, align 8
  %47 = getelementptr inbounds %struct.subre, %struct.subre* %46, i32 0, i32 0
  %48 = load %struct.vars*, %struct.vars** %4, align 8
  %49 = getelementptr inbounds %struct.vars, %struct.vars* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* @DOMALLOC, align 4
  %53 = call %struct.dfa* @newdfa(%struct.vars* %45, i32* %47, i32* %51, i32 %52)
  %54 = load %struct.vars*, %struct.vars** %4, align 8
  %55 = getelementptr inbounds %struct.vars, %struct.vars* %54, i32 0, i32 0
  %56 = load %struct.dfa**, %struct.dfa*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.dfa*, %struct.dfa** %56, i64 %58
  store %struct.dfa* %53, %struct.dfa** %59, align 8
  %60 = call i64 (...) @ISERR()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %36
  store %struct.dfa* null, %struct.dfa** %3, align 8
  br label %72

63:                                               ; preds = %36
  br label %64

64:                                               ; preds = %63, %24
  %65 = load %struct.vars*, %struct.vars** %4, align 8
  %66 = getelementptr inbounds %struct.vars, %struct.vars* %65, i32 0, i32 0
  %67 = load %struct.dfa**, %struct.dfa*** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.dfa*, %struct.dfa** %67, i64 %69
  %71 = load %struct.dfa*, %struct.dfa** %70, align 8
  store %struct.dfa* %71, %struct.dfa** %3, align 8
  br label %72

72:                                               ; preds = %64, %62
  %73 = load %struct.dfa*, %struct.dfa** %3, align 8
  ret %struct.dfa* %73
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.dfa* @newdfa(%struct.vars*, i32*, i32*, i32) #1

declare dso_local i64 @ISERR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
