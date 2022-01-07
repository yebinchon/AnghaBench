; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_in-binary.c_read_binary_scanfile.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_in-binary.c_read_binary_scanfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { i32, i32, i32 }
%struct.Output = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_binary_scanfile(%struct.Masscan* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.Masscan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.Output*, align 8
  %10 = alloca i32, align 4
  store %struct.Masscan* %0, %struct.Masscan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %11 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %12 = call %struct.Output* @output_create(%struct.Masscan* %11, i32 0)
  store %struct.Output* %12, %struct.Output** %9, align 8
  %13 = load %struct.Output*, %struct.Output** %9, align 8
  %14 = getelementptr inbounds %struct.Output, %struct.Output* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %34, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.Output*, %struct.Output** %9, align 8
  %22 = load i8**, i8*** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %28 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %27, i32 0, i32 2
  %29 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %30 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %29, i32 0, i32 1
  %31 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %32 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %31, i32 0, i32 0
  %33 = call i32 @parse_file(%struct.Output* %21, i8* %26, i32* %28, i32* %30, i32* %32)
  br label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %16

37:                                               ; preds = %16
  %38 = load %struct.Output*, %struct.Output** %9, align 8
  %39 = call i32 @output_destroy(%struct.Output* %38)
  ret void
}

declare dso_local %struct.Output* @output_create(%struct.Masscan*, i32) #1

declare dso_local i32 @parse_file(%struct.Output*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @output_destroy(%struct.Output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
