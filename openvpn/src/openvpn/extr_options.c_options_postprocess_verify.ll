; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_postprocess_verify.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_postprocess_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options*)* @options_postprocess_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @options_postprocess_verify(%struct.options* %0) #0 {
  %2 = alloca %struct.options*, align 8
  %3 = alloca i32, align 4
  store %struct.options* %0, %struct.options** %2, align 8
  %4 = load %struct.options*, %struct.options** %2, align 8
  %5 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %29, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.options*, %struct.options** %2, align 8
  %12 = getelementptr inbounds %struct.options, %struct.options* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %9
  %18 = load %struct.options*, %struct.options** %2, align 8
  %19 = load %struct.options*, %struct.options** %2, align 8
  %20 = getelementptr inbounds %struct.options, %struct.options* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @options_postprocess_verify_ce(%struct.options* %18, i32* %27)
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %9

32:                                               ; preds = %9
  br label %38

33:                                               ; preds = %1
  %34 = load %struct.options*, %struct.options** %2, align 8
  %35 = load %struct.options*, %struct.options** %2, align 8
  %36 = getelementptr inbounds %struct.options, %struct.options* %35, i32 0, i32 0
  %37 = call i32 @options_postprocess_verify_ce(%struct.options* %34, i32* %36)
  br label %38

38:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @options_postprocess_verify_ce(%struct.options*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
