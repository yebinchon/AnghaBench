; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_update_info_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_update_info_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_info = type { i64, i64, i64, i64, i64, %struct.update_info*, %struct.update_info*, %struct.update_info*, %struct.update_info*, %struct.update_info*, %struct.update_info*, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_info_destroy(%struct.update_info* %0) #0 {
  %2 = alloca %struct.update_info*, align 8
  store %struct.update_info* %0, %struct.update_info** %2, align 8
  %3 = load %struct.update_info*, %struct.update_info** %2, align 8
  %4 = icmp ne %struct.update_info* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %97

6:                                                ; preds = %1
  %7 = load %struct.update_info*, %struct.update_info** %2, align 8
  %8 = getelementptr inbounds %struct.update_info, %struct.update_info* %7, i32 0, i32 13
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.update_info*, %struct.update_info** %2, align 8
  %13 = getelementptr inbounds %struct.update_info, %struct.update_info* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pthread_join(i32 %14, i32* null)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.update_info*, %struct.update_info** %2, align 8
  %18 = getelementptr inbounds %struct.update_info, %struct.update_info* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @da_free(i32 %19)
  %21 = load %struct.update_info*, %struct.update_info** %2, align 8
  %22 = getelementptr inbounds %struct.update_info, %struct.update_info* %21, i32 0, i32 10
  %23 = load %struct.update_info*, %struct.update_info** %22, align 8
  %24 = call i32 @bfree(%struct.update_info* %23)
  %25 = load %struct.update_info*, %struct.update_info** %2, align 8
  %26 = getelementptr inbounds %struct.update_info, %struct.update_info* %25, i32 0, i32 9
  %27 = load %struct.update_info*, %struct.update_info** %26, align 8
  %28 = call i32 @bfree(%struct.update_info* %27)
  %29 = load %struct.update_info*, %struct.update_info** %2, align 8
  %30 = getelementptr inbounds %struct.update_info, %struct.update_info* %29, i32 0, i32 8
  %31 = load %struct.update_info*, %struct.update_info** %30, align 8
  %32 = call i32 @bfree(%struct.update_info* %31)
  %33 = load %struct.update_info*, %struct.update_info** %2, align 8
  %34 = getelementptr inbounds %struct.update_info, %struct.update_info* %33, i32 0, i32 7
  %35 = load %struct.update_info*, %struct.update_info** %34, align 8
  %36 = call i32 @bfree(%struct.update_info* %35)
  %37 = load %struct.update_info*, %struct.update_info** %2, align 8
  %38 = getelementptr inbounds %struct.update_info, %struct.update_info* %37, i32 0, i32 6
  %39 = load %struct.update_info*, %struct.update_info** %38, align 8
  %40 = call i32 @bfree(%struct.update_info* %39)
  %41 = load %struct.update_info*, %struct.update_info** %2, align 8
  %42 = getelementptr inbounds %struct.update_info, %struct.update_info* %41, i32 0, i32 5
  %43 = load %struct.update_info*, %struct.update_info** %42, align 8
  %44 = call i32 @bfree(%struct.update_info* %43)
  %45 = load %struct.update_info*, %struct.update_info** %2, align 8
  %46 = getelementptr inbounds %struct.update_info, %struct.update_info* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %16
  %50 = load %struct.update_info*, %struct.update_info** %2, align 8
  %51 = getelementptr inbounds %struct.update_info, %struct.update_info* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @curl_slist_free_all(i64 %52)
  br label %54

54:                                               ; preds = %49, %16
  %55 = load %struct.update_info*, %struct.update_info** %2, align 8
  %56 = getelementptr inbounds %struct.update_info, %struct.update_info* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.update_info*, %struct.update_info** %2, align 8
  %61 = getelementptr inbounds %struct.update_info, %struct.update_info* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @curl_easy_cleanup(i64 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.update_info*, %struct.update_info** %2, align 8
  %66 = getelementptr inbounds %struct.update_info, %struct.update_info* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.update_info*, %struct.update_info** %2, align 8
  %71 = getelementptr inbounds %struct.update_info, %struct.update_info* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @obs_data_release(i64 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.update_info*, %struct.update_info** %2, align 8
  %76 = getelementptr inbounds %struct.update_info, %struct.update_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.update_info*, %struct.update_info** %2, align 8
  %81 = getelementptr inbounds %struct.update_info, %struct.update_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @obs_data_release(i64 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.update_info*, %struct.update_info** %2, align 8
  %86 = getelementptr inbounds %struct.update_info, %struct.update_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.update_info*, %struct.update_info** %2, align 8
  %91 = getelementptr inbounds %struct.update_info, %struct.update_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @obs_data_release(i64 %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.update_info*, %struct.update_info** %2, align 8
  %96 = call i32 @bfree(%struct.update_info* %95)
  br label %97

97:                                               ; preds = %94, %5
  ret void
}

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @da_free(i32) #1

declare dso_local i32 @bfree(%struct.update_info*) #1

declare dso_local i32 @curl_slist_free_all(i64) #1

declare dso_local i32 @curl_easy_cleanup(i64) #1

declare dso_local i32 @obs_data_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
