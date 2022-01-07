; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_net-if.c_netif_saddr_data_push_back.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_net-if.c_netif_saddr_data_push_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif_saddr_data = type { i32 }
%struct.netif_saddr_item = type { i8*, i32 }
%struct.dstr = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"[%s] %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netif_saddr_data*, i8*, i8*)* @netif_saddr_data_push_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netif_saddr_data_push_back(%struct.netif_saddr_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.netif_saddr_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.netif_saddr_item, align 8
  %8 = alloca %struct.dstr, align 4
  %9 = alloca i8*, align 8
  store %struct.netif_saddr_data* %0, %struct.netif_saddr_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = bitcast %struct.dstr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @bstrdup(i8* %11)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @dstr_printf(%struct.dstr* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  br label %27

24:                                               ; preds = %15, %3
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @dstr_copy(%struct.dstr* %8, i8* %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.netif_saddr_item, %struct.netif_saddr_item* %7, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds %struct.netif_saddr_item, %struct.netif_saddr_item* %7, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load %struct.netif_saddr_data*, %struct.netif_saddr_data** %4, align 8
  %34 = getelementptr inbounds %struct.netif_saddr_data, %struct.netif_saddr_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @da_push_back(i32 %35, %struct.netif_saddr_item* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @bstrdup(i8*) #2

declare dso_local i32 @dstr_printf(%struct.dstr*, i8*, i8*, i8*) #2

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i32 @da_push_back(i32, %struct.netif_saddr_item*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
