; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_insert_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_insert_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_data = type { i64, i32 }
%struct.list_item = type { i64, double, i8*, i8*, i32* }

@OBS_COMBO_FORMAT_INT = common dso_local global i64 0, align 8
@OBS_COMBO_FORMAT_FLOAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_data*, i64, i8*, i8*)* @insert_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_item(%struct.list_data* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.list_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.list_item, align 8
  store %struct.list_data* %0, %struct.list_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = bitcast %struct.list_item* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = load i8*, i8** %7, align 8
  %12 = call i8* @bstrdup(i8* %11)
  %13 = getelementptr inbounds %struct.list_item, %struct.list_item* %9, i32 0, i32 3
  store i8* %12, i8** %13, align 8
  %14 = load %struct.list_data*, %struct.list_data** %5, align 8
  %15 = getelementptr inbounds %struct.list_data, %struct.list_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OBS_COMBO_FORMAT_INT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.list_item, %struct.list_item* %9, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  br label %40

24:                                               ; preds = %4
  %25 = load %struct.list_data*, %struct.list_data** %5, align 8
  %26 = getelementptr inbounds %struct.list_data, %struct.list_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OBS_COMBO_FORMAT_FLOAT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to double*
  %33 = load double, double* %32, align 8
  %34 = getelementptr inbounds %struct.list_item, %struct.list_item* %9, i32 0, i32 1
  store double %33, double* %34, align 8
  br label %39

35:                                               ; preds = %24
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @bstrdup(i8* %36)
  %38 = getelementptr inbounds %struct.list_item, %struct.list_item* %9, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %35, %30
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.list_data*, %struct.list_data** %5, align 8
  %42 = getelementptr inbounds %struct.list_data, %struct.list_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @da_insert(i32 %43, i64 %44, %struct.list_item* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @bstrdup(i8*) #2

declare dso_local i32 @da_insert(i32, i64, %struct.list_item*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
