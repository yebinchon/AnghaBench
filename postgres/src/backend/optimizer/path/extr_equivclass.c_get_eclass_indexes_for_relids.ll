; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_equivclass.c_get_eclass_indexes_for_relids.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_equivclass.c_get_eclass_indexes_for_relids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32)* @get_eclass_indexes_for_relids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_eclass_indexes_for_relids(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32 -1, i32* %6, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @Assert(i32 %10)
  br label %12

12:                                               ; preds = %17, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @bms_next_member(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %7, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @bms_add_members(i32* %25, i32 %28)
  store i32* %29, i32** %5, align 8
  br label %12

30:                                               ; preds = %12
  %31 = load i32*, i32** %5, align 8
  ret i32* %31
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @bms_next_member(i32, i32) #1

declare dso_local i32* @bms_add_members(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
