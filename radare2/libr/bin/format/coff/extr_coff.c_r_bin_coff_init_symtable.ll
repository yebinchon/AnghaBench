; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/coff/extr_coff.c_r_bin_coff_init_symtable.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/coff/extr_coff.c_r_bin_coff_init_symtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_coff_obj = type { i32, i64, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"8c1I2S2c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"8c1i2s2c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_coff_obj*)* @r_bin_coff_init_symtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_bin_coff_init_symtable(%struct.r_bin_coff_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r_bin_coff_obj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.r_bin_coff_obj* %0, %struct.r_bin_coff_obj** %3, align 8
  %7 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %8 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %12 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 65535
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %18 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %96

23:                                               ; preds = %16
  %24 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %25 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %36 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %53, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %42 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %50 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %39, %33, %23
  store i32 0, i32* %2, align 4
  br label %96

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i64 @calloc(i32 1, i32 %58)
  %60 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %61 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %63 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %96

67:                                               ; preds = %54
  %68 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %69 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %73 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %77 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)
  %82 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %83 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @r_buf_fread_at(i32 %70, i32 %71, i32* %75, i8* %81, i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %67
  %91 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %92 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @R_FREE(i64 %93)
  store i32 0, i32* %2, align 4
  br label %96

95:                                               ; preds = %67
  store i32 1, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %90, %66, %53, %22
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @r_buf_fread_at(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @R_FREE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
