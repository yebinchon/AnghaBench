; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_dns_next_record.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_dns_next_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_dns_message = type { i32, %struct.mg_dns_resource_record* }
%struct.mg_dns_resource_record = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mg_dns_resource_record* @mg_dns_next_record(%struct.mg_dns_message* %0, i32 %1, %struct.mg_dns_resource_record* %2) #0 {
  %4 = alloca %struct.mg_dns_resource_record*, align 8
  %5 = alloca %struct.mg_dns_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mg_dns_resource_record*, align 8
  %8 = alloca %struct.mg_dns_resource_record*, align 8
  store %struct.mg_dns_message* %0, %struct.mg_dns_message** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mg_dns_resource_record* %2, %struct.mg_dns_resource_record** %7, align 8
  %9 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %7, align 8
  %10 = icmp eq %struct.mg_dns_resource_record* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.mg_dns_message*, %struct.mg_dns_message** %5, align 8
  %13 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %12, i32 0, i32 1
  %14 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %13, align 8
  br label %18

15:                                               ; preds = %3
  %16 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %7, align 8
  %17 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %16, i64 1
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi %struct.mg_dns_resource_record* [ %14, %11 ], [ %17, %15 ]
  store %struct.mg_dns_resource_record* %19, %struct.mg_dns_resource_record** %8, align 8
  br label %20

20:                                               ; preds = %43, %18
  %21 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %22 = load %struct.mg_dns_message*, %struct.mg_dns_message** %5, align 8
  %23 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %22, i32 0, i32 1
  %24 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %23, align 8
  %25 = ptrtoint %struct.mg_dns_resource_record* %21 to i64
  %26 = ptrtoint %struct.mg_dns_resource_record* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = load %struct.mg_dns_message*, %struct.mg_dns_message** %5, align 8
  %30 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %28, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %20
  %35 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %36 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  store %struct.mg_dns_resource_record* %41, %struct.mg_dns_resource_record** %4, align 8
  br label %47

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %45 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %44, i32 1
  store %struct.mg_dns_resource_record* %45, %struct.mg_dns_resource_record** %8, align 8
  br label %20

46:                                               ; preds = %20
  store %struct.mg_dns_resource_record* null, %struct.mg_dns_resource_record** %4, align 8
  br label %47

47:                                               ; preds = %46, %40
  %48 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %4, align 8
  ret %struct.mg_dns_resource_record* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
