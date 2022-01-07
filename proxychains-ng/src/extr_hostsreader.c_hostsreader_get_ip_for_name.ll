; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_hostsreader.c_hostsreader_get_ip_for_name.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_hostsreader.c_hostsreader_get_ip_for_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostsreader = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hostsreader_get_ip_for_name(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hostsreader, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %9, align 8
  %10 = call i32 @hostsreader_open(%struct.hostsreader* %8)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %32

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %28, %13
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @hostsreader_get(%struct.hostsreader* %8, i8* %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hostsreader, %struct.hostsreader* %8, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcmp(i32 %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.hostsreader, %struct.hostsreader* %8, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  br label %29

28:                                               ; preds = %19
  br label %14

29:                                               ; preds = %25, %14
  %30 = call i32 @hostsreader_close(%struct.hostsreader* %8)
  %31 = load i8*, i8** %9, align 8
  store i8* %31, i8** %4, align 8
  br label %32

32:                                               ; preds = %29, %12
  %33 = load i8*, i8** %4, align 8
  ret i8* %33
}

declare dso_local i32 @hostsreader_open(%struct.hostsreader*) #1

declare dso_local i64 @hostsreader_get(%struct.hostsreader*, i8*, i64) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @hostsreader_close(%struct.hostsreader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
