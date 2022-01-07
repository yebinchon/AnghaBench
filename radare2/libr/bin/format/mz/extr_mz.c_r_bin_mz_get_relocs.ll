; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/mz/extr_mz.c_r_bin_mz_get_relocs.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/mz/extr_mz.c_r_bin_mz_get_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_mz_reloc_t = type { i64, i32, i32 }
%struct.r_bin_mz_obj_t = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Error: calloc (struct r_bin_mz_reloc_t)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.r_bin_mz_reloc_t* @r_bin_mz_get_relocs(%struct.r_bin_mz_obj_t* %0) #0 {
  %2 = alloca %struct.r_bin_mz_reloc_t*, align 8
  %3 = alloca %struct.r_bin_mz_obj_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.r_bin_mz_reloc_t*, align 8
  store %struct.r_bin_mz_obj_t* %0, %struct.r_bin_mz_obj_t** %3, align 8
  %9 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %10 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %15 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  %19 = call %struct.r_bin_mz_reloc_t* @calloc(i32 %18, i32 16)
  store %struct.r_bin_mz_reloc_t* %19, %struct.r_bin_mz_reloc_t** %8, align 8
  %20 = load %struct.r_bin_mz_reloc_t*, %struct.r_bin_mz_reloc_t** %8, align 8
  %21 = icmp ne %struct.r_bin_mz_reloc_t* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = call i32 @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.r_bin_mz_reloc_t* null, %struct.r_bin_mz_reloc_t** %2, align 8
  br label %85

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %75, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %78

29:                                               ; preds = %25
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @r_bin_mz_va_to_la(i32 %35, i32 %41)
  %43 = load %struct.r_bin_mz_reloc_t*, %struct.r_bin_mz_reloc_t** %8, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.r_bin_mz_reloc_t, %struct.r_bin_mz_reloc_t* %43, i64 %45
  %47 = getelementptr inbounds %struct.r_bin_mz_reloc_t, %struct.r_bin_mz_reloc_t* %46, i32 0, i32 0
  store i64 %42, i64* %47, align 8
  %48 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %49 = load %struct.r_bin_mz_reloc_t*, %struct.r_bin_mz_reloc_t** %8, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.r_bin_mz_reloc_t, %struct.r_bin_mz_reloc_t* %49, i64 %51
  %53 = getelementptr inbounds %struct.r_bin_mz_reloc_t, %struct.r_bin_mz_reloc_t* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @r_bin_mz_la_to_pa(%struct.r_bin_mz_obj_t* %48, i64 %54)
  %56 = load %struct.r_bin_mz_reloc_t*, %struct.r_bin_mz_reloc_t** %8, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.r_bin_mz_reloc_t, %struct.r_bin_mz_reloc_t* %56, i64 %58
  %60 = getelementptr inbounds %struct.r_bin_mz_reloc_t, %struct.r_bin_mz_reloc_t* %59, i32 0, i32 2
  store i32 %55, i32* %60, align 4
  %61 = load %struct.r_bin_mz_reloc_t*, %struct.r_bin_mz_reloc_t** %8, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.r_bin_mz_reloc_t, %struct.r_bin_mz_reloc_t* %61, i64 %63
  %65 = getelementptr inbounds %struct.r_bin_mz_reloc_t, %struct.r_bin_mz_reloc_t* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %68 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %29
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %29
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %25

78:                                               ; preds = %25
  %79 = load %struct.r_bin_mz_reloc_t*, %struct.r_bin_mz_reloc_t** %8, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.r_bin_mz_reloc_t, %struct.r_bin_mz_reloc_t* %79, i64 %81
  %83 = getelementptr inbounds %struct.r_bin_mz_reloc_t, %struct.r_bin_mz_reloc_t* %82, i32 0, i32 1
  store i32 1, i32* %83, align 8
  %84 = load %struct.r_bin_mz_reloc_t*, %struct.r_bin_mz_reloc_t** %8, align 8
  store %struct.r_bin_mz_reloc_t* %84, %struct.r_bin_mz_reloc_t** %2, align 8
  br label %85

85:                                               ; preds = %78, %22
  %86 = load %struct.r_bin_mz_reloc_t*, %struct.r_bin_mz_reloc_t** %2, align 8
  ret %struct.r_bin_mz_reloc_t* %86
}

declare dso_local %struct.r_bin_mz_reloc_t* @calloc(i32, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i64 @r_bin_mz_va_to_la(i32, i32) #1

declare dso_local i32 @r_bin_mz_la_to_pa(%struct.r_bin_mz_obj_t*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
