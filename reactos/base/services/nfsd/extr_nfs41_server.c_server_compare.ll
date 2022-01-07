; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_server.c_server_compare.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_server.c_server_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_entry = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.server_info = type { i32, i32 }

@NFS4_OPAQUE_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_entry*, i8*)* @server_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_compare(%struct.list_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.list_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.server_info*, align 8
  %7 = alloca i32, align 4
  store %struct.list_entry* %0, %struct.list_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.list_entry*, %struct.list_entry** %3, align 8
  %9 = call %struct.TYPE_3__* @server_entry(%struct.list_entry* %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.server_info*
  store %struct.server_info* %11, %struct.server_info** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.server_info*, %struct.server_info** %6, align 8
  %16 = getelementptr inbounds %struct.server_info, %struct.server_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %19 = call i32 @strncmp(i32 %14, i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.server_info*, %struct.server_info** %6, align 8
  %29 = getelementptr inbounds %struct.server_info, %struct.server_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %32 = call i32 @strncmp(i32 %27, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %22
  %34 = phi i32 [ %23, %22 ], [ %32, %24 ]
  ret i32 %34
}

declare dso_local %struct.TYPE_3__* @server_entry(%struct.list_entry*) #1

declare dso_local i32 @strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
