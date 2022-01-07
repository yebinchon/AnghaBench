; ModuleID = '/home/carl/AnghaBench/netdata/web/api/tests/extr_......databaserrd.h_rrdset_slot2time.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/tests/extr_......databaserrd.h_rrdset_slot2time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [68 x i8] c"INTERNAL ERROR: caller of rrdset_slot2time() gives invalid slot %zu\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"INTERNAL ERROR: rrdset_slot2time() on %s returns time too far in the past\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"INTERNAL ERROR: rrdset_slot2time() on %s returns time into the future\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64)* @rrdset_slot2time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rrdset_slot2time(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp uge i64 %6, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %16, 1
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %11, %2
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = call i64 @rrdset_last_slot(%struct.TYPE_6__* %20)
  %22 = icmp ugt i64 %19, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = call i64 @rrdset_last_entry_t(%struct.TYPE_6__* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = call i64 @rrdset_last_slot(%struct.TYPE_6__* %29)
  %31 = load i64, i64* %4, align 8
  %32 = sub i64 %30, %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  %37 = mul i64 %28, %36
  %38 = sub i64 %25, %37
  store i64 %38, i64* %5, align 8
  br label %46

39:                                               ; preds = %18
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = call i64 @rrdset_last_entry_t(%struct.TYPE_6__* %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %41, %44
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %39, %23
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = call i64 @rrdset_first_entry_t(%struct.TYPE_6__* %48)
  %50 = icmp slt i64 %47, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @error(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = call i64 @rrdset_first_entry_t(%struct.TYPE_6__* %59)
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %54, %46
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = call i64 @rrdset_last_entry_t(%struct.TYPE_6__* %63)
  %65 = icmp sgt i64 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = call i64 @rrdset_last_entry_t(%struct.TYPE_6__* %74)
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %69, %61
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @rrdset_last_slot(%struct.TYPE_6__*) #1

declare dso_local i64 @rrdset_last_entry_t(%struct.TYPE_6__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rrdset_first_entry_t(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
