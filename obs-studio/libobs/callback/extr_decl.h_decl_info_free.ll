; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_decl.h_decl_info_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_decl.h_decl_info_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decl_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decl_info*)* @decl_info_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decl_info_free(%struct.decl_info* %0) #0 {
  %2 = alloca %struct.decl_info*, align 8
  %3 = alloca i64, align 8
  store %struct.decl_info* %0, %struct.decl_info** %2, align 8
  %4 = load %struct.decl_info*, %struct.decl_info** %2, align 8
  %5 = icmp ne %struct.decl_info* %4, null
  br i1 %5, label %6, label %40

6:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %22, %6
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.decl_info*, %struct.decl_info** %2, align 8
  %10 = getelementptr inbounds %struct.decl_info, %struct.decl_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %8, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = load %struct.decl_info*, %struct.decl_info** %2, align 8
  %16 = getelementptr inbounds %struct.decl_info, %struct.decl_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %18, %19
  %21 = call i32 @decl_param_free(i64 %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.decl_info*, %struct.decl_info** %2, align 8
  %27 = getelementptr inbounds %struct.decl_info, %struct.decl_info* %26, i32 0, i32 1
  %28 = bitcast %struct.TYPE_2__* %27 to { i64, i64 }*
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @da_free(i64 %30, i64 %32)
  %34 = load %struct.decl_info*, %struct.decl_info** %2, align 8
  %35 = getelementptr inbounds %struct.decl_info, %struct.decl_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bfree(i32 %36)
  %38 = load %struct.decl_info*, %struct.decl_info** %2, align 8
  %39 = call i32 @memset(%struct.decl_info* %38, i32 0, i32 24)
  br label %40

40:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @decl_param_free(i64) #1

declare dso_local i32 @da_free(i64, i64) #1

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @memset(%struct.decl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
