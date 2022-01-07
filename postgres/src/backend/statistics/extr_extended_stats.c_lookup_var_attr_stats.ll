; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/statistics/extr_extended_stats.c_lookup_var_attr_stats.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/statistics/extr_extended_stats.c_lookup_var_attr_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__** (i32, i32*, i32, %struct.TYPE_7__**)* @lookup_var_attr_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__** @lookup_var_attr_stats(i32 %0, i32* %1, i32 %2, %struct.TYPE_7__** %3) #0 {
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__**, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @bms_num_members(i32* %14)
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call i64 @palloc(i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %20, %struct.TYPE_7__*** %12, align 8
  br label %21

21:                                               ; preds = %69, %4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @bms_next_member(i32* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %85

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 %29
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %30, align 8
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %56, %26
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %37, i64 %39
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %36, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %35
  %46 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %46, i64 %48
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %51, i64 %53
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %54, align 8
  br label %59

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %31

59:                                               ; preds = %45, %31
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %60, i64 %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %68 = call i32 @pfree(%struct.TYPE_7__** %67)
  store %struct.TYPE_7__** null, %struct.TYPE_7__*** %5, align 8
  br label %87

69:                                               ; preds = %59
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %70, i64 %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %21

85:                                               ; preds = %21
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  store %struct.TYPE_7__** %86, %struct.TYPE_7__*** %5, align 8
  br label %87

87:                                               ; preds = %85, %66
  %88 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  ret %struct.TYPE_7__** %88
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @bms_num_members(i32*) #1

declare dso_local i32 @bms_next_member(i32*, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_7__**) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
