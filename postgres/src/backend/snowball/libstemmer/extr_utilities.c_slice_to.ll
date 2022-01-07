; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_utilities.c_slice_to.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_utilities.c_slice_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @slice_to(%struct.SN_env* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.SN_env*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.SN_env*, %struct.SN_env** %4, align 8
  %8 = call i64 @slice_check(%struct.SN_env* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @lose_s(i32* %11)
  store i32* null, i32** %3, align 8
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.SN_env*, %struct.SN_env** %4, align 8
  %15 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.SN_env*, %struct.SN_env** %4, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @CAPACITY(i32* %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %13
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32* @increase_size(i32* %26, i32 %27)
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32* null, i32** %3, align 8
  br label %51

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %13
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.SN_env*, %struct.SN_env** %4, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.SN_env*, %struct.SN_env** %4, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memmove(i32* %34, i32 %41, i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @SET_SIZE(i32* %47, i32 %48)
  %50 = load i32*, i32** %5, align 8
  store i32* %50, i32** %3, align 8
  br label %51

51:                                               ; preds = %33, %31, %10
  %52 = load i32*, i32** %3, align 8
  ret i32* %52
}

declare dso_local i64 @slice_check(%struct.SN_env*) #1

declare dso_local i32 @lose_s(i32*) #1

declare dso_local i32 @CAPACITY(i32*) #1

declare dso_local i32* @increase_size(i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32, i32) #1

declare dso_local i32 @SET_SIZE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
