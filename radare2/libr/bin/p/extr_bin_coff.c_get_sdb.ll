; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_coff.c_get_sdb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_coff.c_get_sdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.r_bin_coff_obj = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @get_sdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_sdb(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.r_bin_coff_obj*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.r_bin_coff_obj*
  store %struct.r_bin_coff_obj* %16, %struct.r_bin_coff_obj** %5, align 8
  %17 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %5, align 8
  %18 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %5, align 8
  %23 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %2, align 8
  br label %26

25:                                               ; preds = %12
  store i32* null, i32** %2, align 8
  br label %26

26:                                               ; preds = %25, %21, %11
  %27 = load i32*, i32** %2, align 8
  ret i32* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
