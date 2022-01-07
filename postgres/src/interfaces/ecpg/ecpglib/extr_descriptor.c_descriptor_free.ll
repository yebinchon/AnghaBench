; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_descriptor.c_descriptor_free.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_descriptor.c_descriptor_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor = type { i32, %struct.descriptor*, %struct.descriptor*, %struct.descriptor*, %struct.descriptor* }
%struct.descriptor_item = type { i32, %struct.descriptor_item*, %struct.descriptor_item*, %struct.descriptor_item*, %struct.descriptor_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.descriptor*)* @descriptor_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @descriptor_free(%struct.descriptor* %0) #0 {
  %2 = alloca %struct.descriptor*, align 8
  %3 = alloca %struct.descriptor_item*, align 8
  %4 = alloca %struct.descriptor_item*, align 8
  store %struct.descriptor* %0, %struct.descriptor** %2, align 8
  %5 = load %struct.descriptor*, %struct.descriptor** %2, align 8
  %6 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %5, i32 0, i32 4
  %7 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %8 = bitcast %struct.descriptor* %7 to %struct.descriptor_item*
  store %struct.descriptor_item* %8, %struct.descriptor_item** %3, align 8
  br label %9

9:                                                ; preds = %12, %1
  %10 = load %struct.descriptor_item*, %struct.descriptor_item** %3, align 8
  %11 = icmp ne %struct.descriptor_item* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load %struct.descriptor_item*, %struct.descriptor_item** %3, align 8
  %14 = getelementptr inbounds %struct.descriptor_item, %struct.descriptor_item* %13, i32 0, i32 3
  %15 = load %struct.descriptor_item*, %struct.descriptor_item** %14, align 8
  %16 = call i32 @ecpg_free(%struct.descriptor_item* %15)
  %17 = load %struct.descriptor_item*, %struct.descriptor_item** %3, align 8
  store %struct.descriptor_item* %17, %struct.descriptor_item** %4, align 8
  %18 = load %struct.descriptor_item*, %struct.descriptor_item** %3, align 8
  %19 = getelementptr inbounds %struct.descriptor_item, %struct.descriptor_item* %18, i32 0, i32 2
  %20 = load %struct.descriptor_item*, %struct.descriptor_item** %19, align 8
  store %struct.descriptor_item* %20, %struct.descriptor_item** %3, align 8
  %21 = load %struct.descriptor_item*, %struct.descriptor_item** %4, align 8
  %22 = call i32 @ecpg_free(%struct.descriptor_item* %21)
  br label %9

23:                                               ; preds = %9
  %24 = load %struct.descriptor*, %struct.descriptor** %2, align 8
  %25 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %24, i32 0, i32 1
  %26 = load %struct.descriptor*, %struct.descriptor** %25, align 8
  %27 = bitcast %struct.descriptor* %26 to %struct.descriptor_item*
  %28 = call i32 @ecpg_free(%struct.descriptor_item* %27)
  %29 = load %struct.descriptor*, %struct.descriptor** %2, align 8
  %30 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PQclear(i32 %31)
  %33 = load %struct.descriptor*, %struct.descriptor** %2, align 8
  %34 = bitcast %struct.descriptor* %33 to %struct.descriptor_item*
  %35 = call i32 @ecpg_free(%struct.descriptor_item* %34)
  ret void
}

declare dso_local i32 @ecpg_free(%struct.descriptor_item*) #1

declare dso_local i32 @PQclear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
