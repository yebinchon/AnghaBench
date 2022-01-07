; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_fetch_interp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_fetch_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@InvalidOid = common dso_local global i32 0, align 4
@pltcl_interp_htab = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32)* @pltcl_fetch_interp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @pltcl_fetch_interp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (...) @GetUserId()
  store i32 %11, i32* %5, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @InvalidOid, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32, i32* @pltcl_interp_htab, align 4
  %16 = load i32, i32* @HASH_ENTER, align 4
  %17 = call %struct.TYPE_5__* @hash_search(i32 %15, i32* %5, i32 %16, i32* %7)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pltcl_init_interp(%struct.TYPE_5__* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %34
}

declare dso_local i32 @GetUserId(...) #1

declare dso_local %struct.TYPE_5__* @hash_search(i32, i32*, i32, i32*) #1

declare dso_local i32 @pltcl_init_interp(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
