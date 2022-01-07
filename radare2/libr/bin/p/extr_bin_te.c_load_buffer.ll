; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_te.c_load_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_te.c_load_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_te_obj_t = type { i32 }

@UT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*, i64, i32*)* @load_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_buffer(i32* %0, i8** %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.r_bin_te_obj_t*, align 8
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i8**, i8*** %8, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br label %22

22:                                               ; preds = %19, %16, %5
  %23 = phi i1 [ false, %16 ], [ false, %5 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @r_return_val_if_fail(i32 %24, i32 0)
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @r_buf_size(i32* %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @UT64_MAX, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %22
  store i32 0, i32* %6, align 4
  br label %50

35:                                               ; preds = %30
  %36 = load i32*, i32** %9, align 8
  %37 = call %struct.r_bin_te_obj_t* @r_bin_te_new_buf(i32* %36)
  store %struct.r_bin_te_obj_t* %37, %struct.r_bin_te_obj_t** %13, align 8
  %38 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %13, align 8
  %39 = icmp ne %struct.r_bin_te_obj_t* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32*, i32** %11, align 8
  %42 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %13, align 8
  %43 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sdb_ns_set(i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %13, align 8
  %48 = bitcast %struct.r_bin_te_obj_t* %47 to i8*
  %49 = load i8**, i8*** %8, align 8
  store i8* %48, i8** %49, align 8
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %34
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @r_return_val_if_fail(i32, i32) #1

declare dso_local i64 @r_buf_size(i32*) #1

declare dso_local %struct.r_bin_te_obj_t* @r_bin_te_new_buf(i32*) #1

declare dso_local i32 @sdb_ns_set(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
