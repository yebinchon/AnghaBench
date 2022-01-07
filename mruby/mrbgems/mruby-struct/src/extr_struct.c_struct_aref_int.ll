; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_struct_aref_int.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_struct_aref_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_INDEX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"offset %i too small for struct(size:%i)\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"offset %i too large for struct(size:%i)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @struct_aref_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @struct_aref_int(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @RSTRUCT_LEN(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = add nsw i64 %12, %13
  br label %17

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i64 [ %14, %10 ], [ %16, %15 ]
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @E_INDEX_ERROR, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @RSTRUCT_LEN(i32 %25)
  %27 = call i32 @mrb_raisef(i32* %22, i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %26)
  br label %28

28:                                               ; preds = %21, %17
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @RSTRUCT_LEN(i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @E_INDEX_ERROR, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @RSTRUCT_LEN(i32 %37)
  %39 = call i32 @mrb_raisef(i32* %34, i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %36, i64 %38)
  br label %40

40:                                               ; preds = %33, %28
  %41 = load i32, i32* %5, align 4
  %42 = call i32* @RSTRUCT_PTR(i32 %41)
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  ret i32 %45
}

declare dso_local i64 @RSTRUCT_LEN(i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i64, i64) #1

declare dso_local i32* @RSTRUCT_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
