; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_dtls.c_dtls1_get_message_header.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_dtls.c_dtls1_get_message_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hm_header_st = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtls1_get_message_header(i8* %0, %struct.hm_header_st* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hm_header_st*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.hm_header_st* %1, %struct.hm_header_st** %4, align 8
  %5 = load %struct.hm_header_st*, %struct.hm_header_st** %4, align 8
  %6 = call i32 @memset(%struct.hm_header_st* %5, i32 0, i32 20)
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %8, i8** %3, align 8
  %9 = load i8, i8* %7, align 1
  %10 = zext i8 %9 to i32
  %11 = load %struct.hm_header_st*, %struct.hm_header_st** %4, align 8
  %12 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.hm_header_st*, %struct.hm_header_st** %4, align 8
  %15 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @n2l3(i8* %13, i32 %16)
  %18 = load i8*, i8** %3, align 8
  %19 = load %struct.hm_header_st*, %struct.hm_header_st** %4, align 8
  %20 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @n2s(i8* %18, i32 %21)
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.hm_header_st*, %struct.hm_header_st** %4, align 8
  %25 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @n2l3(i8* %23, i32 %26)
  %28 = load i8*, i8** %3, align 8
  %29 = load %struct.hm_header_st*, %struct.hm_header_st** %4, align 8
  %30 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @n2l3(i8* %28, i32 %31)
  ret void
}

declare dso_local i32 @memset(%struct.hm_header_st*, i32, i32) #1

declare dso_local i32 @n2l3(i8*, i32) #1

declare dso_local i32 @n2s(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
