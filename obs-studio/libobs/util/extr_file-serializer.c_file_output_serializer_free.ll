; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_file-serializer.c_file_output_serializer_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_file-serializer.c_file_output_serializer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serializer = type { %struct.file_output_data* }
%struct.file_output_data = type { %struct.file_output_data*, %struct.file_output_data*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_output_serializer_free(%struct.serializer* %0) #0 {
  %2 = alloca %struct.serializer*, align 8
  %3 = alloca %struct.file_output_data*, align 8
  store %struct.serializer* %0, %struct.serializer** %2, align 8
  %4 = load %struct.serializer*, %struct.serializer** %2, align 8
  %5 = getelementptr inbounds %struct.serializer, %struct.serializer* %4, i32 0, i32 0
  %6 = load %struct.file_output_data*, %struct.file_output_data** %5, align 8
  store %struct.file_output_data* %6, %struct.file_output_data** %3, align 8
  %7 = load %struct.file_output_data*, %struct.file_output_data** %3, align 8
  %8 = icmp ne %struct.file_output_data* %7, null
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load %struct.file_output_data*, %struct.file_output_data** %3, align 8
  %11 = getelementptr inbounds %struct.file_output_data, %struct.file_output_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @fclose(i32 %12)
  %14 = load %struct.file_output_data*, %struct.file_output_data** %3, align 8
  %15 = getelementptr inbounds %struct.file_output_data, %struct.file_output_data* %14, i32 0, i32 0
  %16 = load %struct.file_output_data*, %struct.file_output_data** %15, align 8
  %17 = icmp ne %struct.file_output_data* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %9
  %19 = load %struct.file_output_data*, %struct.file_output_data** %3, align 8
  %20 = getelementptr inbounds %struct.file_output_data, %struct.file_output_data* %19, i32 0, i32 1
  %21 = load %struct.file_output_data*, %struct.file_output_data** %20, align 8
  %22 = call i32 @os_unlink(%struct.file_output_data* %21)
  %23 = load %struct.file_output_data*, %struct.file_output_data** %3, align 8
  %24 = getelementptr inbounds %struct.file_output_data, %struct.file_output_data* %23, i32 0, i32 0
  %25 = load %struct.file_output_data*, %struct.file_output_data** %24, align 8
  %26 = load %struct.file_output_data*, %struct.file_output_data** %3, align 8
  %27 = getelementptr inbounds %struct.file_output_data, %struct.file_output_data* %26, i32 0, i32 1
  %28 = load %struct.file_output_data*, %struct.file_output_data** %27, align 8
  %29 = call i32 @os_rename(%struct.file_output_data* %25, %struct.file_output_data* %28)
  br label %30

30:                                               ; preds = %18, %9
  %31 = load %struct.file_output_data*, %struct.file_output_data** %3, align 8
  %32 = getelementptr inbounds %struct.file_output_data, %struct.file_output_data* %31, i32 0, i32 1
  %33 = load %struct.file_output_data*, %struct.file_output_data** %32, align 8
  %34 = call i32 @bfree(%struct.file_output_data* %33)
  %35 = load %struct.file_output_data*, %struct.file_output_data** %3, align 8
  %36 = getelementptr inbounds %struct.file_output_data, %struct.file_output_data* %35, i32 0, i32 0
  %37 = load %struct.file_output_data*, %struct.file_output_data** %36, align 8
  %38 = call i32 @bfree(%struct.file_output_data* %37)
  %39 = load %struct.file_output_data*, %struct.file_output_data** %3, align 8
  %40 = call i32 @bfree(%struct.file_output_data* %39)
  br label %41

41:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @os_unlink(%struct.file_output_data*) #1

declare dso_local i32 @os_rename(%struct.file_output_data*, %struct.file_output_data*) #1

declare dso_local i32 @bfree(%struct.file_output_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
