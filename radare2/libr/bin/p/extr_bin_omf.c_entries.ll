; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_omf.c_entries.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_omf.c_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@RBinAddr = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @entries(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load i32, i32* @RBinAddr, align 4
  %6 = load i32, i32* @addr, align 4
  %7 = mul nsw i32 %5, %6
  %8 = load i32, i32* @free, align 4
  %9 = call i32* @r_list_newf(i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %37

12:                                               ; preds = %1
  %13 = load i32, i32* @RBinAddr, align 4
  %14 = call i32 @R_NEW0(i32 %13)
  store i32 %14, i32* @addr, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @r_list_free(i32* %17)
  store i32* null, i32** %2, align 8
  br label %37

19:                                               ; preds = %12
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @addr, align 4
  %26 = call i32 @r_bin_omf_get_entry(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @addr, align 4
  %30 = call i32 @R_FREE(i32 %29)
  br label %35

31:                                               ; preds = %19
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @addr, align 4
  %34 = call i32 @r_list_append(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32*, i32** %4, align 8
  store i32* %36, i32** %2, align 8
  br label %37

37:                                               ; preds = %35, %16, %11
  %38 = load i32*, i32** %2, align 8
  ret i32* %38
}

declare dso_local i32* @r_list_newf(i32) #1

declare dso_local i32 @R_NEW0(i32) #1

declare dso_local i32 @r_list_free(i32*) #1

declare dso_local i32 @r_bin_omf_get_entry(i32, i32) #1

declare dso_local i32 @R_FREE(i32) #1

declare dso_local i32 @r_list_append(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
