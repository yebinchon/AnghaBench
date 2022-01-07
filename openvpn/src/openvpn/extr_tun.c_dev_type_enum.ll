; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_dev_type_enum.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_dev_type_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"tun\00", align 1
@DEV_TYPE_TUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"tap\00", align 1
@DEV_TYPE_TAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@DEV_TYPE_NULL = common dso_local global i32 0, align 4
@DEV_TYPE_UNDEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_type_enum(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @is_dev_type(i8* %6, i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @DEV_TYPE_TUN, align 4
  store i32 %11, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @is_dev_type(i8* %13, i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @DEV_TYPE_TAP, align 4
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @is_dev_type(i8* %20, i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @DEV_TYPE_NULL, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @DEV_TYPE_UNDEF, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %24, %17, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @is_dev_type(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
