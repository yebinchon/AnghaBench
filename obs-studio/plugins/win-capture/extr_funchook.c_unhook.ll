; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_unhook.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_unhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_hook = type { i32, i64, i64, i8*, i8* }

@HOOKTYPE_REVERSE_CHAIN = common dso_local global i64 0, align 8
@JMP_32_SIZE = common dso_local global i64 0, align 8
@HOOKTYPE_FORWARD_OVERWRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unhook(%struct.func_hook* %0) #0 {
  %2 = alloca %struct.func_hook*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.func_hook* %0, %struct.func_hook** %2, align 8
  %5 = load %struct.func_hook*, %struct.func_hook** %2, align 8
  %6 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %59

10:                                               ; preds = %1
  %11 = load %struct.func_hook*, %struct.func_hook** %2, align 8
  %12 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HOOKTYPE_REVERSE_CHAIN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load i64, i64* @JMP_32_SIZE, align 8
  store i64 %17, i64* %4, align 8
  %18 = load %struct.func_hook*, %struct.func_hook** %2, align 8
  %19 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @JMP_32_SIZE, align 8
  %22 = sub i64 %20, %21
  store i64 %22, i64* %3, align 8
  br label %29

23:                                               ; preds = %10
  %24 = load %struct.func_hook*, %struct.func_hook** %2, align 8
  %25 = call i64 @patch_size(%struct.func_hook* %24)
  store i64 %25, i64* %4, align 8
  %26 = load %struct.func_hook*, %struct.func_hook** %2, align 8
  %27 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %23, %16
  %30 = load i64, i64* %3, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @fix_permissions(i8* %31, i64 %32)
  %34 = load %struct.func_hook*, %struct.func_hook** %2, align 8
  %35 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @memcpy(i8* %36, i8* %38, i64 %39)
  %41 = load %struct.func_hook*, %struct.func_hook** %2, align 8
  %42 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HOOKTYPE_FORWARD_OVERWRITE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %29
  %47 = load %struct.func_hook*, %struct.func_hook** %2, align 8
  %48 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.func_hook*, %struct.func_hook** %2, align 8
  %52 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @memcpy(i8* %50, i8* %53, i64 %54)
  br label %56

56:                                               ; preds = %46, %29
  %57 = load %struct.func_hook*, %struct.func_hook** %2, align 8
  %58 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %9
  ret void
}

declare dso_local i64 @patch_size(%struct.func_hook*) #1

declare dso_local i32 @fix_permissions(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
