; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/wasm/extr_wasm.c_r_bin_wasm_get_custom_name_entries.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/wasm/extr_wasm.c_r_bin_wasm_get_custom_name_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64, i64 }

@R_BUF_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, %struct.TYPE_5__*)* @r_bin_wasm_get_custom_name_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @r_bin_wasm_get_custom_name_entries(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %10 = call i32* (...) @r_list_new()
  store i32* %10, i32** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @R_BUF_SET, align 4
  %19 = call i32 @r_buf_seek(i32* %14, i64 %17, i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = sub nsw i64 %26, 1
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @r_buf_size(i32* %29)
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %55

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @r_buf_tell(i32* %35)
  %37 = load i64, i64* %8, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32* @parse_custom_name_entry(i32* %40, i64 %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %55

46:                                               ; preds = %39
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @r_list_append(i32* %47, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %55

52:                                               ; preds = %46
  br label %34

53:                                               ; preds = %34
  %54 = load i32*, i32** %6, align 8
  store i32* %54, i32** %3, align 8
  br label %58

55:                                               ; preds = %51, %45, %32
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @r_list_free(i32* %56)
  store i32* null, i32** %3, align 8
  br label %58

58:                                               ; preds = %55, %53
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local i32* @r_list_new(...) #1

declare dso_local i32 @r_buf_seek(i32*, i64, i32) #1

declare dso_local i64 @r_buf_size(i32*) #1

declare dso_local i64 @r_buf_tell(i32*) #1

declare dso_local i32* @parse_custom_name_entry(i32*, i64) #1

declare dso_local i32 @r_list_append(i32*, i32*) #1

declare dso_local i32 @r_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
