; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_remove_ref_whitespace.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_remove_ref_whitespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strref = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strref*)* @remove_ref_whitespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_ref_whitespace(%struct.strref* %0) #0 {
  %2 = alloca %struct.strref*, align 8
  store %struct.strref* %0, %struct.strref** %2, align 8
  %3 = load %struct.strref*, %struct.strref** %2, align 8
  %4 = getelementptr inbounds %struct.strref, %struct.strref* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %51

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %15, %7
  %9 = load %struct.strref*, %struct.strref** %2, align 8
  %10 = getelementptr inbounds %struct.strref, %struct.strref* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @is_whitespace(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load %struct.strref*, %struct.strref** %2, align 8
  %17 = getelementptr inbounds %struct.strref, %struct.strref* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %17, align 8
  %20 = load %struct.strref*, %struct.strref** %2, align 8
  %21 = getelementptr inbounds %struct.strref, %struct.strref* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 8
  br label %8

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %45, %24
  %26 = load %struct.strref*, %struct.strref** %2, align 8
  %27 = getelementptr inbounds %struct.strref, %struct.strref* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.strref*, %struct.strref** %2, align 8
  %32 = getelementptr inbounds %struct.strref, %struct.strref* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.strref*, %struct.strref** %2, align 8
  %35 = getelementptr inbounds %struct.strref, %struct.strref* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @is_whitespace(i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %30, %25
  %44 = phi i1 [ false, %25 ], [ %42, %30 ]
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = load %struct.strref*, %struct.strref** %2, align 8
  %47 = getelementptr inbounds %struct.strref, %struct.strref* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 8
  br label %25

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %1
  ret void
}

declare dso_local i64 @is_whitespace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
