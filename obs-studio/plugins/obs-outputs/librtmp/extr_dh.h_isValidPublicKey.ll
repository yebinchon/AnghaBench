; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_dh.h_isValidPublicKey.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_dh.h_isValidPublicKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@RTMP_LOGERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"DH public key must be at least 2\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"DH public key must be at most p-2\00", align 1
@RTMP_LOGWARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"DH public key does not fulfill y^q mod p = 1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @isValidPublicKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isValidPublicKey(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @TRUE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @MP_new(i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @MP_set_w(i32 %16, i32 1)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @MP_cmp(i32 %18, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @RTMP_LOGERROR, align 4
  %24 = call i32 @RTMP_Log(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %7, align 4
  br label %57

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @MP_set(i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @MP_sub_w(i32 %30, i32 1)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @MP_cmp(i32 %32, i32 %33)
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i32, i32* @RTMP_LOGERROR, align 4
  %38 = call i32 @RTMP_Log(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %7, align 4
  br label %57

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @MP_modexp(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @MP_cmp_1(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @RTMP_LOGWARNING, align 4
  %54 = call i32 @RTMP_Log(i32 %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %43
  br label %56

56:                                               ; preds = %55, %40
  br label %57

57:                                               ; preds = %56, %36, %22
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @MP_free(i32 %58)
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_new(i32) #1

declare dso_local i32 @MP_set_w(i32, i32) #1

declare dso_local i64 @MP_cmp(i32, i32) #1

declare dso_local i32 @RTMP_Log(i32, i8*) #1

declare dso_local i32 @MP_set(i32, i32) #1

declare dso_local i32 @MP_sub_w(i32, i32) #1

declare dso_local i32 @MP_modexp(i32, i32, i32, i32) #1

declare dso_local i64 @MP_cmp_1(i32) #1

declare dso_local i32 @MP_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
