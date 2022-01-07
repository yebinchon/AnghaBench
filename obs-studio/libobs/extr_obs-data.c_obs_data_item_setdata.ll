; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_setdata.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_setdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data_item = type { i64, i32, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_data_item**, i8*, i64, i32)* @obs_data_item_setdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_data_item_setdata(%struct.obs_data_item** %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.obs_data_item**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.obs_data_item*, align 8
  %10 = alloca i32, align 4
  store %struct.obs_data_item** %0, %struct.obs_data_item*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.obs_data_item**, %struct.obs_data_item*** %5, align 8
  %12 = icmp ne %struct.obs_data_item** %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.obs_data_item**, %struct.obs_data_item*** %5, align 8
  %15 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %16 = icmp ne %struct.obs_data_item* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %4
  br label %98

18:                                               ; preds = %13
  %19 = load %struct.obs_data_item**, %struct.obs_data_item*** %5, align 8
  %20 = load %struct.obs_data_item*, %struct.obs_data_item** %19, align 8
  store %struct.obs_data_item* %20, %struct.obs_data_item** %9, align 8
  %21 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %22 = call i64 @get_default_data_ptr(%struct.obs_data_item* %21)
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %25 = bitcast %struct.obs_data_item* %24 to i32*
  %26 = ptrtoint i32* %23 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %32 = call i32 @item_data_release(%struct.obs_data_item* %31)
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %35 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %38 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %40 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %18
  %44 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %45 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %18
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @get_align_size(i64 %49)
  br label %53

51:                                               ; preds = %43
  %52 = load i64, i64* %7, align 8
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i64 [ %50, %48 ], [ %52, %51 ]
  %55 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %56 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %58 = call %struct.obs_data_item* @obs_data_item_ensure_capacity(%struct.obs_data_item* %57)
  store %struct.obs_data_item* %58, %struct.obs_data_item** %9, align 8
  %59 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %60 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %53
  %64 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %65 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %63, %53
  %69 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %70 = call i64 @get_default_data_ptr(%struct.obs_data_item* %69)
  %71 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %72 = bitcast %struct.obs_data_item* %71 to i32*
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %77 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %80 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = call i32 @memmove(i64 %70, i32* %75, i64 %82)
  br label %84

84:                                               ; preds = %68, %63
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %89 = call i32 @get_item_data(%struct.obs_data_item* %88)
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @memcpy(i32 %89, i8* %90, i64 %91)
  %93 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %94 = call i32 @item_data_addref(%struct.obs_data_item* %93)
  br label %95

95:                                               ; preds = %87, %84
  %96 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %97 = load %struct.obs_data_item**, %struct.obs_data_item*** %5, align 8
  store %struct.obs_data_item* %96, %struct.obs_data_item** %97, align 8
  br label %98

98:                                               ; preds = %95, %17
  ret void
}

declare dso_local i64 @get_default_data_ptr(%struct.obs_data_item*) #1

declare dso_local i32 @item_data_release(%struct.obs_data_item*) #1

declare dso_local i64 @get_align_size(i64) #1

declare dso_local %struct.obs_data_item* @obs_data_item_ensure_capacity(%struct.obs_data_item*) #1

declare dso_local i32 @memmove(i64, i32*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @get_item_data(%struct.obs_data_item*) #1

declare dso_local i32 @item_data_addref(%struct.obs_data_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
