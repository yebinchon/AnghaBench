; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_dvdnav.c_dvd_probe.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_dvdnav.c_dvd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @dvd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvd_probe(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [50 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @bstr0(i8* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @bstr0(i8* %13)
  %15 = call i32 @bstr_case_endswith(i32 %12, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %48

24:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = icmp ule i64 %27, 50
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @fread(i8* %31, i32 50, i32 1, i32* %32)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = call i64 @memcmp(i8* %36, i8* %37, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %35
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @fclose(i32* %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %23, %17
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @bstr_case_endswith(i32, i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
