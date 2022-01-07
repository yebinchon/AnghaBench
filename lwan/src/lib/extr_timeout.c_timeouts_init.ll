; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_timeout.c_timeouts_init.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_timeout.c_timeouts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeouts = type { i64, i64*, i64, i64** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.timeouts* (%struct.timeouts*)* @timeouts_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.timeouts* @timeouts_init(%struct.timeouts* %0) #0 {
  %2 = alloca %struct.timeouts*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.timeouts* %0, %struct.timeouts** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %41, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.timeouts*, %struct.timeouts** %2, align 8
  %8 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %7, i32 0, i32 3
  %9 = load i64**, i64*** %8, align 8
  %10 = bitcast i64** %9 to i64*
  %11 = call i32 @N_ELEMENTS(i64* %10)
  %12 = icmp ult i32 %6, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.timeouts*, %struct.timeouts** %2, align 8
  %17 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %16, i32 0, i32 3
  %18 = load i64**, i64*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64*, i64** %18, i64 %20
  %22 = load i64*, i64** %21, align 8
  %23 = call i32 @N_ELEMENTS(i64* %22)
  %24 = icmp ult i32 %15, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %14
  %26 = load %struct.timeouts*, %struct.timeouts** %2, align 8
  %27 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %26, i32 0, i32 3
  %28 = load i64**, i64*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64*, i64** %28, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = call i32 @list_head_init(i64* %35)
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %14

40:                                               ; preds = %14
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %5

44:                                               ; preds = %5
  %45 = load %struct.timeouts*, %struct.timeouts** %2, align 8
  %46 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %45, i32 0, i32 2
  %47 = call i32 @list_head_init(i64* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %62, %44
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.timeouts*, %struct.timeouts** %2, align 8
  %51 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @N_ELEMENTS(i64* %52)
  %54 = icmp ult i32 %49, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load %struct.timeouts*, %struct.timeouts** %2, align 8
  %57 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %3, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %48

65:                                               ; preds = %48
  %66 = load %struct.timeouts*, %struct.timeouts** %2, align 8
  %67 = getelementptr inbounds %struct.timeouts, %struct.timeouts* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.timeouts*, %struct.timeouts** %2, align 8
  ret %struct.timeouts* %68
}

declare dso_local i32 @N_ELEMENTS(i64*) #1

declare dso_local i32 @list_head_init(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
