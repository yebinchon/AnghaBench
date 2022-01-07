; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_dns_copy_questions.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_dns_copy_questions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.mg_dns_message = type { i32, %struct.mg_dns_resource_record*, %struct.TYPE_4__ }
%struct.mg_dns_resource_record = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_dns_copy_questions(%struct.mbuf* %0, %struct.mg_dns_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mg_dns_message*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mg_dns_resource_record*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store %struct.mg_dns_message* %1, %struct.mg_dns_message** %5, align 8
  %9 = load %struct.mg_dns_message*, %struct.mg_dns_message** %5, align 8
  %10 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.mg_dns_message*, %struct.mg_dns_message** %5, align 8
  %16 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  store i8* %20, i8** %6, align 8
  %21 = load %struct.mg_dns_message*, %struct.mg_dns_message** %5, align 8
  %22 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %21, i32 0, i32 1
  %23 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %22, align 8
  %24 = load %struct.mg_dns_message*, %struct.mg_dns_message** %5, align 8
  %25 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %23, i64 %28
  store %struct.mg_dns_resource_record* %29, %struct.mg_dns_resource_record** %8, align 8
  %30 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %31 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %36 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  store i8* %41, i8** %7, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @mbuf_append(%struct.mbuf* %42, i8* %43, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %14, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @mbuf_append(%struct.mbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
