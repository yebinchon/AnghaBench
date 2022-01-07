; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_markst.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_markst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subre = type { %struct.subre*, %struct.subre*, i32 }

@INUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subre*)* @markst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @markst(%struct.subre* %0) #0 {
  %2 = alloca %struct.subre*, align 8
  store %struct.subre* %0, %struct.subre** %2, align 8
  %3 = load %struct.subre*, %struct.subre** %2, align 8
  %4 = icmp ne %struct.subre* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i32, i32* @INUSE, align 4
  %8 = load %struct.subre*, %struct.subre** %2, align 8
  %9 = getelementptr inbounds %struct.subre, %struct.subre* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.subre*, %struct.subre** %2, align 8
  %13 = getelementptr inbounds %struct.subre, %struct.subre* %12, i32 0, i32 1
  %14 = load %struct.subre*, %struct.subre** %13, align 8
  %15 = icmp ne %struct.subre* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.subre*, %struct.subre** %2, align 8
  %18 = getelementptr inbounds %struct.subre, %struct.subre* %17, i32 0, i32 1
  %19 = load %struct.subre*, %struct.subre** %18, align 8
  call void @markst(%struct.subre* %19)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.subre*, %struct.subre** %2, align 8
  %22 = getelementptr inbounds %struct.subre, %struct.subre* %21, i32 0, i32 0
  %23 = load %struct.subre*, %struct.subre** %22, align 8
  %24 = icmp ne %struct.subre* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.subre*, %struct.subre** %2, align 8
  %27 = getelementptr inbounds %struct.subre, %struct.subre* %26, i32 0, i32 0
  %28 = load %struct.subre*, %struct.subre** %27, align 8
  call void @markst(%struct.subre* %28)
  br label %29

29:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
