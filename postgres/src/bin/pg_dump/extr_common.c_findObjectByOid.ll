; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_findObjectByOid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_findObjectByOid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32, %struct.TYPE_6__**, i32)* @findObjectByOid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @findObjectByOid(i32 %0, %struct.TYPE_6__** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca %struct.TYPE_6__**, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %60

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__** %16, %struct.TYPE_6__*** %8, align 8
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %17, i64 %20
  store %struct.TYPE_6__** %21, %struct.TYPE_6__*** %9, align 8
  br label %22

22:                                               ; preds = %58, %15
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %25 = icmp ule %struct.TYPE_6__** %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %30 = ptrtoint %struct.TYPE_6__** %28 to i64
  %31 = ptrtoint %struct.TYPE_6__** %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = sdiv i64 %33, 2
  %35 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %27, i64 %34
  store %struct.TYPE_6__** %35, %struct.TYPE_6__*** %10, align 8
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @oidcmp(i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %26
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %4, align 8
  br label %60

48:                                               ; preds = %26
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %52, i64 1
  store %struct.TYPE_6__** %53, %struct.TYPE_6__*** %8, align 8
  br label %57

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 -1
  store %struct.TYPE_6__** %56, %struct.TYPE_6__*** %9, align 8
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57
  br label %22

59:                                               ; preds = %22
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %60

60:                                               ; preds = %59, %45, %14
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %61
}

declare dso_local i32 @oidcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
