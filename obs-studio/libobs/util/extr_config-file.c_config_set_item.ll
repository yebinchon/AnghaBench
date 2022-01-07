; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_set_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_set_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.darray = type { i64, %struct.config_section* }
%struct.config_section = type { i8*, i8*, %struct.darray }
%struct.config_item = type { i8*, i8*, %struct.darray }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.darray*, i8*, i8*, i8*)* @config_set_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_set_item(%struct.TYPE_3__* %0, %struct.darray* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.darray*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.config_section*, align 8
  %12 = alloca %struct.config_section*, align 8
  %13 = alloca %struct.config_item*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.config_section*, align 8
  %17 = alloca %struct.config_item*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store %struct.darray* %1, %struct.darray** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store %struct.config_section* null, %struct.config_section** %11, align 8
  %18 = load %struct.darray*, %struct.darray** %7, align 8
  %19 = getelementptr inbounds %struct.darray, %struct.darray* %18, i32 0, i32 1
  %20 = load %struct.config_section*, %struct.config_section** %19, align 8
  store %struct.config_section* %20, %struct.config_section** %12, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @pthread_mutex_lock(i32* %22)
  store i64 0, i64* %14, align 8
  br label %24

24:                                               ; preds = %78, %5
  %25 = load i64, i64* %14, align 8
  %26 = load %struct.darray*, %struct.darray** %7, align 8
  %27 = getelementptr inbounds %struct.darray, %struct.darray* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %81

30:                                               ; preds = %24
  %31 = load %struct.config_section*, %struct.config_section** %12, align 8
  %32 = load i64, i64* %14, align 8
  %33 = getelementptr inbounds %struct.config_section, %struct.config_section* %31, i64 %32
  store %struct.config_section* %33, %struct.config_section** %16, align 8
  %34 = load %struct.config_section*, %struct.config_section** %16, align 8
  %35 = getelementptr inbounds %struct.config_section, %struct.config_section* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.darray, %struct.darray* %35, i32 0, i32 1
  %37 = load %struct.config_section*, %struct.config_section** %36, align 8
  %38 = bitcast %struct.config_section* %37 to %struct.config_item*
  store %struct.config_item* %38, %struct.config_item** %17, align 8
  %39 = load %struct.config_section*, %struct.config_section** %16, align 8
  %40 = getelementptr inbounds %struct.config_section, %struct.config_section* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @astrcmpi(i8* %41, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %30
  store i64 0, i64* %15, align 8
  br label %46

46:                                               ; preds = %72, %45
  %47 = load i64, i64* %15, align 8
  %48 = load %struct.config_section*, %struct.config_section** %16, align 8
  %49 = getelementptr inbounds %struct.config_section, %struct.config_section* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.darray, %struct.darray* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %46
  %54 = load %struct.config_item*, %struct.config_item** %17, align 8
  %55 = load i64, i64* %15, align 8
  %56 = getelementptr inbounds %struct.config_item, %struct.config_item* %54, i64 %55
  store %struct.config_item* %56, %struct.config_item** %13, align 8
  %57 = load %struct.config_item*, %struct.config_item** %13, align 8
  %58 = getelementptr inbounds %struct.config_item, %struct.config_item* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i64 @astrcmpi(i8* %59, i8* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load %struct.config_item*, %struct.config_item** %13, align 8
  %65 = getelementptr inbounds %struct.config_item, %struct.config_item* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @bfree(i8* %66)
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.config_item*, %struct.config_item** %13, align 8
  %70 = getelementptr inbounds %struct.config_item, %struct.config_item* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %104

71:                                               ; preds = %53
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %15, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %15, align 8
  br label %46

75:                                               ; preds = %46
  %76 = load %struct.config_section*, %struct.config_section** %16, align 8
  store %struct.config_section* %76, %struct.config_section** %11, align 8
  br label %81

77:                                               ; preds = %30
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %14, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %14, align 8
  br label %24

81:                                               ; preds = %75, %24
  %82 = load %struct.config_section*, %struct.config_section** %11, align 8
  %83 = icmp ne %struct.config_section* %82, null
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = load %struct.darray*, %struct.darray** %7, align 8
  %86 = call i8* @darray_push_back_new(i32 32, %struct.darray* %85)
  %87 = bitcast i8* %86 to %struct.config_section*
  store %struct.config_section* %87, %struct.config_section** %11, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i8* @bstrdup(i8* %88)
  %90 = load %struct.config_section*, %struct.config_section** %11, align 8
  %91 = getelementptr inbounds %struct.config_section, %struct.config_section* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %84, %81
  %93 = load %struct.config_section*, %struct.config_section** %11, align 8
  %94 = getelementptr inbounds %struct.config_section, %struct.config_section* %93, i32 0, i32 2
  %95 = call i8* @darray_push_back_new(i32 32, %struct.darray* %94)
  %96 = bitcast i8* %95 to %struct.config_item*
  store %struct.config_item* %96, %struct.config_item** %13, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = call i8* @bstrdup(i8* %97)
  %99 = load %struct.config_item*, %struct.config_item** %13, align 8
  %100 = getelementptr inbounds %struct.config_item, %struct.config_item* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load %struct.config_item*, %struct.config_item** %13, align 8
  %103 = getelementptr inbounds %struct.config_item, %struct.config_item* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %92, %63
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = call i32 @pthread_mutex_unlock(i32* %106)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @astrcmpi(i8*, i8*) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i8* @darray_push_back_new(i32, %struct.darray*) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
