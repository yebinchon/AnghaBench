; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_connect.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i32, i32*, i32* }

@False = common dso_local global i32 0, align 4
@g_encryption = common dso_local global i64 0, align 8
@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sec_connect(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.stream, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @mcs_connect_start(i8* %14, i8* %15, i8* %16, i8* %17, i32 %18, i32* %12)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @False, align 4
  store i32 %22, i32* %6, align 4
  br label %47

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0
  store i32 512, i32* %24, align 8
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @xmalloc(i32 %26)
  %28 = inttoptr i64 %27 to i32*
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 1
  store i32* %28, i32** %29, align 8
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @sec_out_mcs_data(%struct.stream* %13, i32 %31)
  %33 = call i32 @mcs_connect_finalize(%struct.stream* %13)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @False, align 4
  store i32 %36, i32* %6, align 4
  br label %47

37:                                               ; preds = %23
  %38 = load i64, i64* @g_encryption, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 (...) @sec_establish_key()
  br label %42

42:                                               ; preds = %40, %37
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @xfree(i32* %44)
  %46 = load i32, i32* @True, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %35, %21
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @mcs_connect_start(i8*, i8*, i8*, i8*, i32, i32*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @sec_out_mcs_data(%struct.stream*, i32) #1

declare dso_local i32 @mcs_connect_finalize(%struct.stream*) #1

declare dso_local i32 @sec_establish_key(...) #1

declare dso_local i32 @xfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
