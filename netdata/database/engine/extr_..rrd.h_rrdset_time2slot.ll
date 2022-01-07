; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_..rrd.h_rrdset_time2slot.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_..rrd.h_rrdset_time2slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [72 x i8] c"INTERNAL ERROR: rrdset_time2slot() on %s returns values outside entries\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64)* @rrdset_time2slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rrdset_time2slot(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = call i64 @rrdset_last_entry_t(%struct.TYPE_7__* %7)
  %9 = icmp sge i64 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = call i64 @rrdset_last_slot(%struct.TYPE_7__* %11)
  store i64 %12, i64* %5, align 8
  br label %64

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = call i64 @rrdset_first_entry_t(%struct.TYPE_7__* %15)
  %17 = icmp sle i64 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = call i64 @rrdset_first_slot(%struct.TYPE_7__* %19)
  store i64 %20, i64* %5, align 8
  br label %63

21:                                               ; preds = %13
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = call i64 @rrdset_last_slot(%struct.TYPE_7__* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = call i64 @rrdset_last_entry_t(%struct.TYPE_7__* %24)
  %26 = load i64, i64* %4, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = udiv i64 %27, %30
  %32 = icmp uge i64 %23, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %21
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = call i64 @rrdset_last_slot(%struct.TYPE_7__* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = call i64 @rrdset_last_entry_t(%struct.TYPE_7__* %36)
  %38 = load i64, i64* %4, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = udiv i64 %39, %42
  %44 = sub i64 %35, %43
  store i64 %44, i64* %5, align 8
  br label %62

45:                                               ; preds = %21
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = call i64 @rrdset_last_slot(%struct.TYPE_7__* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = call i64 @rrdset_last_entry_t(%struct.TYPE_7__* %48)
  %50 = load i64, i64* %4, align 8
  %51 = sub nsw i64 %49, %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = udiv i64 %51, %54
  %56 = sub i64 %47, %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add i64 %56, %60
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %45, %33
  br label %63

63:                                               ; preds = %62, %18
  br label %64

64:                                               ; preds = %63, %10
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = icmp uge i64 %65, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %64
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @error(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %74, %64
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local i64 @rrdset_last_entry_t(%struct.TYPE_7__*) #1

declare dso_local i64 @rrdset_last_slot(%struct.TYPE_7__*) #1

declare dso_local i64 @rrdset_first_entry_t(%struct.TYPE_7__*) #1

declare dso_local i64 @rrdset_first_slot(%struct.TYPE_7__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
