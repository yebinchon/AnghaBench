; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_unicodemap.c_process_unicodemap.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_unicodemap.c_process_unicodemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@QK_UNICODEMAP = common dso_local global i64 0, align 8
@QK_UNICODEMAP_PAIR_MAX = common dso_local global i64 0, align 8
@unicode_map = common dso_local global i64 0, align 8
@UC_WIN = common dso_local global i64 0, align 8
@UC_OSX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_unicodemap(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @QK_UNICODEMAP, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %69

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @QK_UNICODEMAP_PAIR_MAX, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %69

16:                                               ; preds = %12
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %69

22:                                               ; preds = %16
  %23 = call i32 (...) @unicode_input_start()
  %24 = load i64, i64* @unicode_map, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @unicodemap_index(i64 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @pgm_read_dword(i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = call i64 (...) @get_unicode_input_mode()
  store i64 %29, i64* %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 1114111
  br i1 %31, label %39, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 65535
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @UC_WIN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %22
  %40 = call i32 (...) @unicode_input_cancel()
  br label %68

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 65535
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @UC_OSX, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 65536
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 1023
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 1047552
  %55 = ashr i32 %54, 10
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 55296
  %58 = call i32 @register_hex32(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 56320
  %61 = call i32 @register_hex32(i32 %60)
  %62 = call i32 (...) @unicode_input_finish()
  br label %67

63:                                               ; preds = %44, %41
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @register_hex32(i32 %64)
  %66 = call i32 (...) @unicode_input_finish()
  br label %67

67:                                               ; preds = %63, %48
  br label %68

68:                                               ; preds = %67, %39
  br label %69

69:                                               ; preds = %68, %16, %12, %2
  ret i32 1
}

declare dso_local i32 @unicode_input_start(...) #1

declare dso_local i32 @pgm_read_dword(i64) #1

declare dso_local i64 @unicodemap_index(i64) #1

declare dso_local i64 @get_unicode_input_mode(...) #1

declare dso_local i32 @unicode_input_cancel(...) #1

declare dso_local i32 @register_hex32(i32) #1

declare dso_local i32 @unicode_input_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
