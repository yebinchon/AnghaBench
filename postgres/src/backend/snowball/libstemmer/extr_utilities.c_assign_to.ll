; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_utilities.c_assign_to.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_utilities.c_assign_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @assign_to(%struct.SN_env* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.SN_env*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.SN_env*, %struct.SN_env** %4, align 8
  %8 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @CAPACITY(i32* %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32* @increase_size(i32* %15, i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %36

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.SN_env*, %struct.SN_env** %4, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memmove(i32* %23, i32 %26, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @SET_SIZE(i32* %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %22, %20
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

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
