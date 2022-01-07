; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_freesrnode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_freesrnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { %struct.subre*, i32* }
%struct.subre = type { %struct.subre*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, %struct.subre*)* @freesrnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freesrnode(%struct.vars* %0, %struct.subre* %1) #0 {
  %3 = alloca %struct.vars*, align 8
  %4 = alloca %struct.subre*, align 8
  store %struct.vars* %0, %struct.vars** %3, align 8
  store %struct.subre* %1, %struct.subre** %4, align 8
  %5 = load %struct.subre*, %struct.subre** %4, align 8
  %6 = icmp eq %struct.subre* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %40

8:                                                ; preds = %2
  %9 = load %struct.subre*, %struct.subre** %4, align 8
  %10 = getelementptr inbounds %struct.subre, %struct.subre* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @NULLCNFA(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = load %struct.subre*, %struct.subre** %4, align 8
  %16 = getelementptr inbounds %struct.subre, %struct.subre* %15, i32 0, i32 2
  %17 = call i32 @freecnfa(i32* %16)
  br label %18

18:                                               ; preds = %14, %8
  %19 = load %struct.subre*, %struct.subre** %4, align 8
  %20 = getelementptr inbounds %struct.subre, %struct.subre* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.vars*, %struct.vars** %3, align 8
  %22 = icmp ne %struct.vars* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.vars*, %struct.vars** %3, align 8
  %25 = getelementptr inbounds %struct.vars, %struct.vars* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.vars*, %struct.vars** %3, align 8
  %30 = getelementptr inbounds %struct.vars, %struct.vars* %29, i32 0, i32 0
  %31 = load %struct.subre*, %struct.subre** %30, align 8
  %32 = load %struct.subre*, %struct.subre** %4, align 8
  %33 = getelementptr inbounds %struct.subre, %struct.subre* %32, i32 0, i32 0
  store %struct.subre* %31, %struct.subre** %33, align 8
  %34 = load %struct.subre*, %struct.subre** %4, align 8
  %35 = load %struct.vars*, %struct.vars** %3, align 8
  %36 = getelementptr inbounds %struct.vars, %struct.vars* %35, i32 0, i32 0
  store %struct.subre* %34, %struct.subre** %36, align 8
  br label %40

37:                                               ; preds = %23, %18
  %38 = load %struct.subre*, %struct.subre** %4, align 8
  %39 = call i32 @FREE(%struct.subre* %38)
  br label %40

40:                                               ; preds = %7, %37, %28
  ret void
}

declare dso_local i32 @NULLCNFA(i32) #1

declare dso_local i32 @freecnfa(i32*) #1

declare dso_local i32 @FREE(%struct.subre*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
