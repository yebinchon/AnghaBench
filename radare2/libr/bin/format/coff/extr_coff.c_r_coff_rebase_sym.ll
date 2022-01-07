; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/coff/extr_coff.c_r_coff_rebase_sym.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/coff/extr_coff.c_r_coff_rebase_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_coff_obj = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.coff_symbol = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_coff_obj*, %struct.TYPE_7__*, %struct.coff_symbol*)* @r_coff_rebase_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_coff_rebase_sym(%struct.r_bin_coff_obj* %0, %struct.TYPE_7__* %1, %struct.coff_symbol* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r_bin_coff_obj*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.coff_symbol*, align 8
  store %struct.r_bin_coff_obj* %0, %struct.r_bin_coff_obj** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.coff_symbol* %2, %struct.coff_symbol** %7, align 8
  %8 = load %struct.coff_symbol*, %struct.coff_symbol** %7, align 8
  %9 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = load %struct.coff_symbol*, %struct.coff_symbol** %7, align 8
  %14 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %5, align 8
  %17 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %40

22:                                               ; preds = %12
  %23 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %5, align 8
  %24 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.coff_symbol*, %struct.coff_symbol** %7, align 8
  %27 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.coff_symbol*, %struct.coff_symbol** %7, align 8
  %35 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %22, %21
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
