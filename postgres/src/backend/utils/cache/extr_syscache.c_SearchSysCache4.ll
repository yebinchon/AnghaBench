; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_syscache.c_SearchSysCache4.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_syscache.c_SearchSysCache4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SysCacheSize = common dso_local global i32 0, align 4
@SysCache = common dso_local global %struct.TYPE_4__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SearchSysCache4(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %5
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SysCacheSize, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SysCache, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i64 @PointerIsValid(%struct.TYPE_4__* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %17, %13, %5
  %26 = phi i1 [ false, %13 ], [ false, %5 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SysCache, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 4
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SysCache, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @SearchCatCache4(%struct.TYPE_4__* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  ret i32 %48
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PointerIsValid(%struct.TYPE_4__*) #1

declare dso_local i32 @SearchCatCache4(%struct.TYPE_4__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
