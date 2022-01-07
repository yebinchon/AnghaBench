; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_list.c_list_concat_copy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_list.c_list_concat_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64 }

@NIL = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @list_concat_copy(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** @NIL, align 8
  %10 = icmp eq %struct.TYPE_10__* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = call %struct.TYPE_10__* @list_copy(%struct.TYPE_10__* %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %3, align 8
  br label %77

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @NIL, align 8
  %17 = icmp eq %struct.TYPE_10__* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = call %struct.TYPE_10__* @list_copy(%struct.TYPE_10__* %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %3, align 8
  br label %77

21:                                               ; preds = %14
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.TYPE_10__* @new_list(i64 %40, i32 %41)
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %6, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memcpy(i64 %45, i64 %48, i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memcpy(i64 %63, i64 %66, i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = call i32 @check_list_invariants(%struct.TYPE_10__* %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %3, align 8
  br label %77

77:                                               ; preds = %21, %18, %11
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %78
}

declare dso_local %struct.TYPE_10__* @list_copy(%struct.TYPE_10__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_10__* @new_list(i64, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @check_list_invariants(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
