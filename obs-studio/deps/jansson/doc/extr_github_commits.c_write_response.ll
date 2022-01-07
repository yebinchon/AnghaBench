; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/doc/extr_github_commits.c_write_response.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/doc/extr_github_commits.c_write_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_result = type { i32, i32 }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"error: too small buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @write_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_response(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.write_result*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = bitcast i8* %11 to %struct.write_result*
  store %struct.write_result* %12, %struct.write_result** %10, align 8
  %13 = load %struct.write_result*, %struct.write_result** %10, align 8
  %14 = getelementptr inbounds %struct.write_result, %struct.write_result* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = mul i64 %17, %18
  %20 = add i64 %16, %19
  %21 = load i32, i32* @BUFFER_SIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = icmp uge i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %53

28:                                               ; preds = %4
  %29 = load %struct.write_result*, %struct.write_result** %10, align 8
  %30 = getelementptr inbounds %struct.write_result, %struct.write_result* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.write_result*, %struct.write_result** %10, align 8
  %33 = getelementptr inbounds %struct.write_result, %struct.write_result* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = mul i64 %37, %38
  %40 = call i32 @memcpy(i32 %35, i8* %36, i64 %39)
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = mul i64 %41, %42
  %44 = load %struct.write_result*, %struct.write_result** %10, align 8
  %45 = getelementptr inbounds %struct.write_result, %struct.write_result* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = mul i64 %50, %51
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %28, %25
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
