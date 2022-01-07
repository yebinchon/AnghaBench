; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_clinat.c_add_entry.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_clinat.c_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_nat_option_list = type { i64, %struct.client_nat_entry* }
%struct.client_nat_entry = type { i32 }

@MAX_CLIENT_NAT = common dso_local global i64 0, align 8
@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"WARNING: client-nat table overflow (max %d entries)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client_nat_option_list*, %struct.client_nat_entry*)* @add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_entry(%struct.client_nat_option_list* %0, %struct.client_nat_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client_nat_option_list*, align 8
  %5 = alloca %struct.client_nat_entry*, align 8
  store %struct.client_nat_option_list* %0, %struct.client_nat_option_list** %4, align 8
  store %struct.client_nat_entry* %1, %struct.client_nat_entry** %5, align 8
  %6 = load %struct.client_nat_option_list*, %struct.client_nat_option_list** %4, align 8
  %7 = getelementptr inbounds %struct.client_nat_option_list, %struct.client_nat_option_list* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MAX_CLIENT_NAT, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @M_WARN, align 4
  %13 = load i64, i64* @MAX_CLIENT_NAT, align 8
  %14 = call i32 @msg(i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %13)
  store i32 0, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.client_nat_option_list*, %struct.client_nat_option_list** %4, align 8
  %17 = getelementptr inbounds %struct.client_nat_option_list, %struct.client_nat_option_list* %16, i32 0, i32 1
  %18 = load %struct.client_nat_entry*, %struct.client_nat_entry** %17, align 8
  %19 = load %struct.client_nat_option_list*, %struct.client_nat_option_list** %4, align 8
  %20 = getelementptr inbounds %struct.client_nat_option_list, %struct.client_nat_option_list* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds %struct.client_nat_entry, %struct.client_nat_entry* %18, i64 %21
  %24 = load %struct.client_nat_entry*, %struct.client_nat_entry** %5, align 8
  %25 = bitcast %struct.client_nat_entry* %23 to i8*
  %26 = bitcast %struct.client_nat_entry* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %15, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @msg(i32, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
