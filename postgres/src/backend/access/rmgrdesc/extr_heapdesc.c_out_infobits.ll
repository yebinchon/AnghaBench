; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_heapdesc.c_out_infobits.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_heapdesc.c_out_infobits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLHL_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"IS_MULTI \00", align 1
@XLHL_XMAX_LOCK_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"LOCK_ONLY \00", align 1
@XLHL_XMAX_EXCL_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"EXCL_LOCK \00", align 1
@XLHL_XMAX_KEYSHR_LOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"KEYSHR_LOCK \00", align 1
@XLHL_KEYS_UPDATED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"KEYS_UPDATED \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @out_infobits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @out_infobits(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @XLHL_XMAX_IS_MULTI, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @appendStringInfoString(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @XLHL_XMAX_LOCK_ONLY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @appendStringInfoString(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @XLHL_XMAX_EXCL_LOCK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @appendStringInfoString(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @XLHL_XMAX_KEYSHR_LOCK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @appendStringInfoString(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @XLHL_KEYS_UPDATED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @appendStringInfoString(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
