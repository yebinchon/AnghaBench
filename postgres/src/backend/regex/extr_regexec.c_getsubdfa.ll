; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_getsubdfa.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_getsubdfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfa = type { i32 }
%struct.vars = type { %struct.dfa**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.subre = type { i64, i32 }

@DOMALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dfa* (%struct.vars*, %struct.subre*)* @getsubdfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dfa* @getsubdfa(%struct.vars* %0, %struct.subre* %1) #0 {
  %3 = alloca %struct.dfa*, align 8
  %4 = alloca %struct.vars*, align 8
  %5 = alloca %struct.subre*, align 8
  store %struct.vars* %0, %struct.vars** %4, align 8
  store %struct.subre* %1, %struct.subre** %5, align 8
  %6 = load %struct.vars*, %struct.vars** %4, align 8
  %7 = getelementptr inbounds %struct.vars, %struct.vars* %6, i32 0, i32 0
  %8 = load %struct.dfa**, %struct.dfa*** %7, align 8
  %9 = load %struct.subre*, %struct.subre** %5, align 8
  %10 = getelementptr inbounds %struct.subre, %struct.subre* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.dfa*, %struct.dfa** %8, i64 %11
  %13 = load %struct.dfa*, %struct.dfa** %12, align 8
  %14 = icmp eq %struct.dfa* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.vars*, %struct.vars** %4, align 8
  %17 = load %struct.subre*, %struct.subre** %5, align 8
  %18 = getelementptr inbounds %struct.subre, %struct.subre* %17, i32 0, i32 1
  %19 = load %struct.vars*, %struct.vars** %4, align 8
  %20 = getelementptr inbounds %struct.vars, %struct.vars* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* @DOMALLOC, align 4
  %24 = call %struct.dfa* @newdfa(%struct.vars* %16, i32* %18, i32* %22, i32 %23)
  %25 = load %struct.vars*, %struct.vars** %4, align 8
  %26 = getelementptr inbounds %struct.vars, %struct.vars* %25, i32 0, i32 0
  %27 = load %struct.dfa**, %struct.dfa*** %26, align 8
  %28 = load %struct.subre*, %struct.subre** %5, align 8
  %29 = getelementptr inbounds %struct.subre, %struct.subre* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.dfa*, %struct.dfa** %27, i64 %30
  store %struct.dfa* %24, %struct.dfa** %31, align 8
  %32 = call i64 (...) @ISERR()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  store %struct.dfa* null, %struct.dfa** %3, align 8
  br label %45

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.vars*, %struct.vars** %4, align 8
  %38 = getelementptr inbounds %struct.vars, %struct.vars* %37, i32 0, i32 0
  %39 = load %struct.dfa**, %struct.dfa*** %38, align 8
  %40 = load %struct.subre*, %struct.subre** %5, align 8
  %41 = getelementptr inbounds %struct.subre, %struct.subre* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.dfa*, %struct.dfa** %39, i64 %42
  %44 = load %struct.dfa*, %struct.dfa** %43, align 8
  store %struct.dfa* %44, %struct.dfa** %3, align 8
  br label %45

45:                                               ; preds = %36, %34
  %46 = load %struct.dfa*, %struct.dfa** %3, align 8
  ret %struct.dfa* %46
}

declare dso_local %struct.dfa* @newdfa(%struct.vars*, i32*, i32*, i32) #1

declare dso_local i64 @ISERR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
