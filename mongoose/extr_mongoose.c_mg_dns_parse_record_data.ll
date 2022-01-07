; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_dns_parse_record_data.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_dns_parse_record_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_dns_message = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.mg_dns_resource_record = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_dns_parse_record_data(%struct.mg_dns_message* %0, %struct.mg_dns_resource_record* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mg_dns_message*, align 8
  %7 = alloca %struct.mg_dns_resource_record*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.mg_dns_message* %0, %struct.mg_dns_message** %6, align 8
  store %struct.mg_dns_resource_record* %1, %struct.mg_dns_resource_record** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %7, align 8
  %11 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %51 [
    i32 129, label %13
    i32 128, label %44
  ]

13:                                               ; preds = %4
  %14 = load i64, i64* %9, align 8
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -1, i32* %5, align 4
  br label %52

17:                                               ; preds = %13
  %18 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %7, align 8
  %19 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %22, %23
  %25 = load %struct.mg_dns_message*, %struct.mg_dns_message** %6, align 8
  %26 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mg_dns_message*, %struct.mg_dns_message** %6, align 8
  %30 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %28, %32
  %34 = icmp ugt i64 %24, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %52

36:                                               ; preds = %17
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %7, align 8
  %39 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @memcpy(i8* %37, i32 %41, i64 %42)
  store i32 0, i32* %5, align 4
  br label %52

44:                                               ; preds = %4
  %45 = load %struct.mg_dns_message*, %struct.mg_dns_message** %6, align 8
  %46 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %7, align 8
  %47 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %46, i32 0, i32 1
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @mg_dns_uncompress_name(%struct.mg_dns_message* %45, %struct.TYPE_4__* %47, i8* %48, i64 %49)
  store i32 0, i32* %5, align 4
  br label %52

51:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %44, %36, %35, %16
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @mg_dns_uncompress_name(%struct.mg_dns_message*, %struct.TYPE_4__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
