; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dex.c_getoffset.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dex.c_getoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.r_bin_dex_obj_t* }
%struct.r_bin_dex_obj_t = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"TODO: getoffset object\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32)* @getoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getoffset(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r_bin_dex_obj_t*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.r_bin_dex_obj_t*, %struct.r_bin_dex_obj_t** %12, align 8
  store %struct.r_bin_dex_obj_t* %13, %struct.r_bin_dex_obj_t** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %56 [
    i32 109, label %15
    i32 102, label %20
    i32 111, label %24
    i32 115, label %26
    i32 116, label %48
    i32 99, label %52
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load %struct.r_bin_dex_obj_t*, %struct.r_bin_dex_obj_t** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @offset_of_method_idx(%struct.TYPE_9__* %16, %struct.r_bin_dex_obj_t* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %57

20:                                               ; preds = %3
  %21 = load %struct.r_bin_dex_obj_t*, %struct.r_bin_dex_obj_t** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dex_field_offset(%struct.r_bin_dex_obj_t* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %57

24:                                               ; preds = %3
  %25 = call i32 @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %57

26:                                               ; preds = %3
  %27 = load %struct.r_bin_dex_obj_t*, %struct.r_bin_dex_obj_t** %8, align 8
  %28 = getelementptr inbounds %struct.r_bin_dex_obj_t, %struct.r_bin_dex_obj_t* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.r_bin_dex_obj_t*, %struct.r_bin_dex_obj_t** %8, align 8
  %35 = getelementptr inbounds %struct.r_bin_dex_obj_t, %struct.r_bin_dex_obj_t* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.r_bin_dex_obj_t*, %struct.r_bin_dex_obj_t** %8, align 8
  %40 = getelementptr inbounds %struct.r_bin_dex_obj_t, %struct.r_bin_dex_obj_t* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  br label %57

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %26
  br label %56

48:                                               ; preds = %3
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @dex_get_type_offset(%struct.TYPE_9__* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %57

52:                                               ; preds = %3
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dex_get_type_offset(%struct.TYPE_9__* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %3, %47
  store i32 -1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %52, %48, %38, %24, %20, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @offset_of_method_idx(%struct.TYPE_9__*, %struct.r_bin_dex_obj_t*, i32) #1

declare dso_local i32 @dex_field_offset(%struct.r_bin_dex_obj_t*, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @dex_get_type_offset(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
