; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_cleanst.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_cleanst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32*, %struct.subre* }
%struct.subre = type { i32, %struct.subre* }

@INUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*)* @cleanst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanst(%struct.vars* %0) #0 {
  %2 = alloca %struct.vars*, align 8
  %3 = alloca %struct.subre*, align 8
  %4 = alloca %struct.subre*, align 8
  store %struct.vars* %0, %struct.vars** %2, align 8
  %5 = load %struct.vars*, %struct.vars** %2, align 8
  %6 = getelementptr inbounds %struct.vars, %struct.vars* %5, i32 0, i32 1
  %7 = load %struct.subre*, %struct.subre** %6, align 8
  store %struct.subre* %7, %struct.subre** %3, align 8
  br label %8

8:                                                ; preds = %25, %1
  %9 = load %struct.subre*, %struct.subre** %3, align 8
  %10 = icmp ne %struct.subre* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load %struct.subre*, %struct.subre** %3, align 8
  %13 = getelementptr inbounds %struct.subre, %struct.subre* %12, i32 0, i32 1
  %14 = load %struct.subre*, %struct.subre** %13, align 8
  store %struct.subre* %14, %struct.subre** %4, align 8
  %15 = load %struct.subre*, %struct.subre** %3, align 8
  %16 = getelementptr inbounds %struct.subre, %struct.subre* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @INUSE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %11
  %22 = load %struct.subre*, %struct.subre** %3, align 8
  %23 = call i32 @FREE(%struct.subre* %22)
  br label %24

24:                                               ; preds = %21, %11
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.subre*, %struct.subre** %4, align 8
  store %struct.subre* %26, %struct.subre** %3, align 8
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.vars*, %struct.vars** %2, align 8
  %29 = getelementptr inbounds %struct.vars, %struct.vars* %28, i32 0, i32 1
  store %struct.subre* null, %struct.subre** %29, align 8
  %30 = load %struct.vars*, %struct.vars** %2, align 8
  %31 = getelementptr inbounds %struct.vars, %struct.vars* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  ret void
}

declare dso_local i32 @FREE(%struct.subre*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
