; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_append.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i64, i64, i64 }

@AUTO_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @banout_append(%struct.BannerOutput* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.BannerOutput*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.BannerOutput*, align 8
  store %struct.BannerOutput* %0, %struct.BannerOutput** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @AUTO_LEN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %13, %4
  %17 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.BannerOutput* @banout_find_proto(%struct.BannerOutput* %17, i32 %18)
  store %struct.BannerOutput* %19, %struct.BannerOutput** %9, align 8
  %20 = load %struct.BannerOutput*, %struct.BannerOutput** %9, align 8
  %21 = icmp eq %struct.BannerOutput* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.BannerOutput* @banout_new_proto(%struct.BannerOutput* %23, i32 %24)
  store %struct.BannerOutput* %25, %struct.BannerOutput** %9, align 8
  br label %26

26:                                               ; preds = %22, %16
  br label %27

27:                                               ; preds = %37, %26
  %28 = load %struct.BannerOutput*, %struct.BannerOutput** %9, align 8
  %29 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %30, %31
  %33 = load %struct.BannerOutput*, %struct.BannerOutput** %9, align 8
  %34 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp uge i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %39 = load %struct.BannerOutput*, %struct.BannerOutput** %9, align 8
  %40 = call %struct.BannerOutput* @banout_expand(%struct.BannerOutput* %38, %struct.BannerOutput* %39)
  store %struct.BannerOutput* %40, %struct.BannerOutput** %9, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load %struct.BannerOutput*, %struct.BannerOutput** %9, align 8
  %43 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.BannerOutput*, %struct.BannerOutput** %9, align 8
  %46 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @memcpy(i64 %48, i8* %49, i64 %50)
  %52 = load %struct.BannerOutput*, %struct.BannerOutput** %9, align 8
  %53 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = zext i32 %57 to i64
  %59 = load %struct.BannerOutput*, %struct.BannerOutput** %9, align 8
  %60 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.BannerOutput* @banout_find_proto(%struct.BannerOutput*, i32) #1

declare dso_local %struct.BannerOutput* @banout_new_proto(%struct.BannerOutput*, i32) #1

declare dso_local %struct.BannerOutput* @banout_expand(%struct.BannerOutput*, %struct.BannerOutput*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
