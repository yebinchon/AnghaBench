; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/index/extr_genam.c_systable_getnext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/index/extr_genam.c_systable_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64 }

@ForwardScanDirection = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"system catalog scans with lossy index conditions are not implemented\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @systable_getnext(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32* null, i32** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i32, i32* @ForwardScanDirection, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @index_getnext_slot(%struct.TYPE_5__* %13, i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %10
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32* @ExecFetchSlotHeapTuple(i32 %23, i32 0, i32* %4)
  store i32* %24, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load i32, i32* @ERROR, align 4
  %38 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %20
  br label %40

40:                                               ; preds = %39, %10
  br label %62

41:                                               ; preds = %1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ForwardScanDirection, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @table_scan_getnextslot(i32 %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @ExecFetchSlotHeapTuple(i32 %54, i32 0, i32* %5)
  store i32* %55, i32** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @Assert(i32 %59)
  br label %61

61:                                               ; preds = %51, %41
  br label %62

62:                                               ; preds = %61, %40
  %63 = load i32*, i32** %3, align 8
  ret i32* %63
}

declare dso_local i64 @index_getnext_slot(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32* @ExecFetchSlotHeapTuple(i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @table_scan_getnextslot(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
