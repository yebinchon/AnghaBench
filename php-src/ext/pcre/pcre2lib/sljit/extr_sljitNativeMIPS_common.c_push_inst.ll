; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeMIPS_common.c_push_inst.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeMIPS_common.c_push_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32, i32 }

@MOVABLE_INS = common dso_local global i32 0, align 4
@UNMOVABLE_INS = common dso_local global i32 0, align 4
@SLJIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*, i32, i32)* @push_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_inst(%struct.sljit_compiler* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sljit_compiler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MOVABLE_INS, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %27, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @UNMOVABLE_INS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 11
  %19 = and i32 %18, 31
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 31
  %26 = icmp eq i32 %22, %25
  br label %27

27:                                               ; preds = %21, %15, %11, %3
  %28 = phi i1 [ true, %15 ], [ true, %11 ], [ true, %3 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @SLJIT_ASSERT(i32 %29)
  %31 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %32 = call i64 @ensure_buf(%struct.sljit_compiler* %31, i32 4)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @FAIL_IF(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %42 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %47 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @SLJIT_SUCCESS, align 4
  ret i32 %48
}

declare dso_local i32 @SLJIT_ASSERT(i32) #1

declare dso_local i64 @ensure_buf(%struct.sljit_compiler*, i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
