; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-jack/extr_jack-input.c_jack_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-jack/extr_jack-input.c_jack_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jack_data = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"startjack\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @jack_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jack_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.jack_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.jack_data*
  store %struct.jack_data* %11, %struct.jack_data** %5, align 8
  %12 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %13 = icmp ne %struct.jack_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %83

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @obs_data_get_bool(i32* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @obs_data_get_int(i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %22 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %28 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %15
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %32 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %38 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @obs_source_get_name(i32 %39)
  store i8* %40, i8** %6, align 8
  %41 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %42 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %47 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strcmp(i64 %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %45, %36
  %53 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %54 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %59 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @bfree(i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @bstrdup(i8* %63)
  %65 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %66 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %62, %45
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %72 = call i32 @deactivate_jack(%struct.jack_data* %71)
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %75 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %77 = call i64 @jack_init(%struct.jack_data* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load %struct.jack_data*, %struct.jack_data** %5, align 8
  %81 = call i32 @deactivate_jack(%struct.jack_data* %80)
  br label %82

82:                                               ; preds = %79, %70
  br label %83

83:                                               ; preds = %14, %82, %67
  ret void
}

declare dso_local i32 @obs_data_get_bool(i32*, i8*) #1

declare dso_local i32 @obs_data_get_int(i32*, i8*) #1

declare dso_local i8* @obs_source_get_name(i32) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @bfree(i64) #1

declare dso_local i64 @bstrdup(i8*) #1

declare dso_local i32 @deactivate_jack(%struct.jack_data*) #1

declare dso_local i64 @jack_init(%struct.jack_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
