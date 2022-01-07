; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_coff.c_imports.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_coff.c_imports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.r_bin_coff_obj = type { %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_18__*)* @imports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @imports(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.r_bin_coff_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.r_bin_coff_obj*
  store %struct.r_bin_coff_obj* %14, %struct.r_bin_coff_obj** %6, align 8
  %15 = call %struct.TYPE_16__* (...) @r_list_new()
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %5, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %2, align 8
  br label %68

19:                                               ; preds = %1
  %20 = load i32, i32* @free, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %6, align 8
  %24 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = icmp ne %struct.TYPE_14__* %25, null
  br i1 %26, label %27, label %66

27:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %62, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %6, align 8
  %31 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %28
  %36 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call %struct.TYPE_17__* @_fill_bin_import(%struct.r_bin_coff_obj* %36, i32 %37)
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %8, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = icmp ne %struct.TYPE_17__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %48 = call i32 @r_list_append(%struct.TYPE_16__* %46, %struct.TYPE_17__* %47)
  br label %49

49:                                               ; preds = %41, %35
  %50 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %6, align 8
  %51 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %50, i32 0, i32 0
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %28

65:                                               ; preds = %28
  br label %66

66:                                               ; preds = %65, %19
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %2, align 8
  br label %68

68:                                               ; preds = %66, %17
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %69
}

declare dso_local %struct.TYPE_16__* @r_list_new(...) #1

declare dso_local %struct.TYPE_17__* @_fill_bin_import(%struct.r_bin_coff_obj*, i32) #1

declare dso_local i32 @r_list_append(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
