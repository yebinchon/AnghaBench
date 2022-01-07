; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/extr_query.c_rrd2rrdr.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/extr_query.c_rrd2rrdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }

@RRD_MEMORY_MODE_DBENGINE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rrd2rrdr(%struct.TYPE_8__* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = call i32 @rrdset_first_entry_t(%struct.TYPE_8__* %21)
  store i32 %22, i32* %19, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = call i32 @rrdset_last_entry_t(%struct.TYPE_8__* %23)
  store i32 %24, i32* %20, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %19, align 4
  %30 = load i32, i32* %20, align 4
  %31 = call i32 @rrdr_convert_before_after_to_absolute(i64* %11, i64* %12, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %18, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i64, i64* %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i8*, i8** %16, align 8
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %18, align 4
  %44 = call i32* @rrd2rrdr_fixedstep(%struct.TYPE_8__* %32, i64 %33, i64 %34, i64 %35, i32 %36, i64 %37, i32 %38, i8* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  ret i32* %44
}

declare dso_local i32 @rrdset_first_entry_t(%struct.TYPE_8__*) #1

declare dso_local i32 @rrdset_last_entry_t(%struct.TYPE_8__*) #1

declare dso_local i32 @rrdr_convert_before_after_to_absolute(i64*, i64*, i32, i32, i32) #1

declare dso_local i32* @rrd2rrdr_fixedstep(%struct.TYPE_8__*, i64, i64, i64, i32, i64, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
