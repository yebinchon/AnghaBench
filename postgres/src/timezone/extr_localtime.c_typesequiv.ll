; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_localtime.c_typesequiv.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_localtime.c_typesequiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i32, i32*, %struct.ttinfo* }
%struct.ttinfo = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.state*, i32, i32)* @typesequiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typesequiv(%struct.state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttinfo*, align 8
  %9 = alloca %struct.ttinfo*, align 8
  store %struct.state* %0, %struct.state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.state*, %struct.state** %4, align 8
  %11 = icmp eq %struct.state* %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.state*, %struct.state** %4, align 8
  %18 = getelementptr inbounds %struct.state, %struct.state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.state*, %struct.state** %4, align 8
  %27 = getelementptr inbounds %struct.state, %struct.state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %21, %15, %12, %3
  store i32 0, i32* %7, align 4
  br label %95

31:                                               ; preds = %24
  %32 = load %struct.state*, %struct.state** %4, align 8
  %33 = getelementptr inbounds %struct.state, %struct.state* %32, i32 0, i32 2
  %34 = load %struct.ttinfo*, %struct.ttinfo** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %34, i64 %36
  store %struct.ttinfo* %37, %struct.ttinfo** %8, align 8
  %38 = load %struct.state*, %struct.state** %4, align 8
  %39 = getelementptr inbounds %struct.state, %struct.state* %38, i32 0, i32 2
  %40 = load %struct.ttinfo*, %struct.ttinfo** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %40, i64 %42
  store %struct.ttinfo* %43, %struct.ttinfo** %9, align 8
  %44 = load %struct.ttinfo*, %struct.ttinfo** %8, align 8
  %45 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ttinfo*, %struct.ttinfo** %9, align 8
  %48 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %31
  %52 = load %struct.ttinfo*, %struct.ttinfo** %8, align 8
  %53 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ttinfo*, %struct.ttinfo** %9, align 8
  %56 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %51
  %60 = load %struct.ttinfo*, %struct.ttinfo** %8, align 8
  %61 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ttinfo*, %struct.ttinfo** %9, align 8
  %64 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %59
  %68 = load %struct.ttinfo*, %struct.ttinfo** %8, align 8
  %69 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ttinfo*, %struct.ttinfo** %9, align 8
  %72 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %67
  %76 = load %struct.state*, %struct.state** %4, align 8
  %77 = getelementptr inbounds %struct.state, %struct.state* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.ttinfo*, %struct.ttinfo** %8, align 8
  %80 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load %struct.state*, %struct.state** %4, align 8
  %84 = getelementptr inbounds %struct.state, %struct.state* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.ttinfo*, %struct.ttinfo** %9, align 8
  %87 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = call i64 @strcmp(i32* %82, i32* %89)
  %91 = icmp eq i64 %90, 0
  br label %92

92:                                               ; preds = %75, %67, %59, %51, %31
  %93 = phi i1 [ false, %67 ], [ false, %59 ], [ false, %51 ], [ false, %31 ], [ %91, %75 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %92, %30
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i64 @strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
