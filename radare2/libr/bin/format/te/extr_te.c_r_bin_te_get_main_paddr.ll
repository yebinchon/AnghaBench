; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_get_main_paddr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_get_main_paddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_te_obj_t = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Error: read (entry)\0A\00", align 1
@UT64_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @r_bin_te_get_main_paddr(%struct.r_bin_te_obj_t* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.r_bin_te_obj_t*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [512 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.r_bin_te_obj_t* %0, %struct.r_bin_te_obj_t** %3, align 8
  %8 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %9 = call %struct.TYPE_4__* @r_bin_te_get_entrypoint(%struct.r_bin_te_obj_t* %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %11 = icmp ne %struct.r_bin_te_obj_t* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %69

13:                                               ; preds = %1
  %14 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %15 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %21 = call i32 @r_buf_read_at(i32 %16, i32 %19, i32* %20, i32 2048)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %65

25:                                               ; preds = %13
  %26 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 367
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 232
  br i1 %28, label %29, label %64

29:                                               ; preds = %25
  %30 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 368
  %31 = load i32, i32* %30, align 16
  %32 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 369
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %31, %34
  %36 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 370
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 16
  %39 = or i32 %35, %38
  %40 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 371
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 24
  %43 = or i32 %39, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 372
  store i32 %45, i32* %7, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @UT64_MAX, align 8
  %52 = load i64, i64* %5, align 8
  %53 = sub nsw i64 %51, %52
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %29
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = call i32 @free(%struct.TYPE_4__* %56)
  %58 = load i64, i64* @UT64_MAX, align 8
  store i64 %58, i64* %2, align 8
  br label %69

59:                                               ; preds = %29
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %59, %25
  br label %65

65:                                               ; preds = %64, %23
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = call i32 @free(%struct.TYPE_4__* %66)
  %68 = load i64, i64* %5, align 8
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %65, %55, %12
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local %struct.TYPE_4__* @r_bin_te_get_entrypoint(%struct.r_bin_te_obj_t*) #1

declare dso_local i32 @r_buf_read_at(i32, i32, i32*, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
