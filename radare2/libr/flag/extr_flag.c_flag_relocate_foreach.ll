; ModuleID = '/home/carl/AnghaBench/radare2/libr/flag/extr_flag.c_flag_relocate_foreach.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/flag/extr_flag.c_flag_relocate_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.flag_relocate_t = type { i64, i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @flag_relocate_foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flag_relocate_foreach(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.flag_relocate_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.flag_relocate_t*
  store %struct.flag_relocate_t* %11, %struct.flag_relocate_t** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.flag_relocate_t*, %struct.flag_relocate_t** %5, align 8
  %16 = getelementptr inbounds %struct.flag_relocate_t, %struct.flag_relocate_t* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.flag_relocate_t*, %struct.flag_relocate_t** %5, align 8
  %20 = getelementptr inbounds %struct.flag_relocate_t, %struct.flag_relocate_t* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.flag_relocate_t*, %struct.flag_relocate_t** %5, align 8
  %23 = getelementptr inbounds %struct.flag_relocate_t, %struct.flag_relocate_t* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %21, %24
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.flag_relocate_t*, %struct.flag_relocate_t** %5, align 8
  %34 = getelementptr inbounds %struct.flag_relocate_t, %struct.flag_relocate_t* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %32, %35
  store i64 %36, i64* %8, align 8
  %37 = load %struct.flag_relocate_t*, %struct.flag_relocate_t** %5, align 8
  %38 = getelementptr inbounds %struct.flag_relocate_t, %struct.flag_relocate_t* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.flag_relocate_t*, %struct.flag_relocate_t** %5, align 8
  %41 = getelementptr inbounds %struct.flag_relocate_t, %struct.flag_relocate_t* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = and i64 %39, %42
  store i64 %43, i64* %9, align 8
  %44 = load %struct.flag_relocate_t*, %struct.flag_relocate_t** %5, align 8
  %45 = getelementptr inbounds %struct.flag_relocate_t, %struct.flag_relocate_t* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = load %struct.flag_relocate_t*, %struct.flag_relocate_t** %5, align 8
  %49 = getelementptr inbounds %struct.flag_relocate_t, %struct.flag_relocate_t* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.flag_relocate_t*, %struct.flag_relocate_t** %5, align 8
  %52 = getelementptr inbounds %struct.flag_relocate_t, %struct.flag_relocate_t* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %50, %53
  %55 = load i64, i64* %8, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* %9, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @update_flag_item_offset(i32 %46, %struct.TYPE_4__* %47, i64 %58, i32 0, i32 0)
  %60 = load %struct.flag_relocate_t*, %struct.flag_relocate_t** %5, align 8
  %61 = getelementptr inbounds %struct.flag_relocate_t, %struct.flag_relocate_t* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %29, %2
  ret i32 1
}

declare dso_local i32 @update_flag_item_offset(i32, %struct.TYPE_4__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
