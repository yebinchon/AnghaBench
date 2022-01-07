; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_client.c_mac_cmp.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_client.c_mac_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_entry = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_cmp(%struct.mac_entry* %0, %struct.mac_entry* %1) #0 {
  %3 = alloca %struct.mac_entry*, align 8
  %4 = alloca %struct.mac_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.mac_entry* %0, %struct.mac_entry** %3, align 8
  store %struct.mac_entry* %1, %struct.mac_entry** %4, align 8
  %6 = load %struct.mac_entry*, %struct.mac_entry** %4, align 8
  %7 = getelementptr inbounds %struct.mac_entry, %struct.mac_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.mac_entry*, %struct.mac_entry** %3, align 8
  %10 = getelementptr inbounds %struct.mac_entry, %struct.mac_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.mac_entry*, %struct.mac_entry** %3, align 8
  %19 = getelementptr inbounds %struct.mac_entry, %struct.mac_entry* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.mac_entry*, %struct.mac_entry** %4, align 8
  %23 = getelementptr inbounds %struct.mac_entry, %struct.mac_entry* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.mac_entry*, %struct.mac_entry** %3, align 8
  %27 = getelementptr inbounds %struct.mac_entry, %struct.mac_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strncmp(i8* %21, i8* %25, i32 %28)
  br label %30

30:                                               ; preds = %17, %15
  %31 = phi i32 [ %16, %15 ], [ %29, %17 ]
  ret i32 %31
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
