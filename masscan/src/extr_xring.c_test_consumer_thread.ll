; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_xring.c_test_consumer_thread.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_xring.c_test_consumer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Test = type { i32, i32, i32, %struct.XRing* }
%struct.XRing = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_consumer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_consumer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Test*, align 8
  %4 = alloca %struct.XRing*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.Test*
  store %struct.Test* %8, %struct.Test** %3, align 8
  %9 = load %struct.Test*, %struct.Test** %3, align 8
  %10 = getelementptr inbounds %struct.Test, %struct.Test* %9, i32 0, i32 3
  %11 = load %struct.XRing*, %struct.XRing** %10, align 8
  store %struct.XRing* %11, %struct.XRing** %4, align 8
  br label %12

12:                                               ; preds = %32, %1
  %13 = load %struct.Test*, %struct.Test** %3, align 8
  %14 = getelementptr inbounds %struct.Test, %struct.Test* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.XRing*, %struct.XRing** %4, align 8
  %20 = call i64 @xring_remove(%struct.XRing* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %32

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.Test*, %struct.Test** %3, align 8
  %27 = getelementptr inbounds %struct.Test, %struct.Test* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  br label %32

32:                                               ; preds = %24, %23
  br label %12

33:                                               ; preds = %12
  br label %34

34:                                               ; preds = %56, %33
  %35 = load %struct.XRing*, %struct.XRing** %4, align 8
  %36 = getelementptr inbounds %struct.XRing, %struct.XRing* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.XRing*, %struct.XRing** %4, align 8
  %39 = getelementptr inbounds %struct.XRing, %struct.XRing* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = load %struct.XRing*, %struct.XRing** %4, align 8
  %44 = call i64 @xring_remove(%struct.XRing* %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %56

48:                                               ; preds = %42
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.Test*, %struct.Test** %3, align 8
  %51 = getelementptr inbounds %struct.Test, %struct.Test* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  br label %56

56:                                               ; preds = %48, %47
  br label %34

57:                                               ; preds = %34
  %58 = load %struct.Test*, %struct.Test** %3, align 8
  %59 = getelementptr inbounds %struct.Test, %struct.Test* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  ret void
}

declare dso_local i64 @xring_remove(%struct.XRing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
