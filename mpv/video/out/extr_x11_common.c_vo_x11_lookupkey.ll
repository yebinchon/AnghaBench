; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_lookupkey.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_lookupkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c" -+*/<>`~!@#$%^&()_{}:;\22',.?\\|=[]\00", align 1
@keymap = common dso_local global i32 0, align 4
@MP_KEY_UNKNOWN_RESERVED_START = common dso_local global i32 0, align 4
@MP_KEY_UNKNOWN_RESERVED_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vo_x11_lookupkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vo_x11_lookupkey(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sge i32 %5, 97
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp sle i32 %8, 122
  br i1 %9, label %33, label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp sge i32 %11, 65
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = icmp sle i32 %14, 90
  br i1 %15, label %33, label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* %2, align 4
  %18 = icmp sge i32 %17, 48
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = icmp sle i32 %20, 57
  br i1 %21, label %33, label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %2, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = icmp slt i32 %26, 256
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i64 @strchr(i8* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %19, %13, %7
  %34 = load i32, i32* %2, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %28, %25, %22
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @keymap, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @lookup_keymap_table(i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %2, align 4
  %47 = icmp sge i32 %46, 268959745
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32, i32* %2, align 4
  %50 = icmp sle i32 %49, 269025279
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i32, i32* @MP_KEY_UNKNOWN_RESERVED_START, align 4
  %53 = load i32, i32* %2, align 4
  %54 = sub nsw i32 %53, 268959744
  %55 = add nsw i32 %52, %54
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @MP_KEY_UNKNOWN_RESERVED_LAST, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %51
  br label %61

61:                                               ; preds = %60, %48, %45, %42
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i32 @lookup_keymap_table(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
