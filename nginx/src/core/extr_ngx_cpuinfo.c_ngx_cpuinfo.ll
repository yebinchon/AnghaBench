; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_cpuinfo.c_ngx_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_cpuinfo.c_ngx_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"GenuineIntel\00", align 1
@ngx_cacheline_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"AuthenticAMD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_cpuinfo() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [5 x i64], align 16
  %3 = alloca [4 x i64], align 16
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0
  store i64 0, i64* %5, align 16
  %6 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 1
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 2
  store i64 0, i64* %7, align 16
  %8 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 3
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 4
  store i64 0, i64* %9, align 16
  %10 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0
  %11 = call i32 @ngx_cpuid(i32 0, i64* %10)
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 1
  %13 = bitcast i64* %12 to i32*
  store i32* %13, i32** %1, align 8
  %14 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0
  %15 = load i64, i64* %14, align 16
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  br label %51

18:                                               ; preds = %0
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %20 = call i32 @ngx_cpuid(i32 1, i64* %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i64 @ngx_strcmp(i32* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %26 = load i64, i64* %25, align 16
  %27 = and i64 %26, 3840
  %28 = ashr i64 %27, 8
  switch i64 %28, label %44 [
    i64 5, label %29
    i64 6, label %30
    i64 15, label %43
  ]

29:                                               ; preds = %24
  store i32 32, i32* @ngx_cacheline_size, align 4
  br label %44

30:                                               ; preds = %24
  store i32 32, i32* @ngx_cacheline_size, align 4
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = and i64 %32, 983040
  %34 = ashr i64 %33, 8
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %36 = load i64, i64* %35, align 16
  %37 = and i64 %36, 240
  %38 = or i64 %34, %37
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp sge i64 %39, 208
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 64, i32* @ngx_cacheline_size, align 4
  br label %42

42:                                               ; preds = %41, %30
  br label %44

43:                                               ; preds = %24
  store i32 128, i32* @ngx_cacheline_size, align 4
  br label %44

44:                                               ; preds = %24, %43, %42, %29
  br label %51

45:                                               ; preds = %18
  %46 = load i32*, i32** %1, align 8
  %47 = call i64 @ngx_strcmp(i32* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 64, i32* @ngx_cacheline_size, align 4
  br label %50

50:                                               ; preds = %49, %45
  br label %51

51:                                               ; preds = %17, %50, %44
  ret void
}

declare dso_local i32 @ngx_cpuid(i32, i64*) #1

declare dso_local i64 @ngx_strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
