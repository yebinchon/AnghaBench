; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_option_index_find.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_option_index_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_option = type { i8*, i64 }
%struct.section = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_option* (%struct.section*, i8*, i64)* @appconfig_option_index_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_option* @appconfig_option_index_find(%struct.section* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.section*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.config_option, align 8
  store %struct.section* %0, %struct.section** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  br label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @simple_hash(i8* %13)
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i64 [ %11, %10 ], [ %14, %12 ]
  %17 = getelementptr inbounds %struct.config_option, %struct.config_option* %7, i32 0, i32 1
  store i64 %16, i64* %17, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds %struct.config_option, %struct.config_option* %7, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load %struct.section*, %struct.section** %4, align 8
  %21 = getelementptr inbounds %struct.section, %struct.section* %20, i32 0, i32 0
  %22 = bitcast %struct.config_option* %7 to i32*
  %23 = call i64 @avl_search_lock(i32* %21, i32* %22)
  %24 = inttoptr i64 %23 to %struct.config_option*
  ret %struct.config_option* %24
}

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i64 @avl_search_lock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
