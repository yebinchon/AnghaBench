; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_freesubre.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_freesubre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }
%struct.subre = type { %struct.subre*, %struct.subre* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, %struct.subre*)* @freesubre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freesubre(%struct.vars* %0, %struct.subre* %1) #0 {
  %3 = alloca %struct.vars*, align 8
  %4 = alloca %struct.subre*, align 8
  store %struct.vars* %0, %struct.vars** %3, align 8
  store %struct.subre* %1, %struct.subre** %4, align 8
  %5 = load %struct.subre*, %struct.subre** %4, align 8
  %6 = icmp eq %struct.subre* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %32

8:                                                ; preds = %2
  %9 = load %struct.subre*, %struct.subre** %4, align 8
  %10 = getelementptr inbounds %struct.subre, %struct.subre* %9, i32 0, i32 1
  %11 = load %struct.subre*, %struct.subre** %10, align 8
  %12 = icmp ne %struct.subre* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.vars*, %struct.vars** %3, align 8
  %15 = load %struct.subre*, %struct.subre** %4, align 8
  %16 = getelementptr inbounds %struct.subre, %struct.subre* %15, i32 0, i32 1
  %17 = load %struct.subre*, %struct.subre** %16, align 8
  call void @freesubre(%struct.vars* %14, %struct.subre* %17)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.subre*, %struct.subre** %4, align 8
  %20 = getelementptr inbounds %struct.subre, %struct.subre* %19, i32 0, i32 0
  %21 = load %struct.subre*, %struct.subre** %20, align 8
  %22 = icmp ne %struct.subre* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.vars*, %struct.vars** %3, align 8
  %25 = load %struct.subre*, %struct.subre** %4, align 8
  %26 = getelementptr inbounds %struct.subre, %struct.subre* %25, i32 0, i32 0
  %27 = load %struct.subre*, %struct.subre** %26, align 8
  call void @freesubre(%struct.vars* %24, %struct.subre* %27)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.vars*, %struct.vars** %3, align 8
  %30 = load %struct.subre*, %struct.subre** %4, align 8
  %31 = call i32 @freesrnode(%struct.vars* %29, %struct.subre* %30)
  br label %32

32:                                               ; preds = %28, %7
  ret void
}

declare dso_local i32 @freesrnode(%struct.vars*, %struct.subre*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
