; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_dtls.c_dtls1_write_message_header.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_dtls.c_dtls1_write_message_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hm_header_st }
%struct.hm_header_st = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i8*)* @dtls1_write_message_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dtls1_write_message_header(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hm_header_st*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.hm_header_st* %9, %struct.hm_header_st** %5, align 8
  %10 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %11 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  store i8 %13, i8* %14, align 1
  %16 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %17 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @l2n3(i32 %18, i8* %19)
  %21 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %22 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @s2n(i32 %23, i8* %24)
  %26 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %27 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @l2n3(i32 %28, i8* %29)
  %31 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %32 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @l2n3(i32 %33, i8* %34)
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local i32 @l2n3(i32, i8*) #1

declare dso_local i32 @s2n(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
