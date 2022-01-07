; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_add_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_add_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_data = type { i64, i32 }
%struct.list_item = type { i64, double, i8*, i8*, i32* }

@OBS_COMBO_FORMAT_INT = common dso_local global i64 0, align 8
@OBS_COMBO_FORMAT_FLOAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.list_data*, i8*, i8*)* @add_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_item(%struct.list_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.list_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.list_item, align 8
  store %struct.list_data* %0, %struct.list_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = bitcast %struct.list_item* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 40, i1 false)
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @bstrdup(i8* %9)
  %11 = getelementptr inbounds %struct.list_item, %struct.list_item* %7, i32 0, i32 3
  store i8* %10, i8** %11, align 8
  %12 = load %struct.list_data*, %struct.list_data** %4, align 8
  %13 = getelementptr inbounds %struct.list_data, %struct.list_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OBS_COMBO_FORMAT_INT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.list_item, %struct.list_item* %7, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  br label %38

22:                                               ; preds = %3
  %23 = load %struct.list_data*, %struct.list_data** %4, align 8
  %24 = getelementptr inbounds %struct.list_data, %struct.list_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OBS_COMBO_FORMAT_FLOAT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to double*
  %31 = load double, double* %30, align 8
  %32 = getelementptr inbounds %struct.list_item, %struct.list_item* %7, i32 0, i32 1
  store double %31, double* %32, align 8
  br label %37

33:                                               ; preds = %22
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @bstrdup(i8* %34)
  %36 = getelementptr inbounds %struct.list_item, %struct.list_item* %7, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %33, %28
  br label %38

38:                                               ; preds = %37, %17
  %39 = load %struct.list_data*, %struct.list_data** %4, align 8
  %40 = getelementptr inbounds %struct.list_data, %struct.list_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @da_push_back(i32 %41, %struct.list_item* %7)
  ret i64 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @bstrdup(i8*) #2

declare dso_local i64 @da_push_back(i32, %struct.list_item*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
