; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_app-helpers.c_get_app_sid.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_app-helpers.c_get_app_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TOKEN_QUERY = common dso_local global i32 0, align 4
@TokenAppContainerSid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_app_sid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @TOKEN_QUERY, align 4
  %11 = call i64 @OpenProcessToken(i32 %9, i32 %10, i32* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = call i64 @GetSidLengthRequired(i32 12)
  %15 = add i64 %14, 4
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.TYPE_5__* @malloc(i64 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @TokenAppContainerSid, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @GetTokenInformation(i32 %18, i32 %19, %struct.TYPE_5__* %20, i64 %21, i64* %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %13
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ConvertSidToStringSidW(i32 %28, i32** %3)
  br label %30

30:                                               ; preds = %25, %13
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = call i32 @free(%struct.TYPE_5__* %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @CloseHandle(i32 %33)
  br label %35

35:                                               ; preds = %30, %1
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i64 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i64 @GetSidLengthRequired(i32) #1

declare dso_local %struct.TYPE_5__* @malloc(i64) #1

declare dso_local i32 @GetTokenInformation(i32, i32, %struct.TYPE_5__*, i64, i64*) #1

declare dso_local i32 @ConvertSidToStringSidW(i32, i32**) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
