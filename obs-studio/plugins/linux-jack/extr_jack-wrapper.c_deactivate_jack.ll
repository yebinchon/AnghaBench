; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-jack/extr_jack-wrapper.c_deactivate_jack.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-jack/extr_jack-wrapper.c_deactivate_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jack_data = type { i32, i32, i32*, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deactivate_jack(%struct.jack_data* %0) #0 {
  %2 = alloca %struct.jack_data*, align 8
  %3 = alloca i32, align 4
  store %struct.jack_data* %0, %struct.jack_data** %2, align 8
  %4 = load %struct.jack_data*, %struct.jack_data** %2, align 8
  %5 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %4, i32 0, i32 1
  %6 = call i32 @pthread_mutex_lock(i32* %5)
  %7 = load %struct.jack_data*, %struct.jack_data** %2, align 8
  %8 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %62

11:                                               ; preds = %1
  %12 = load %struct.jack_data*, %struct.jack_data** %2, align 8
  %13 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %12, i32 0, i32 3
  %14 = load i32**, i32*** %13, align 8
  %15 = icmp ne i32** %14, null
  br i1 %15, label %16, label %55

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %45, %16
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.jack_data*, %struct.jack_data** %2, align 8
  %20 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %17
  %24 = load %struct.jack_data*, %struct.jack_data** %2, align 8
  %25 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %24, i32 0, i32 3
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  %33 = load %struct.jack_data*, %struct.jack_data** %2, align 8
  %34 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.jack_data*, %struct.jack_data** %2, align 8
  %37 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %36, i32 0, i32 3
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @jack_port_unregister(i32* %35, i32* %42)
  br label %44

44:                                               ; preds = %32, %23
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %17

48:                                               ; preds = %17
  %49 = load %struct.jack_data*, %struct.jack_data** %2, align 8
  %50 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %49, i32 0, i32 3
  %51 = load i32**, i32*** %50, align 8
  %52 = call i32 @bfree(i32** %51)
  %53 = load %struct.jack_data*, %struct.jack_data** %2, align 8
  %54 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %53, i32 0, i32 3
  store i32** null, i32*** %54, align 8
  br label %55

55:                                               ; preds = %48, %11
  %56 = load %struct.jack_data*, %struct.jack_data** %2, align 8
  %57 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @jack_client_close(i32* %58)
  %60 = load %struct.jack_data*, %struct.jack_data** %2, align 8
  %61 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %55, %1
  %63 = load %struct.jack_data*, %struct.jack_data** %2, align 8
  %64 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %63, i32 0, i32 1
  %65 = call i32 @pthread_mutex_unlock(i32* %64)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @jack_port_unregister(i32*, i32*) #1

declare dso_local i32 @bfree(i32**) #1

declare dso_local i32 @jack_client_close(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
