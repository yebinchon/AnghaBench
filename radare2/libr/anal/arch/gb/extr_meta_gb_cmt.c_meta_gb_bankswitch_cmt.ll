; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/arch/gb/extr_meta_gb_cmt.c_meta_gb_bankswitch_cmt.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/arch/gb/extr_meta_gb_cmt.c_meta_gb_bankswitch_cmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_META_TYPE_COMMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Bankswitch\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Ramswitch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @meta_gb_bankswitch_cmt(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 8191, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 16384
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 16384
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @r_meta_set_string(i32* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %12, %9, %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 24576, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 16383
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @r_meta_set_string(i32* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %23, %20
  ret void
}

declare dso_local i32 @r_meta_set_string(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
